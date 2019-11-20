class Quantity < ApplicationRecord
  belongs_to :tienda, class_name: "Tienda"
  belongs_to :book, class_name: "Book"
  validates :tienda_id, presence: true
  validates :book_id, presence: true
  
  def self.search(search)
    if search
      title = Book.find_by(title: search)
      if title
        self.where(book_id: title)
      else
        Quantity.all
      end
    else
      Quantity.all
    end
  end
  
end
