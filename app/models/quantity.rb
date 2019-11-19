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
  
  def self.searchA(search)
    if search
      author = Book.find_by(author: search)
      if title
        self.where(book_id: author)
      else
        Quantity.all
      end
    else
      Quantity.all
    end
  end
  
  def self.searchY(search)
    if search
      year = Book.find_by(year: search)
      if title
        self.where(book_id: year)
      else
        Quantity.all
      end
    else
      Quantity.all
    end
  end
  
end
