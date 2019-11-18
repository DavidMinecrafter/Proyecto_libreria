class Tienda < ApplicationRecord
  has_many :quantities
  has_many :books, :through => :quantities
  validates :codename, presence: true, uniqueness: true
  validates :address, presence: true
  validates :phone, presence: true
end
