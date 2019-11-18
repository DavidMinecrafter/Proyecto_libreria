# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Sample Tienda
Tienda.create!(codename: "Tienda Ejemplo",
               address: "Lazaro Cardenas",
               phone: "81 2156 0256")
               
9.times do |n|
  codename = Faker::App.name
  address = Faker::Address.full_address
  phone = Faker::PhoneNumber.cell_phone 
  Tienda.create!(codename: codename,
                 address: address,
                 phone: phone)
end

Book.create!(title: "El Principito",
             author: "Antoine de Saint-Exupéry",
             year: 1943)

9.times do |n|
  title = Faker::Book.title 
  author = Faker::Name.name 
  year = rand(1900..2019)
  Book.create!(title: title,
               author: author,
               year: year )
end