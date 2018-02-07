# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all

p4 = Product.new
p4.product_item="type1"
p4.price=0.99
p4.item_count=10
p4.save

p5 = Product.new
p5.product_item="type2"
p5.price=2.99
p5.item_count=35
p5.save

p6 = Product.new
p6.product_item="type3"
p6.price=4.99
p6.item_count=35
p6.save
