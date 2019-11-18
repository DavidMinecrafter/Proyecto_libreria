class Quantity < ApplicationRecord
  belongs_to :tienda
  belongs_to :book
  validates :tienda_id, presence: true
  validates :book_id, presence: true
end
