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
b = Tag.create(name: 'Breakfast', img: 'http://res.cloudinary.com/dg0cmca7a/image/upload/v1489706037/StockSnap_OC8WX0E0X3_leigtd.jpg')
l = Tag.create(name: 'Lunch', img: 'http://res.cloudinary.com/dg0cmca7a/image/upload/v1489707425/eggs-1467286_1920_rfd5i3.jpg')
d = Tag.create(name: 'Dinner', img: 'http://res.cloudinary.com/dg0cmca7a/image/upload/v1489681266/lamb_carrots_zxvqx0.jpg')
a = Tag.create(name: 'Appetizers', img: 'http://res.cloudinary.com/dg0cmca7a/image/upload/v1489707710/tapas-534200_1920_wha8cy.jpg')
dr = Tag.create(name: 'Drinks', img: 'http://res.cloudinary.com/dg0cmca7a/image/upload/v1489707903/smoothie-1578240_1920_rhs0gm.jpg')

# Recipes
r1 = Recipe.create(name: 'Chicken Bolognese with Tagliatelle',
                   img: 'blah',
                   tag_id: 1,
                   user_id: 1,
                   directions: 'Heat a large skillet over medium-high. Swirl in oil. Add onion, celery, and carrots; season with salt and pepper. Cook, stirring, until softened, 5 to 7 minutes. Add chicken; season with salt and pepper. Cook, breaking into bite-size pieces, until no longer pink, 3 to 4 minutes. Stir in tomato paste; cook 2 minutes. Add wine; boil until almost evaporated, 1 to 2 minutes. Add milk and tomatoes; reduce heat and simmer until thickened, 12 to 15 minutes. Cook pasta in a large pot of salted water. Drain, reserving 1 cup pasta water; return to pot. Add sauce, then pasta water, a little at a time, until sauce evenly coats pasta. Drizzle with oil and top with celery leaves, cheese, and a pinch of nutmeg; serve.')

                   r1.ingredients.create(title: 'celery stalk, finely chopped (plus leaves for serving)',
                                         quantity: '1',
                                         unit: 'cup')

                   r1.ingredients.create(title: 'medium carrots, peeled and finely chopped',
                                         quantity: '2',
                                         unit: 'cup(s)')

                    r1.ingredients.create(title: 'course salt and freshly ground pepper',
                                          quantity: 'to taste')

                   r1.ingredients.create(title: 'ground chicken',
                                         quantity: '1',
                                         unit: 'lb')

                  r1.ingredients.create(title: 'tomato paste',
                                        quantity: '3',
                                        unit: 'tbsp')

                   r1.ingredients.create(title: 'dry white wine (eg. Sauvignon Blanc)',
                                         quantity: '1/2',
                                         unit: 'cup(s)')

                  r1.ingredients.create(title: 'whole milk',
                                        quantity: '3/4',
                                        unit: 'cup(s)')

                  r1.ingredients.create(title: 'whole milk',
                                        quantity: '3/4',
                                        unit: 'cup(s)')

                  r1.ingredients.create(title: 'whole peeled tomatoes (can), pureed',
                                        quantity: '14.5',
                                        unit: 'oz')

                  r1.ingredients.create(title: 'tagliatelle, pappardelle, or fettuccine',
                                        quantity: '1',
                                        unit: 'lb')

                  r1.ingredients.create(title: 'Freshly grated Parmesan and nutmeg for servind')

r2 = Recipe.create(name: 'Roasted Beet and Citrus Salad With Ricotta and Pistachio Vinaigrette ',
                   img: 'blah',
                   tag_id: 2,
                   user_id: 1,
                   directions: '1. Preheat oven to 375°F (190°C). Fold a 12- by 24-inch sheet of aluminum foil in half to form a square. Crimp two edges to form a pouch. Toss beets, 1 tablespoon (15ml) olive oil, rosemary or thyme sprigs (if using), and salt and pepper to taste in a medium bowl until beets are coated. Add to pouch and crimp remaining edge to seal. (If using multiple colors of beets, roast in separate pouches.) Transfer to a rimmed baking sheet and place in oven. Roast until beets are completely tender and a toothpick or cake tester inserted into a beet through foil meets little to no resistance, about 1 1/2 hours. Remove from oven and allow to cool. When beets are cool enough to handle, peel by gently rubbing skin under cold running water. Cut beets into 1 1/2–inch chunks. Beets can be cooked and stored in the refrigerator for up to 5 days.

                   2. Place pistachios in a mortar and pound with pestle until lightly crushed but not totally pulverized. (You can also chop them with a knife.) Transfer half of nuts to a large bowl and reserve the rest for garnish.

                   3. Add grapefruit juice, orange juice, lemon juice, shallot, minced herbs, and honey to bowl with pistachios and whisk to combine. Drizzle in remaining 3 tablespoons (45ml) olive oil while whisking constantly. Season to taste with salt and pepper.

                   4. To Serve: Toss beets and citrus with vinaigrette in a large bowl (if using red beets, toss them separately from everything else) and season to taste with salt and pepper. Spread half of ricotta over a serving platter, place dressed beets and citrus on top, dollop with remaining ricotta, sprinkle with reserved pistachios, and serve.')

                  r2.ingredients.create(title: 'beets, unpeeled, greens removed, scrubbed clean',
                                        quantity: '2',
                                        unit: 'lb')

                  r2.ingredients.create(title: 'extra-virgin olive oil, divided',
                                        quantity: '1/4',
                                        unit: 'cup(s)')

                  r2.ingredients.create(title: 'sprigs thyme or rosemary (optional)',
                                        quantity: '2')

                  r2.ingredients.create(title: 'Kosher salt and freshly ground black pepper')

                  r2.ingredients.create(title: 'toasted shelled pistachios',
                                        quantity: '1/4',
                                        unit: 'cup(s)')

                  r2.ingredients.create(title: 'grapefruit, cut into suprèmes or wedges',
                                        quantity: '1')

                  r2.ingredients.create(title: 'orange, cut into suprèmes or wedges',
                                        quantity: '1')

                  r2.ingredients.create(title: 'juice from 1 lemon',
                                        quantity: '2',
                                        unit: 'tsp')

                  r2.ingredients.create(title: 'small shallot, finely minced',
                                        quantity: '1')

                  r2.ingredients.create(title: 'minced fresh parsley, tarragon, or chervil',
                                        quantity: '2',
                                        unit: 'tsp')

                  r2.ingredients.create(title: 'honey',
                                        quantity: '1',
                                        unit: 'tbsp')

                  r2.ingredients.create(title: 'fresh ricotta',
                                        quantity: '1/2',
                                        unit: 'cup(s)')


r3 = Recipe.create!(name: 'recipe name', directions: 'do the thing', img: 'image.jpeg', tag_id: '2', user_id: '1')
