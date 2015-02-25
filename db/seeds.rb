# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


item1 = Product.create([{title: "Teddy Bear", price: 20, quantity: 20}])
item2 = Product.create([{title: "Book", price: 30, quantity: 11}])
item3 = Product.create([{title: "Shoes", price: 10, quantity: 10}])

user1 = User.create([email: "test@gmail.com", affiliation: "Veteran",verified: true, idmeid: 10])
user2 = User.create([email: "fun@gmail.com", affiliation: "Military",verified: true, idmeid: 30])