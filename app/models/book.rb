class Book < ApplicationRecord
  has_many :quantities, foreign_key: "tienda_id", dependent: :destroy
  has_many :tiendas, through:  :quantities
  validates :title, presence: true
  validates :author, presence: true
  validates :year, presence: true
end
