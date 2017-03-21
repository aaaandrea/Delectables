# This file should contain all the record creation needed to seed
# the database with its default values.

# The data can then be loaded with the rails db:seed command
# (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' },
# { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Users
User.create(username: 'Guest', password: 'password')
User.create(username: 'Andrea', password: 'password')
User.create(username: 'Guac Amole', password: 'password')
User.create(username: 'Earth, Wind, & Flour', password: 'password')
User.create(username: 'Life of Pie', password: 'password')
User.create(username: 'Grillenium Falcon', password: 'password')
User.create(username: 'Bean Me Up', password: 'password')

# Tags/Categories
Tag.create(name: 'Breakfast', img: 'http://res.cloudinary.com/dg0cmca7a/image/upload/v1489706037/StockSnap_OC8WX0E0X3_leigtd.jpg')
Tag.create(name: 'Lunch', img: 'http://res.cloudinary.com/dg0cmca7a/image/upload/v1489707425/eggs-1467286_1920_rfd5i3.jpg')
Tag.create(name: 'Dinner', img: 'http://res.cloudinary.com/dg0cmca7a/image/upload/v1489681266/lamb_carrots_zxvqx0.jpg')
Tag.create(name: 'Appetizers', img: 'http://res.cloudinary.com/dg0cmca7a/image/upload/v1489707710/tapas-534200_1920_wha8cy.jpg')
Tag.create(name: 'Drinks', img: 'http://res.cloudinary.com/dg0cmca7a/image/upload/v1489707903/smoothie-1578240_1920_rhs0gm.jpg')

# Recipes
r1 = Recipe.create(name: 'great food', directions: 'blahblah', img: 'blah', tag_id: 1, user_id: 1)
r1.ingredients.create(title: 'fresh bob', quantity: '8', unit: 'pt')
Recipe.create(name: 'food', directions: 'blahblah', img: 'blah', tag_id: 2, user_id: 1)
Recipe.create!(name: 'recipe name', directions: 'do the thing', img: 'image.jpeg', tag_id: '2', user_id: '1')
