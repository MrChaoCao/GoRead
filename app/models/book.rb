class Book < ApplicationRecord
  validates :title, :author, :img_url, :description, presence: true
  validates_uniqueness_of :title

  has_many :shelf_memberships

end
