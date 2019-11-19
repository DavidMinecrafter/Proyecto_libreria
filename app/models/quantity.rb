class Quantity < ApplicationRecord
  belongs_to :tienda, class_name: "Tienda"
  belongs_to :book, class_name: "Book"
  validates :tienda_id, presence: true
  validates :book_id, presence: true
end
