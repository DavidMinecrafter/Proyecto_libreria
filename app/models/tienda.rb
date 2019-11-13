class Tienda < ApplicationRecord
  validates :codename, presence: true, uniqueness: true
  validates :address, presence: true
  validates :phone, presence: true
end
