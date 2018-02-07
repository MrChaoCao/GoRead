class ShelfMembership < ApplicationRecord

  validates_uniqueness_of :book_id, scope: :shelf_id

  belongs_to :book
  belongs_to :shelf
end
