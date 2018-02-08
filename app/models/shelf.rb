class Shelf < ApplicationRecord
  validates :name, :user_id, presence: true

  belongs_to :user
  has_many :shelf_memberships

  has_many :books,
    through: :shelf_memberships,
    source: :book
end
