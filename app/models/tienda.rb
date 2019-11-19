class Tienda < ApplicationRecord
  has_many :quantities, foreign_key: "book_id", dependent: :destroy
  has_many :books, through: :quantities
  validates :codename, presence: true, uniqueness: true
  validates :address, presence: true
  validates :phone, presence: true
end
