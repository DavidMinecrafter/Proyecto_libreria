class Quantity < ApplicationRecord
  belongs_to :tienda, class_name: "Tienda"
  belongs_to :book, class_name: "Book"
  validates :tienda_id, presence: true
  validates :book_id, presence: true
  validates :quantity, presence: true
  
  def self.search(search)
    collection = joins(:book, :tienda)
    return collection unless search
    
    collection.where(tiendas: { codename: search })
      .or(collection.where(books: { title: search }))
      .or(collection.where(books: { author: search}))
      .or(collection.where(books: { year: search}))
  end
end
