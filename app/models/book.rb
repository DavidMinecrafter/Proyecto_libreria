class Book < ApplicationRecord
  has_many :quantities
  has_many :tiendas, :through => :quantities
  validates :title, presence: true
  validates :author, presence: true
  validates :year, presence: true
end
