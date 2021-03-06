class User < ApplicationRecord
    validates :session_token, :username, :password_digest, :email, presence: true
    validates_uniqueness_of :username, :email
    validates :password, length: { minimum: 6, allow_nil: true}

    before_validation :ensure_session_token
    after_create :ensure_default_shelf

    has_many :shelves

    attr_reader :password

    def self.find_by_credentials(username, password)
      user = User.find_by(username: username)
      user && user.is_password?(password) ? user : nil
    end

    def password=(password)
      @password = password
      self.password_digest = BCrypt::Password.create(password)
    end

    def is_password?(password)
      BCrypt::Password.new(self.password_digest).is_password?(password)
    end

    def generate_session_token
      SecureRandom.urlsafe_base64
    end

    def reset_session_token!
      self.session_token = generate_session_token
      self.save!
      self.session_token
    end

    def ensure_session_token
      self.session_token = generate_session_token
    end

    def ensure_default_shelf
      Shelf.create(name: "read", user: self)
    end
end
