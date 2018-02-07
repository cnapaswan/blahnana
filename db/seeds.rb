# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destory_all

Product.create(product_item:"type1", price:0.99, item_count:10)
Product.create(product_item:"type2", price:2.99, item_count:35)
Product.create(product_item:"type1", price:4.99, item_count:60)