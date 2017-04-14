# This file should contain all the record creation needed to seed
# the database with its default values.

# The data can then be loaded with the rails db:seed command
# (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' },
# { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)


# Users
u1 = User.create!(username: 'Guest', password: 'password')
u2 = User.create!(username: 'Andrea', password: 'password')
u3 = User.create!(username: 'Guac Amole', password: 'password')
u4 = User.create!(username: 'Earth, Wind, & Flour', password: 'password')
u5 = User.create!(username: 'Life of Pie', password: 'password')
u6 = User.create!(username: 'Grillenium Falcon', password: 'password')
u7 = User.create!(username: 'Bean Me Up', password: 'password')

# Tags/Categories
b = Tag.create!(name: 'Breakfast', img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1489706037/StockSnap_OC8WX0E0X3_leigtd.jpg')
l = Tag.create!(name: 'Lunch', img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1489707425/eggs-1467286_1920_rfd5i3.jpg')
d = Tag.create!(name: 'Dinner', img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1489681266/lamb_carrots_zxvqx0.jpg')
a = Tag.create!(name: 'Appetizers', img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1489707710/tapas-534200_1920_wha8cy.jpg')
dr = Tag.create!(name: 'Drinks', img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1489707903/smoothie-1578240_1920_rhs0gm.jpg')

# Recipes

# breakfast
b1 = Recipe.create!(name: 'Bacon and Cheese Quiche',
                    img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490240996/733f57c4-9f45-468d-92f9-c4f554bfa5b9_yxmtif.jpg',
                    tag_id: b.id,
                    user_id: u3.id,
                    directions: 'Crumble bacon in to the bottom of the pie
                    shell. Sprinkle shredded cheese over the bacon.
                    Sautee green onions in bacon grease and sprinkle
                    over cheese. Beat eggs, half& half and milk together,
                    then add remaining ingredients. Pour into the pie
                    shell and bake at 350 degrees for 45 minutes.')

b1.ingredients.create!(title: 'slices cooked bacon', quantity: '5-6')

b1.ingredients.create!(title: 'green onions, chopped', quantity: '3-4')

b1.ingredients.create!(title: 'eggs, slightly beaten', quantity: '3')

b1.ingredients.create!(title: 'milk', quantity: '1/2', unit: 'cup(s)')

b1.ingredients.create!(title: 'ground pepper', quantity: '1/4', unit: 'tsp')

b1.ingredients.create!(title: 'shredded cheddar cheese', quantity: '1.5',
                       unit: 'cup(s)')

b1.ingredients.create!(title: 'half & half', quantity: '1', unit: 'cup(s)')

b1.ingredients.create!(title: 'salt', quantity: '1/2', unit: 'tsp')

b1.ingredients.create!(title: 'dry mustard', quantity: '1/2', unit: 'tsp')

b1.ingredients.create!(title: 'cayenne pepper')

b1.ingredients.create!(title: 'pie shell', quantity: '1')

b1.comments.create!(body: 'This was amazing! I used whole milk. YUM',
                    user_id: u3.id)
b1.comments.create!(body: 'Love me some quiche', user_id: u4.id)
b1.comments.create!(body: "This quiche was delish.", user_id: u2.id)
b1.comments.create!(body: 'I added an extra egg, and that worked way better',
                    user_id: u6.id)





b2 = Recipe.create!(name: 'Apricot Cream Scones',
                    img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490241066/apricot-cream-scones_pg3zif.jpg',
                    tag_id: b.id,
                    user_id: u1.id,
                    directions: '1. Preheat oven to 425 degrees.

                              2. In a medium bowl, whisk together the flour, baking powder, salt and sugar.

                              3. In a separate small bowl, whisk together the egg, cream and vanilla; set aside.

                              4. Rub butter mixture into the flour mixture with your fingers (or use a pastry blender) until it resembles coarse crumbs. Stir in the apricot pieces.

                              5. Add the cream mixture to the flour mixture all at once and stir until moistened (The mixture should hold together when pinched).

                              6. Dump the mixture out onto the counter, gather all the pieces together with your hands and press everything together to form a rough ball. Pat it into a circle, about 3/4 inch thick.

                              7. Cut the circle like a pie into 8 pieces and place pieces onto a parchment-lined baking sheet.

                              8. Brush scones with a little cream and sprinkle with coarse sugar.

                              9. Bake in a preheated 425 degree oven for 15 minutes or until golden brown.')

b2.ingredients.create!(title: 'all purpose flour', quantity: '2', unit: 'cup(s)')

b2.ingredients.create!(title: 'baking powder', quantity: '1.5', unit: 'cup(s)')

b2.ingredients.create!(title: 'salt', quantity: '1.2', unit: 'tsp')

b2.ingredients.create!(title: 'sugar', quantity: '1/4', unit: 'cup(s)')

b2.ingredients.create!(title: 'cold unsalted butter, cut into small pieces', quantity: '6', unit: 'tbsp')

b2.ingredients.create!(title: 'chopped dried apricots', quantity: '1/2', unit: 'cup(s)')

b2.ingredients.create!(title: 'egg, beaten', quantity: '1')

b2.ingredients.create!(title: 'heavy cream', quantity: '1/2', unit: 'cup(s)')

b2.ingredients.create!(title: 'vanilla extract', quantity: '1/2', unit: 'tsp')

b2.ingredients.create!(title: 'extra heavy cream for brushing')

b2.ingredients.create!(title: 'course sugar, like turbinado')

b2.comments.create!(body: 'I love scones and apricots. This has all the things!', user_id: u3.id)
b2.comments.create!(body: 'Found it a little too cakey, so I added frosting!', user_id: u4.id)
b2.comments.create!(body: "I'll be making this one again.", user_id: u2.id)
b2.comments.create!(body: 'I made mine into smaller pieces, and that worked out well', user_id: u6.id)





b3 = Recipe.create!(name: 'Lemon Pancakes',
                    img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490241190/Lemon_Pancakes_3970_ebbndw.jpg',
                    tag_id: b.id,
                    user_id: u1.id,
                    directions: 'Zest both lemons. Set aside. Measure the milk and add the juice of 1 1/2 of the lemons. Stir and let sit for 5 minutes, then gently stir in the vanilla.

                    Stir together the flour, sugar, baking powder, and salt. Pour in the milk/lemon mixture, stirring gently. When it\'s halfway mixed together, stir in the eggs, then the melted butter. Finally, stir in the lemon zest. (If the batter is overly thick at this stage, add up to 1/4 cup milk.

                    Heat an iron skillet over medium heat, then add 2 tablespoons butter. When it\'s melted, drop in 1/4 cup helpings of batter, smoothing the top to help spread it into an even layer. Cook until golden and sizzly around the edges, then turn to the other side and finish cooking. Remove and repeat with the rest of the batter.

                    Serve with butter, syrup, and extra lemon zest. (Can turn this into more of a dessert with a powdered sugar glaze and/or whipped cream!)')

b3.ingredients.create!(title: 'whole lemons', quantity: '2')

b3.ingredients.create!(title: '2% milk', quantity: '2 1/4', unit: 'cup(s)')

b3.ingredients.create!(title: 'vanilla extract', quantity: '1', unit: 'tbsp')

b3.ingredients.create!(title: 'flour', quantity: '3', unit: 'cup(s)')

b3.ingredients.create!(title: 'sugar', quantity: '1/4', unit: 'cup(s)')

b3.ingredients.create!(title: 'baking pwoder', quantity: '2', unit: 'tbsp')

b3.ingredients.create!(title: 'salt', quantity: '1/4', unit: 'tsp')

b3.ingredients.create!(title: 'whole eggs, beaten', quantity: '2')

b3.ingredients.create!(title: 'butter, melted', quantity: '1/4', unit: 'cup(s)')

b3.comments.create!(body: 'Forget lemonade, PANCAKES!', user_id: u3.id)
b3.comments.create!(body: 'Missing the irish coffee', user_id: u4.id)
b3.comments.create!(body: "Used whipped butter to top this off.", user_id: u2.id)
b3.comments.create!(body: 'Doesn\'t need syrup', user_id: u6.id)



b4 = Recipe.create!(name: 'Persimmon Bread',
                    img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490241233/5138645664_e79edbe1d3_z_w62hpv.jpg',
                    tag_id: b.id,
                    user_id: u1.id,
                    directions: '1. Butter 2 loaf pans. Line the bottoms with a piece of parchment paper or dust with flour and tap out any excess. 2. Preheat oven to 350 degrees. 3. Sift the first 5 dry ingredients in a large mixing bowl. 4. Make a well in the center then stir in the butter, eggs, liquor, persimmon puree then the nuts and raisins. 5. Bake 1 hour or until toothpick inserted into the center comes out clean. Storage: Will keep for about a week, if well-wrapped, at room temperature. The Persimmon Breads take well to being frozen, too.')

b4.ingredients.create!(title: 'sifted flour', quantity: '3 1/2', unit: 'cup(s)')

b4.ingredients.create!(title: 'salt', quantity: '1 1/2', unit: 'tsp')

b4.ingredients.create!(title: 'baking soda', quantity: '2', unit: 'tbsp')

b4.ingredients.create!(title: 'ground nutmeg', quantity: '1', unit: 'tsp')

b4.ingredients.create!(title: 'sugar', quantity: '2 1/4', unit: 'cup(s)')

b4.ingredients.create!(title: 'melted unsalted butter, cooled to room temperature', quantity: '1', unit: 'cup(s)')

b4.ingredients.create!(title: 'large eggs, beaten, at room temperature', quantity: '4')

b4.ingredients.create!(title: 'cognac, bourbon, or whiskey', quantity: '2/3', unit: 'cup(s)')

b4.ingredients.create!(title: 'persimmon puree', quantity: '2', unit: 'cup(s)')
b4.ingredients.create!(title: 'walnuts or pecan, toasted and chopped', quantity: '2', unit: 'cup(s)')
b4.ingredients.create!(title: 'raisins, or diced dried fruits', quantity: '2', unit: 'cup(s)')

b4.comments.create!(body: 'Too little whiskey', user_id: u3.id)
b4.comments.create!(body: 'I used almonds and they worked fine', user_id: u4.id)
b4.comments.create!(body: "Caaarbs! This did not go well for my paleo diet.", user_id: u2.id)
b4.comments.create!(body: 'Mind. Blown.', user_id: u6.id)



b6 = Recipe.create!(name: 'Pumpkin Doughnuts',
               img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490241366/DSC_27051_stqqwn.jpg',
               tag_id: b.id,
               user_id: u1.id,
               directions: 'Preheat the oven to 350°F. Lightly grease two standard doughnut pans. If you don\'t have doughnut pans, you can bake these in a standard muffin tin; they just won\'t be doughnuts.
               Beat together the oil, eggs, sugar, pumpkin, spices, salt, and baking powder until smooth.
               Add the flour, stirring just until smooth.
               Fill the wells of the doughnut pans about 3/4 full; use a scant 1/4 cup of batter in each well. If you\'re making muffins, fill each well about 3/4 full; the recipe makes about 15, so you\'ll need to bake in two batches (unless you have two muffin pans).
               Bake the doughnuts for 15 to 18 minutes, or until a cake tester inserted into the center of one comes out clean. If you\'re making muffins, they\'ll need to bake for 23 to 25 minutes.
               Remove the doughnuts from the oven, and after about 5 minutes, loosen their edges, and transfer them to a rack to cool.
               While the doughnuts are still warm (but no longer fragile), gently shake them in a bag with the cinnamon-sugar. If you\'ve made muffins, sprinkle their tops heavily with cinnamon-sugar.
               Cool completely, and store (not wrapped tight) at room temperature for several days.
               Yield: 12 doughnuts or 15 muffins.')

b6.ingredients.create!(title: 'vegetable oil', quantity: '1/2', unit: 'cup(s)')
b6.ingredients.create!(title: 'large eggs', quantity: '3')
b6.ingredients.create!(title: 'granulated sugar', quantity: '1 1/2', unit: 'cup(s)')
b6.ingredients.create!(title: 'pumpkin puree (canned pumpkin)', quantity: '1 1/2', unit: 'cup(s)')
b6.ingredients.create!(title: 'pumpkin pie spice', quantity: '1 1/2', unit: 'tsp')
b6.ingredients.create!(title: 'salt', quantity: '1', unit: 'tsp')
b6.ingredients.create!(title: 'baking powder', quantity: '1 1/2', unit: 'tsp')
b6.ingredients.create!(title: 'all purpose flour', quantity: '2', unit: 'cup(s)')
b6.ingredients.create!(title: 'cinnamon sugar, for coating', quantity: '3', unit: 'tbsp')


b6.comments.create!(body: 'Pumpkin doughnuts?!?!', user_id: u3.id)
b6.comments.create!(body: 'Surprisingly good', user_id: u4.id)
b6.comments.create!(body: "Nope.", user_id: u2.id)
b6.comments.create!(body: 'Never would\'ve thought of this! Amazing!', user_id: u6.id)







b7 = Recipe.create!(name: 'French Toast',
                   img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490241476/french-toast-recipe_ijevms.jpg',
                   tag_id: b.id,
                   user_id: u1.id,
                   directions: '1. Preheat oven to 375°F (190°C). Fold a 12- by 24-inch sheet of aluminum foil in half to form a square. Crimp two edges to form a pouch. Toss beets, 1 tablespoon (15ml) olive oil, rosemary or thyme sprigs (if using), and salt and pepper to taste in a medium bowl until beets are coated. Add to pouch and crimp remaining edge to seal. (If using multiple colors of beets, roast in separate pouches.) Transfer to a rimmed baking sheet and place in oven. Roast until beets are completely tender and a toothpick or cake tester inserted into a beet through foil meets little to no resistance, about 1 1/2 hours. Remove from oven and allow to cool. When beets are cool enough to handle, peel by gently rubbing skin under cold running water. Cut beets into 1 1/2–inch chunks. Beets can be cooked and stored in the refrigerator for up to 5 days.

                   2. Place pistachios in a mortar and pound with pestle until lightly crushed but not totally pulverized. (You can also chop them with a knife.) Transfer half of nuts to a large bowl and reserve the rest for garnish.

                   3. Add grapefruit juice, orange juice, lemon juice, shallot, minced herbs, and honey to bowl with pistachios and whisk to combine. Drizzle in remaining 3 tablespoons (45ml) olive oil while whisking constantly. Season to taste with salt and pepper.

                   4. To Serve: Toss beets and citrus with vinaigrette in a large bowl (if using red beets, toss them separately from everything else) and season to taste with salt and pepper. Spread half of ricotta over a serving platter, place dressed beets and citrus on top, dollop with remaining ricotta, sprinkle with reserved pistachios, and serve.')

                  b7.ingredients.create!(title: 'beets, unpeeled, greens removed, scrubbed clean',
                                        quantity: '2',
                                        unit: 'lb')

                  b7.ingredients.create!(title: 'extra-virgin olive oil, divided',
                                        quantity: '1/4',
                                        unit: 'cup(s)')

                  b7.ingredients.create!(title: 'sprigs thyme or rosemary (optional)',
                                        quantity: '2')

                  b7.ingredients.create!(title: 'Kosher salt and freshly ground black pepper')

                  b7.ingredients.create!(title: 'toasted shelled pistachios',
                                        quantity: '1/4',
                                        unit: 'cup(s)')

                  b7.ingredients.create!(title: 'grapefruit, cut into suprèmes or wedges',
                                        quantity: '1')

                  b7.ingredients.create!(title: 'orange, cut into suprèmes or wedges',
                                        quantity: '1')

                  b7.ingredients.create!(title: 'juice from 1 lemon',
                                        quantity: '2',
                                        unit: 'tsp')

                  b7.ingredients.create!(title: 'small shallot, finely minced',
                                        quantity: '1')

                  b7.ingredients.create!(title: 'minced fresh parsley, tarragon, or chervil',
                                        quantity: '2',
                                        unit: 'tsp')

                  b7.ingredients.create!(title: 'honey',
                                        quantity: '1',
                                        unit: 'tbsp')

                  b7.ingredients.create!(title: 'fresh ricotta',
                                        quantity: '1/2',
                                        unit: 'cup(s)')

                  b7.comments.create!(body: 'This was amazing! I added parsley. YUM', user_id: u3.id)
                  b7.comments.create!(body: 'Needs more olive oil', user_id: u4.id)
                  b7.comments.create!(body: "I'll be making this one again.", user_id: u2.id)
                  b7.comments.create!(body: 'Pretty good, thanks for sharing!', user_id: u6.id)

# lunch
  l1 = Recipe.create!(name: 'Roasted Beet and Citrus Salad With Ricotta and Pistachio Vinaigrette',
                     img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490200193/Chicory-Salad-11_upafzl.jpg',
                     tag_id: l.id,
                     user_id: u1.id,
                     directions: '1. Preheat oven to 375°F (190°C). Fold a 12- by 24-inch sheet of aluminum foil in half to form a square. Crimp two edges to form a pouch. Toss beets, 1 tablespoon (15ml) olive oil, rosemary or thyme sprigs (if using), and salt and pepper to taste in a medium bowl until beets are coated. Add to pouch and crimp remaining edge to seal. (If using multiple colors of beets, roast in separate pouches.) Transfer to a rimmed baking sheet and place in oven. Roast until beets are completely tender and a toothpick or cake tester inserted into a beet through foil meets little to no resistance, about 1 1/2 hours. Remove from oven and allow to cool. When beets are cool enough to handle, peel by gently rubbing skin under cold running water. Cut beets into 1 1/2–inch chunks. Beets can be cooked and stored in the refrigerator for up to 5 days.

                     2. Place pistachios in a mortar and pound with pestle until lightly crushed but not totally pulverized. (You can also chop them with a knife.) Transfer half of nuts to a large bowl and reserve the rest for garnish.

                     3. Add grapefruit juice, orange juice, lemon juice, shallot, minced herbs, and honey to bowl with pistachios and whisk to combine. Drizzle in remaining 3 tablespoons (45ml) olive oil while whisking constantly. Season to taste with salt and pepper.

                     4. To Serve: Toss beets and citrus with vinaigrette in a large bowl (if using red beets, toss them separately from everything else) and season to taste with salt and pepper. Spread half of ricotta over a serving platter, place dressed beets and citrus on top, dollop with remaining ricotta, sprinkle with reserved pistachios, and serve.')

                    l1.ingredients.create!(title: 'beets, unpeeled, greens removed, scrubbed clean',
                                          quantity: '2',
                                          unit: 'lb')

                    l1.ingredients.create!(title: 'extra-virgin olive oil, divided',
                                          quantity: '1/4',
                                          unit: 'cup(s)')

                    l1.ingredients.create!(title: 'sprigs thyme or rosemary (optional)',
                                          quantity: '2')

                    l1.ingredients.create!(title: 'Kosher salt and freshly ground black pepper')

                    l1.ingredients.create!(title: 'toasted shelled pistachios',
                                          quantity: '1/4',
                                          unit: 'cup(s)')

                    l1.ingredients.create!(title: 'grapefruit, cut into suprèmes or wedges',
                                          quantity: '1')

                    l1.ingredients.create!(title: 'orange, cut into suprèmes or wedges',
                                          quantity: '1')

                    l1.ingredients.create!(title: 'juice from 1 lemon',
                                          quantity: '2',
                                          unit: 'tsp')

                    l1.ingredients.create!(title: 'small shallot, finely minced',
                                          quantity: '1')

                    l1.ingredients.create!(title: 'minced fresh parsley, tarragon, or chervil',
                                          quantity: '2',
                                          unit: 'tsp')

                    l1.ingredients.create!(title: 'honey',
                                          quantity: '1',
                                          unit: 'tbsp')

                    l1.ingredients.create!(title: 'fresh ricotta',
                                          quantity: '1/2',
                                          unit: 'cup(s)')

                    l1.comments.create!(body: 'This was amazing! I added parsley. YUM', user_id: u3.id)
                    l1.comments.create!(body: 'Needs more olive oil', user_id: u4.id)
                    l1.comments.create!(body: "I'll be making this one again.", user_id: u2.id)
                    l1.comments.create!(body: 'Pretty good, thanks for sharing!', user_id: u6.id)

  l2 = Recipe.create!(name: 'Curry Artichoke Rice Salad',
                     img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490241554/curry-rice-salad-a_dv9jeh.jpg',
                     tag_id: l.id,
                     user_id: u1.id,
                     directions: '1. Preheat oven to 375°F (190°C). Fold a 12- by 24-inch sheet of aluminum foil in half to form a square. Crimp two edges to form a pouch. Toss beets, 1 tablespoon (15ml) olive oil, rosemary or thyme sprigs (if using), and salt and pepper to taste in a medium bowl until beets are coated. Add to pouch and crimp remaining edge to seal. (If using multiple colors of beets, roast in separate pouches.) Transfer to a rimmed baking sheet and place in oven. Roast until beets are completely tender and a toothpick or cake tester inserted into a beet through foil meets little to no resistance, about 1 1/2 hours. Remove from oven and allow to cool. When beets are cool enough to handle, peel by gently rubbing skin under cold running water. Cut beets into 1 1/2–inch chunks. Beets can be cooked and stored in the refrigerator for up to 5 days.

                     2. Place pistachios in a mortar and pound with pestle until lightly crushed but not totally pulverized. (You can also chop them with a knife.) Transfer half of nuts to a large bowl and reserve the rest for garnish.

                     3. Add grapefruit juice, orange juice, lemon juice, shallot, minced herbs, and honey to bowl with pistachios and whisk to combine. Drizzle in remaining 3 tablespoons (45ml) olive oil while whisking constantly. Season to taste with salt and pepper.

                     4. To Serve: Toss beets and citrus with vinaigrette in a large bowl (if using red beets, toss them separately from everything else) and season to taste with salt and pepper. Spread half of ricotta over a serving platter, place dressed beets and citrus on top, dollop with remaining ricotta, sprinkle with reserved pistachios, and serve.')

                    l2.ingredients.create!(title: 'beets, unpeeled, greens removed, scrubbed clean',
                                          quantity: '2',
                                          unit: 'lb')

                    l2.ingredients.create!(title: 'extra-virgin olive oil, divided',
                                          quantity: '1/4',
                                          unit: 'cup(s)')

                    l2.ingredients.create!(title: 'sprigs thyme or rosemary (optional)',
                                          quantity: '2')

                    l2.ingredients.create!(title: 'Kosher salt and freshly ground black pepper')

                    l2.ingredients.create!(title: 'toasted shelled pistachios',
                                          quantity: '1/4',
                                          unit: 'cup(s)')

                    l2.ingredients.create!(title: 'grapefruit, cut into suprèmes or wedges',
                                          quantity: '1')

                    l2.ingredients.create!(title: 'orange, cut into suprèmes or wedges',
                                          quantity: '1')

                    l2.ingredients.create!(title: 'juice from 1 lemon',
                                          quantity: '2',
                                          unit: 'tsp')

                    l2.ingredients.create!(title: 'small shallot, finely minced',
                                          quantity: '1')

                    l2.ingredients.create!(title: 'minced fresh parsley, tarragon, or chervil',
                                          quantity: '2',
                                          unit: 'tsp')

                    l2.ingredients.create!(title: 'honey',
                                          quantity: '1',
                                          unit: 'tbsp')

                    l2.ingredients.create!(title: 'fresh ricotta',
                                          quantity: '1/2',
                                          unit: 'cup(s)')

                    l2.comments.create!(body: 'This was amazing! I added parsley. YUM', user_id: u3.id)
                    l2.comments.create!(body: 'Needs more olive oil', user_id: u4.id)
                    l2.comments.create!(body: "I'll be making this one again.", user_id: u2.id)
                    l2.comments.create!(body: 'Pretty good, thanks for sharing!', user_id: u6.id)

  l3 = Recipe.create!(name: 'Grilled Corn, Mango and Jicama Salad with Honey Vinaigrette',
                   img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490241628/Salad-Creole-green-salad-baby-arugula-and-baby-greens-roast-fennel-naval-and-blood-oranges-candied-cayenne-pecans-goat-cheese-in-creole-mustard-vinaigrette.-Accompanied-a-Cajun-menu_s7yvxb.jpg',
                   tag_id: l.id,
                   user_id: u1.id,
                   directions: '1. Preheat oven to 375°F (190°C). Fold a 12- by 24-inch sheet of aluminum foil in half to form a square. Crimp two edges to form a pouch. Toss beets, 1 tablespoon (15ml) olive oil, rosemary or thyme sprigs (if using), and salt and pepper to taste in a medium bowl until beets are coated. Add to pouch and crimp remaining edge to seal. (If using multiple colors of beets, roast in separate pouches.) Transfer to a rimmed baking sheet and place in oven. Roast until beets are completely tender and a toothpick or cake tester inserted into a beet through foil meets little to no resistance, about 1 1/2 hours. Remove from oven and allow to cool. When beets are cool enough to handle, peel by gently rubbing skin under cold running water. Cut beets into 1 1/2–inch chunks. Beets can be cooked and stored in the refrigerator for up to 5 days.

                   2. Place pistachios in a mortar and pound with pestle until lightly crushed but not totally pulverized. (You can also chop them with a knife.) Transfer half of nuts to a large bowl and reserve the rest for garnish.

                   3. Add grapefruit juice, orange juice, lemon juice, shallot, minced herbs, and honey to bowl with pistachios and whisk to combine. Drizzle in remaining 3 tablespoons (45ml) olive oil while whisking constantly. Season to taste with salt and pepper.

                   4. To Serve: Toss beets and citrus with vinaigrette in a large bowl (if using red beets, toss them separately from everything else) and season to taste with salt and pepper. Spread half of ricotta over a serving platter, place dressed beets and citrus on top, dollop with remaining ricotta, sprinkle with reserved pistachios, and serve.')

                  l3.ingredients.create!(title: 'beets, unpeeled, greens removed, scrubbed clean',
                                        quantity: '2',
                                        unit: 'lb')

                  l3.ingredients.create!(title: 'extra-virgin olive oil, divided',
                                        quantity: '1/4',
                                        unit: 'cup(s)')

                  l3.ingredients.create!(title: 'sprigs thyme or rosemary (optional)',
                                        quantity: '2')

                  l3.ingredients.create!(title: 'Kosher salt and freshly ground black pepper')

                  l3.ingredients.create!(title: 'toasted shelled pistachios',
                                        quantity: '1/4',
                                        unit: 'cup(s)')

                  l3.ingredients.create!(title: 'grapefruit, cut into suprèmes or wedges',
                                        quantity: '1')

                  l3.ingredients.create!(title: 'orange, cut into suprèmes or wedges',
                                        quantity: '1')

                  l3.ingredients.create!(title: 'juice from 1 lemon',
                                        quantity: '2',
                                        unit: 'tsp')

                  l3.ingredients.create!(title: 'small shallot, finely minced',
                                        quantity: '1')

                  l3.ingredients.create!(title: 'minced fresh parsley, tarragon, or chervil',
                                        quantity: '2',
                                        unit: 'tsp')

                  l3.ingredients.create!(title: 'honey',
                                        quantity: '1',
                                        unit: 'tbsp')

                  l3.ingredients.create!(title: 'fresh ricotta',
                                        quantity: '1/2',
                                        unit: 'cup(s)')

                  l3.comments.create!(body: 'This was amazing! I added parsley. YUM', user_id: u3.id)
                  l3.comments.create!(body: 'Needs more olive oil', user_id: u4.id)
                  l3.comments.create!(body: "I'll be making this one again.", user_id: u2.id)

                  l3.comments.create!(body: 'Pretty good, thanks for sharing!', user_id: u6.id)

  l4 = Recipe.create!(name: 'Orange Cranberry Green Salad with Walnuts and Blue Cheese',
                     img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490241751/green-salad-with-cranberries_ubfres.jpg',
                     tag_id: l.id,
                     user_id: u4.id,
                     directions: '1. Preheat oven to 375°F (190°C). Fold a 12- by 24-inch sheet of aluminum foil in half to form a square. Crimp two edges to form a pouch. Toss beets, 1 tablespoon (15ml) olive oil, rosemary or thyme sprigs (if using), and salt and pepper to taste in a medium bowl until beets are coated. Add to pouch and crimp remaining edge to seal. (If using multiple colors of beets, roast in separate pouches.) Transfer to a rimmed baking sheet and place in oven. Roast until beets are completely tender and a toothpick or cake tester inserted into a beet through foil meets little to no resistance, about 1 1/2 hours. Remove from oven and allow to cool. When beets are cool enough to handle, peel by gently rubbing skin under cold running water. Cut beets into 1 1/2–inch chunks. Beets can be cooked and stored in the refrigerator for up to 5 days.

                     2. Place pistachios in a mortar and pound with pestle until lightly crushed but not totally pulverized. (You can also chop them with a knife.) Transfer half of nuts to a large bowl and reserve the rest for garnish.

                     3. Add grapefruit juice, orange juice, lemon juice, shallot, minced herbs, and honey to bowl with pistachios and whisk to combine. Drizzle in remaining 3 tablespoons (45ml) olive oil while whisking constantly. Season to taste with salt and pepper.

                     4. To Serve: Toss beets and citrus with vinaigrette in a large bowl (if using red beets, toss them separately from everything else) and season to taste with salt and pepper. Spread half of ricotta over a serving platter, place dressed beets and citrus on top, dollop with remaining ricotta, sprinkle with reserved pistachios, and serve.')

                    l4.ingredients.create!(title: 'beets, unpeeled, greens removed, scrubbed clean',
                                          quantity: '2',
                                          unit: 'lb')

                    l4.ingredients.create!(title: 'extra-virgin olive oil, divided',
                                          quantity: '1/4',
                                          unit: 'cup(s)')

                    l4.ingredients.create!(title: 'sprigs thyme or rosemary (optional)',
                                          quantity: '2')

                    l4.ingredients.create!(title: 'Kosher salt and freshly ground black pepper')

                    l4.ingredients.create!(title: 'toasted shelled pistachios',
                                          quantity: '1/4',
                                          unit: 'cup(s)')

                    l4.ingredients.create!(title: 'grapefruit, cut into suprèmes or wedges',
                                          quantity: '1')

                    l4.ingredients.create!(title: 'orange, cut into suprèmes or wedges',
                                          quantity: '1')

                    l4.ingredients.create!(title: 'juice from 1 lemon',
                                          quantity: '2',
                                          unit: 'tsp')

                    l4.ingredients.create!(title: 'small shallot, finely minced',
                                          quantity: '1')

                    l4.ingredients.create!(title: 'minced fresh parsley, tarragon, or chervil',
                                          quantity: '2',
                                          unit: 'tsp')

                    l4.ingredients.create!(title: 'honey',
                                          quantity: '1',
                                          unit: 'tbsp')

                    l4.ingredients.create!(title: 'fresh ricotta',
                                          quantity: '1/2',
                                          unit: 'cup(s)')

                    l4.comments.create!(body: 'This was amazing! I added parsley. YUM', user_id: u3.id)
                    l4.comments.create!(body: 'Needs more olive oil', user_id: u4.id)
                    l4.comments.create!(body: "I'll be making this one again.", user_id: u2.id)
                    l4.comments.create!(body: 'Pretty good, thanks for sharing!', user_id: u6.id)

  l5 = Recipe.create!(name: 'Spicy Pumpkin Soup with Cilantro Pepita Pesto',
                     img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490241818/CvEkhpVUAAA5oYG_glmzax.jpg',
                     tag_id: l.id,
                     user_id: u3.id,
                     directions: '1. Preheat oven to 375°F (190°C). Fold a 12- by 24-inch sheet of aluminum foil in half to form a square. Crimp two edges to form a pouch. Toss beets, 1 tablespoon (15ml) olive oil, rosemary or thyme sprigs (if using), and salt and pepper to taste in a medium bowl until beets are coated. Add to pouch and crimp remaining edge to seal. (If using multiple colors of beets, roast in separate pouches.) Transfer to a rimmed baking sheet and place in oven. Roast until beets are completely tender and a toothpick or cake tester inserted into a beet through foil meets little to no resistance, about 1 1/2 hours. Remove from oven and allow to cool. When beets are cool enough to handle, peel by gently rubbing skin under cold running water. Cut beets into 1 1/2–inch chunks. Beets can be cooked and stored in the refrigerator for up to 5 days.

                     2. Place pistachios in a mortar and pound with pestle until lightly crushed but not totally pulverized. (You can also chop them with a knife.) Transfer half of nuts to a large bowl and reserve the rest for garnish.

                     3. Add grapefruit juice, orange juice, lemon juice, shallot, minced herbs, and honey to bowl with pistachios and whisk to combine. Drizzle in remaining 3 tablespoons (45ml) olive oil while whisking constantly. Season to taste with salt and pepper.

                     4. To Serve: Toss beets and citrus with vinaigrette in a large bowl (if using red beets, toss them separately from everything else) and season to taste with salt and pepper. Spread half of ricotta over a serving platter, place dressed beets and citrus on top, dollop with remaining ricotta, sprinkle with reserved pistachios, and serve.')

                    l5.ingredients.create!(title: 'beets, unpeeled, greens removed, scrubbed clean',
                                          quantity: '2',
                                          unit: 'lb')

                    l5.ingredients.create!(title: 'extra-virgin olive oil, divided',
                                          quantity: '1/4',
                                          unit: 'cup(s)')

                    l5.ingredients.create!(title: 'sprigs thyme or rosemary (optional)',
                                          quantity: '2')

                    l5.ingredients.create!(title: 'Kosher salt and freshly ground black pepper')

                    l5.ingredients.create!(title: 'toasted shelled pistachios',
                                          quantity: '1/4',
                                          unit: 'cup(s)')

                    l5.ingredients.create!(title: 'grapefruit, cut into suprèmes or wedges',
                                          quantity: '1')

                    l5.ingredients.create!(title: 'orange, cut into suprèmes or wedges',
                                          quantity: '1')

                    l5.ingredients.create!(title: 'juice from 1 lemon',
                                          quantity: '2',
                                          unit: 'tsp')

                    l5.ingredients.create!(title: 'small shallot, finely minced',
                                          quantity: '1')

                    l5.ingredients.create!(title: 'minced fresh parsley, tarragon, or chervil',
                                          quantity: '2',
                                          unit: 'tsp')

                    l5.ingredients.create!(title: 'honey',
                                          quantity: '1',
                                          unit: 'tbsp')

                    l5.ingredients.create!(title: 'fresh ricotta',
                                          quantity: '1/2',
                                          unit: 'cup(s)')

                    l5.comments.create!(body: 'This was amazing! I added parsley. YUM', user_id: u3.id)
                    l5.comments.create!(body: 'Needs more olive oil', user_id: u4.id)
                    l5.comments.create!(body: "I'll be making this one again.", user_id: u2.id)
                    l5.comments.create!(body: 'Pretty good, thanks for sharing!', user_id: u6.id)

  l6 = Recipe.create!(name: 'Roasted Autumn Vegetable Chowder',
                 img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490241911/cornchowder5_ya37vl.jpg',
                 tag_id: l.id,
                 user_id: u1.id,
                 directions: '1. Preheat oven to 375°F (190°C). Fold a 12- by 24-inch sheet of aluminum foil in half to form a square. Crimp two edges to form a pouch. Toss beets, 1 tablespoon (15ml) olive oil, rosemary or thyme sprigs (if using), and salt and pepper to taste in a medium bowl until beets are coated. Add to pouch and crimp remaining edge to seal. (If using multiple colors of beets, roast in separate pouches.) Transfer to a rimmed baking sheet and place in oven. Roast until beets are completely tender and a toothpick or cake tester inserted into a beet through foil meets little to no resistance, about 1 1/2 hours. Remove from oven and allow to cool. When beets are cool enough to handle, peel by gently rubbing skin under cold running water. Cut beets into 1 1/2–inch chunks. Beets can be cooked and stored in the refrigerator for up to 5 days.

                 2. Place pistachios in a mortar and pound with pestle until lightly crushed but not totally pulverized. (You can also chop them with a knife.) Transfer half of nuts to a large bowl and reserve the rest for garnish.

                 3. Add grapefruit juice, orange juice, lemon juice, shallot, minced herbs, and honey to bowl with pistachios and whisk to combine. Drizzle in remaining 3 tablespoons (45ml) olive oil while whisking constantly. Season to taste with salt and pepper.

                 4. To Serve: Toss beets and citrus with vinaigrette in a large bowl (if using red beets, toss them separately from everything else) and season to taste with salt and pepper. Spread half of ricotta over a serving platter, place dressed beets and citrus on top, dollop with remaining ricotta, sprinkle with reserved pistachios, and serve.')

                l6.ingredients.create!(title: 'beets, unpeeled, greens removed, scrubbed clean',
                                      quantity: '2',
                                      unit: 'lb')

                l6.ingredients.create!(title: 'extra-virgin olive oil, divided',
                                      quantity: '1/4',
                                      unit: 'cup(s)')

                l6.ingredients.create!(title: 'sprigs thyme or rosemary (optional)',
                                      quantity: '2')

                l6.ingredients.create!(title: 'Kosher salt and freshly ground black pepper')

                l6.ingredients.create!(title: 'toasted shelled pistachios',
                                      quantity: '1/4',
                                      unit: 'cup(s)')

                l6.ingredients.create!(title: 'grapefruit, cut into suprèmes or wedges',
                                      quantity: '1')

                l6.ingredients.create!(title: 'orange, cut into suprèmes or wedges',
                                      quantity: '1')

                l6.ingredients.create!(title: 'juice from 1 lemon',
                                      quantity: '2',
                                      unit: 'tsp')

                l6.ingredients.create!(title: 'small shallot, finely minced',
                                      quantity: '1')

                l6.ingredients.create!(title: 'minced fresh parsley, tarragon, or chervil',
                                      quantity: '2',
                                      unit: 'tsp')

                l6.ingredients.create!(title: 'honey',
                                      quantity: '1',
                                      unit: 'tbsp')

                l6.ingredients.create!(title: 'fresh ricotta',
                                      quantity: '1/2',
                                      unit: 'cup(s)')

                l6.comments.create!(body: 'This was amazing! I added parsley. YUM', user_id: u3.id)
                l6.comments.create!(body: 'Needs more olive oil', user_id: u4.id)
                l6.comments.create!(body: "I'll be making this one again.", user_id: u2.id)
                l6.comments.create!(body: 'Pretty good, thanks for sharing!', user_id: u6.id)

  l7 = Recipe.create!(name: 'Potato Leek Soup',
                 img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490242014/Skinny-Crockpot-Potato-Leek-Soup_sy8jwh.jpg',
                 tag_id: l.id,
                 user_id: u2.id,
                 directions: '1. Preheat oven to 375°F (190°C). Fold a 12- by 24-inch sheet of aluminum foil in half to form a square. Crimp two edges to form a pouch. Toss beets, 1 tablespoon (15ml) olive oil, rosemary or thyme sprigs (if using), and salt and pepper to taste in a medium bowl until beets are coated. Add to pouch and crimp remaining edge to seal. (If using multiple colors of beets, roast in separate pouches.) Transfer to a rimmed baking sheet and place in oven. Roast until beets are completely tender and a toothpick or cake tester inserted into a beet through foil meets little to no resistance, about 1 1/2 hours. Remove from oven and allow to cool. When beets are cool enough to handle, peel by gently rubbing skin under cold running water. Cut beets into 1 1/2–inch chunks. Beets can be cooked and stored in the refrigerator for up to 5 days.

                 2. Place pistachios in a mortar and pound with pestle until lightly crushed but not totally pulverized. (You can also chop them with a knife.) Transfer half of nuts to a large bowl and reserve the rest for garnish.

                 3. Add grapefruit juice, orange juice, lemon juice, shallot, minced herbs, and honey to bowl with pistachios and whisk to combine. Drizzle in remaining 3 tablespoons (45ml) olive oil while whisking constantly. Season to taste with salt and pepper.

                 4. To Serve: Toss beets and citrus with vinaigrette in a large bowl (if using red beets, toss them separately from everything else) and season to taste with salt and pepper. Spread half of ricotta over a serving platter, place dressed beets and citrus on top, dollop with remaining ricotta, sprinkle with reserved pistachios, and serve.')

                l7.ingredients.create!(title: 'beets, unpeeled, greens removed, scrubbed clean',
                                      quantity: '2',
                                      unit: 'lb')

                l7.ingredients.create!(title: 'extra-virgin olive oil, divided',
                                      quantity: '1/4',
                                      unit: 'cup(s)')

                l7.ingredients.create!(title: 'sprigs thyme or rosemary (optional)',
                                      quantity: '2')

                l7.ingredients.create!(title: 'Kosher salt and freshly ground black pepper')

                l7.ingredients.create!(title: 'toasted shelled pistachios',
                                      quantity: '1/4',
                                      unit: 'cup(s)')

                l7.ingredients.create!(title: 'grapefruit, cut into suprèmes or wedges',
                                      quantity: '1')

                l7.ingredients.create!(title: 'orange, cut into suprèmes or wedges',
                                      quantity: '1')

                l7.ingredients.create!(title: 'juice from 1 lemon',
                                      quantity: '2',
                                      unit: 'tsp')

                l7.ingredients.create!(title: 'small shallot, finely minced',
                                      quantity: '1')

                l7.ingredients.create!(title: 'minced fresh parsley, tarragon, or chervil',
                                      quantity: '2',
                                      unit: 'tsp')

                l7.ingredients.create!(title: 'honey',
                                      quantity: '1',
                                      unit: 'tbsp')

                l7.ingredients.create!(title: 'fresh ricotta',
                                      quantity: '1/2',
                                      unit: 'cup(s)')

                l7.comments.create!(body: 'This was amazing! I added parsley. YUM', user_id: u3.id)
                l7.comments.create!(body: 'Needs more olive oil', user_id: u4.id)
                l7.comments.create!(body: "I'll be making this one again.", user_id: u2.id)
                l7.comments.create!(body: 'Pretty good, thanks for sharing!', user_id: u6.id)

  l8 = Recipe.create!(name: 'B.L.A.T. Sandwich with Spicy Chipotle Mayonnaise',
                     img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490242125/BLTA-bacon-lettuce-tomato-sandwich-toast-avocado-5_lkfvzm.jpg',
                     tag_id: l.id,
                     user_id: u1.id,
                     directions: '1. Preheat oven to 375°F (190°C). Fold a 12- by 24-inch sheet of aluminum foil in half to form a square. Crimp two edges to form a pouch. Toss beets, 1 tablespoon (15ml) olive oil, rosemary or thyme sprigs (if using), and salt and pepper to taste in a medium bowl until beets are coated. Add to pouch and crimp remaining edge to seal. (If using multiple colors of beets, roast in separate pouches.) Transfer to a rimmed baking sheet and place in oven. Roast until beets are completely tender and a toothpick or cake tester inserted into a beet through foil meets little to no resistance, about 1 1/2 hours. Remove from oven and allow to cool. When beets are cool enough to handle, peel by gently rubbing skin under cold running water. Cut beets into 1 1/2–inch chunks. Beets can be cooked and stored in the refrigerator for up to 5 days.

                     2. Place pistachios in a mortar and pound with pestle until lightly crushed but not totally pulverized. (You can also chop them with a knife.) Transfer half of nuts to a large bowl and reserve the rest for garnish.

                     3. Add grapefruit juice, orange juice, lemon juice, shallot, minced herbs, and honey to bowl with pistachios and whisk to combine. Drizzle in remaining 3 tablespoons (45ml) olive oil while whisking constantly. Season to taste with salt and pepper.

                     4. To Serve: Toss beets and citrus with vinaigrette in a large bowl (if using red beets, toss them separately from everything else) and season to taste with salt and pepper. Spread half of ricotta over a serving platter, place dressed beets and citrus on top, dollop with remaining ricotta, sprinkle with reserved pistachios, and serve.')

                    l8.ingredients.create!(title: 'beets, unpeeled, greens removed, scrubbed clean',
                                          quantity: '2',
                                          unit: 'lb')

                    l8.ingredients.create!(title: 'extra-virgin olive oil, divided',
                                          quantity: '1/4',
                                          unit: 'cup(s)')

                    l8.ingredients.create!(title: 'sprigs thyme or rosemary (optional)',
                                          quantity: '2')

                    l8.ingredients.create!(title: 'Kosher salt and freshly ground black pepper')

                    l8.ingredients.create!(title: 'toasted shelled pistachios',
                                          quantity: '1/4',
                                          unit: 'cup(s)')

                    l8.ingredients.create!(title: 'grapefruit, cut into suprèmes or wedges',
                                          quantity: '1')

                    l8.ingredients.create!(title: 'orange, cut into suprèmes or wedges',
                                          quantity: '1')

                    l8.ingredients.create!(title: 'juice from 1 lemon',
                                          quantity: '2',
                                          unit: 'tsp')

                    l8.ingredients.create!(title: 'small shallot, finely minced',
                                          quantity: '1')

                    l8.ingredients.create!(title: 'minced fresh parsley, tarragon, or chervil',
                                          quantity: '2',
                                          unit: 'tsp')

                    l8.ingredients.create!(title: 'honey',
                                          quantity: '1',
                                          unit: 'tbsp')

                    l8.ingredients.create!(title: 'fresh ricotta',
                                          quantity: '1/2',
                                          unit: 'cup(s)')

                    l8.comments.create!(body: 'This was amazing! I added parsley. YUM', user_id: u3.id)
                    l8.comments.create!(body: 'Needs more olive oil', user_id: u4.id)
                    l8.comments.create!(body: "I'll be making this one again.", user_id: u2.id)
                    l8.comments.create!(body: 'Pretty good, thanks for sharing!', user_id: u6.id)


# dinner
  d1 = Recipe.create!(name: 'Chicken Bolognese with Tagliatelle',
                     img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490200498/ElCerrito_ThePasta2-superJumbo_gqatvi.jpg',
                     tag_id: d.id,
                     user_id: u3.id,
                     directions: 'Heat a large skillet over medium-high. Swirl in oil. Add onion, celery, and carrots; season with salt and pepper. Cook, stirring, until softened, 5 to 7 minutes. Add chicken; season with salt and pepper. Cook, breaking into bite-size pieces, until no longer pink, 3 to 4 minutes. Stir in tomato paste; cook 2 minutes. Add wine; boil until almost evaporated, 1 to 2 minutes. Add milk and tomatoes; reduce heat and simmer until thickened, 12 to 15 minutes. Cook pasta in a large pot of salted water. Drain, reserving 1 cup pasta water; return to pot. Add sauce, then pasta water, a little at a time, until sauce evenly coats pasta. Drizzle with oil and top with celery leaves, cheese, and a pinch of nutmeg; serve.')

                     d1.ingredients.create!(title: 'celery stalk, finely chopped (plus leaves for serving)',
                                           quantity: '1',
                                           unit: 'cup')

                     d1.ingredients.create!(title: 'medium carrots, peeled and finely chopped',
                                           quantity: '2',
                                           unit: 'cup(s)')

                      d1.ingredients.create!(title: 'course salt and freshly ground pepper',
                                            quantity: 'to taste')

                     d1.ingredients.create!(title: 'ground chicken',
                                           quantity: '1',
                                           unit: 'lb')

                    d1.ingredients.create!(title: 'tomato paste',
                                          quantity: '3',
                                          unit: 'tbsp')

                     d1.ingredients.create!(title: 'dry white wine (eg. Sauvignon Blanc)',
                                           quantity: '1/2',
                                           unit: 'cup(s)')

                    d1.ingredients.create!(title: 'whole milk',
                                          quantity: '3/4',
                                          unit: 'cup(s)')

                    d1.ingredients.create!(title: 'whole milk',
                                          quantity: '3/4',
                                          unit: 'cup(s)')

                    d1.ingredients.create!(title: 'whole peeled tomatoes (can), pureed',
                                          quantity: '14.5',
                                          unit: 'oz')

                    d1.ingredients.create!(title: 'tagliatelle, pappardelle, or fettuccine',
                                          quantity: '1',
                                          unit: 'lb')

                    d1.ingredients.create!(title: 'Freshly grated Parmesan and nutmeg for servind')

                    d1.comments.create!(body: 'This was amazing! I added parsley. YUM', user_id: u3.id)
                    d1.comments.create!(body: 'Needs more olive oil', user_id: u4.id)
                    d1.comments.create!(body: "I'll be making this one again.", user_id: u2.id)
                    d1.comments.create!(body: 'Pretty good, thanks for sharing!', user_id: u6.id)

  d2 = Recipe.create!(name: 'Paella with Tomatoes',
                     img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490242201/paella_ui10c8.jpg',
                     tag_id: d.id,
                     user_id: u1.id,
                     directions: '1. Preheat oven to 375°F (190°C). Fold a 12- by 24-inch sheet of aluminum foil in half to form a square. Crimp two edges to form a pouch. Toss beets, 1 tablespoon (15ml) olive oil, rosemary or thyme sprigs (if using), and salt and pepper to taste in a medium bowl until beets are coated. Add to pouch and crimp remaining edge to seal. (If using multiple colors of beets, roast in separate pouches.) Transfer to a rimmed baking sheet and place in oven. Roast until beets are completely tender and a toothpick or cake tester inserted into a beet through foil meets little to no resistance, about 1 1/2 hours. Remove from oven and allow to cool. When beets are cool enough to handle, peel by gently rubbing skin under cold running water. Cut beets into 1 1/2–inch chunks. Beets can be cooked and stored in the refrigerator for up to 5 days.

                     2. Place pistachios in a mortar and pound with pestle until lightly crushed but not totally pulverized. (You can also chop them with a knife.) Transfer half of nuts to a large bowl and reserve the rest for garnish.

                     3. Add grapefruit juice, orange juice, lemon juice, shallot, minced herbs, and honey to bowl with pistachios and whisk to combine. Drizzle in remaining 3 tablespoons (45ml) olive oil while whisking constantly. Season to taste with salt and pepper.

                     4. To Serve: Toss beets and citrus with vinaigrette in a large bowl (if using red beets, toss them separately from everything else) and season to taste with salt and pepper. Spread half of ricotta over a serving platter, place dressed beets and citrus on top, dollop with remaining ricotta, sprinkle with reserved pistachios, and serve.')

                    d2.ingredients.create!(title: 'beets, unpeeled, greens removed, scrubbed clean',
                                          quantity: '2',
                                          unit: 'lb')

                    d2.ingredients.create!(title: 'extra-virgin olive oil, divided',
                                          quantity: '1/4',
                                          unit: 'cup(s)')

                    d2.ingredients.create!(title: 'sprigs thyme or rosemary (optional)',
                                          quantity: '2')

                    d2.ingredients.create!(title: 'Kosher salt and freshly ground black pepper')

                    d2.ingredients.create!(title: 'toasted shelled pistachios',
                                          quantity: '1/4',
                                          unit: 'cup(s)')

                    d2.ingredients.create!(title: 'grapefruit, cut into suprèmes or wedges',
                                          quantity: '1')

                    d2.ingredients.create!(title: 'orange, cut into suprèmes or wedges',
                                          quantity: '1')

                    d2.ingredients.create!(title: 'juice from 1 lemon',
                                          quantity: '2',
                                          unit: 'tsp')

                    d2.ingredients.create!(title: 'small shallot, finely minced',
                                          quantity: '1')

                    d2.ingredients.create!(title: 'minced fresh parsley, tarragon, or chervil',
                                          quantity: '2',
                                          unit: 'tsp')

                    d2.ingredients.create!(title: 'honey',
                                          quantity: '1',
                                          unit: 'tbsp')

                    d2.ingredients.create!(title: 'fresh ricotta',
                                          quantity: '1/2',
                                          unit: 'cup(s)')

                    d2.comments.create!(body: 'This was amazing! I added parsley. YUM', user_id: u3.id)
                    d2.comments.create!(body: 'Needs more olive oil', user_id: u4.id)
                    d2.comments.create!(body: "I'll be making this one again.", user_id: u2.id)
                    d2.comments.create!(body: 'Pretty good, thanks for sharing!', user_id: u6.id)

  d3 = Recipe.create!(name: 'Spice Rubbed Flank Steak',
                     img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490242285/1427695310729_cat1dd.jpg',
                     tag_id: d.id,
                     user_id: u1.id,
                     directions: '1. Preheat oven to 375°F (190°C). Fold a 12- by 24-inch sheet of aluminum foil in half to form a square. Crimp two edges to form a pouch. Toss beets, 1 tablespoon (15ml) olive oil, rosemary or thyme sprigs (if using), and salt and pepper to taste in a medium bowl until beets are coated. Add to pouch and crimp remaining edge to seal. (If using multiple colors of beets, roast in separate pouches.) Transfer to a rimmed baking sheet and place in oven. Roast until beets are completely tender and a toothpick or cake tester inserted into a beet through foil meets little to no resistance, about 1 1/2 hours. Remove from oven and allow to cool. When beets are cool enough to handle, peel by gently rubbing skin under cold running water. Cut beets into 1 1/2–inch chunks. Beets can be cooked and stored in the refrigerator for up to 5 days.

                     2. Place pistachios in a mortar and pound with pestle until lightly crushed but not totally pulverized. (You can also chop them with a knife.) Transfer half of nuts to a large bowl and reserve the rest for garnish.

                     3. Add grapefruit juice, orange juice, lemon juice, shallot, minced herbs, and honey to bowl with pistachios and whisk to combine. Drizzle in remaining 3 tablespoons (45ml) olive oil while whisking constantly. Season to taste with salt and pepper.

                     4. To Serve: Toss beets and citrus with vinaigrette in a large bowl (if using red beets, toss them separately from everything else) and season to taste with salt and pepper. Spread half of ricotta over a serving platter, place dressed beets and citrus on top, dollop with remaining ricotta, sprinkle with reserved pistachios, and serve.')

                    d3.ingredients.create!(title: 'beets, unpeeled, greens removed, scrubbed clean',
                                          quantity: '2',
                                          unit: 'lb')

                    d3.ingredients.create!(title: 'extra-virgin olive oil, divided',
                                          quantity: '1/4',
                                          unit: 'cup(s)')

                    d3.ingredients.create!(title: 'sprigs thyme or rosemary (optional)',
                                          quantity: '2')

                    d3.ingredients.create!(title: 'Kosher salt and freshly ground black pepper')

                    d3.ingredients.create!(title: 'toasted shelled pistachios',
                                          quantity: '1/4',
                                          unit: 'cup(s)')

                    d3.ingredients.create!(title: 'grapefruit, cut into suprèmes or wedges',
                                          quantity: '1')

                    d3.ingredients.create!(title: 'orange, cut into suprèmes or wedges',
                                          quantity: '1')

                    d3.ingredients.create!(title: 'juice from 1 lemon',
                                          quantity: '2',
                                          unit: 'tsp')

                    d3.ingredients.create!(title: 'small shallot, finely minced',
                                          quantity: '1')

                    d3.ingredients.create!(title: 'minced fresh parsley, tarragon, or chervil',
                                          quantity: '2',
                                          unit: 'tsp')

                    d3.ingredients.create!(title: 'honey',
                                          quantity: '1',
                                          unit: 'tbsp')

                    d3.ingredients.create!(title: 'fresh ricotta',
                                          quantity: '1/2',
                                          unit: 'cup(s)')

                    d3.comments.create!(body: 'This was amazing! I added parsley. YUM', user_id: u3.id)
                    d3.comments.create!(body: 'Needs more olive oil', user_id: u4.id)
                    d3.comments.create!(body: "I'll be making this one again.", user_id: u2.id)
                    d3.comments.create!(body: 'Pretty good, thanks for sharing!', user_id: u6.id)

  d4 = Recipe.create!(name: 'Horseradish Meatloaf',
                   img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490242412/FN_CHARITY-BOYD-MOMS-MEATLOAF_s4x3.jpg.rend.hgtvcom.616.462_wdf4m2.jpg',
                   tag_id: d.id,
                   user_id: u5.id,
                   directions: '1. Preheat oven to 375°F (190°C). Fold a 12- by 24-inch sheet of aluminum foil in half to form a square. Crimp two edges to form a pouch. Toss beets, 1 tablespoon (15ml) olive oil, rosemary or thyme sprigs (if using), and salt and pepper to taste in a medium bowl until beets are coated. Add to pouch and crimp remaining edge to seal. (If using multiple colors of beets, roast in separate pouches.) Transfer to a rimmed baking sheet and place in oven. Roast until beets are completely tender and a toothpick or cake tester inserted into a beet through foil meets little to no resistance, about 1 1/2 hours. Remove from oven and allow to cool. When beets are cool enough to handle, peel by gently rubbing skin under cold running water. Cut beets into 1 1/2–inch chunks. Beets can be cooked and stored in the refrigerator for up to 5 days.

                   2. Place pistachios in a mortar and pound with pestle until lightly crushed but not totally pulverized. (You can also chop them with a knife.) Transfer half of nuts to a large bowl and reserve the rest for garnish.

                   3. Add grapefruit juice, orange juice, lemon juice, shallot, minced herbs, and honey to bowl with pistachios and whisk to combine. Drizzle in remaining 3 tablespoons (45ml) olive oil while whisking constantly. Season to taste with salt and pepper.

                   4. To Serve: Toss beets and citrus with vinaigrette in a large bowl (if using red beets, toss them separately from everything else) and season to taste with salt and pepper. Spread half of ricotta over a serving platter, place dressed beets and citrus on top, dollop with remaining ricotta, sprinkle with reserved pistachios, and serve.')

                  d4.ingredients.create!(title: 'beets, unpeeled, greens removed, scrubbed clean',
                                        quantity: '2',
                                        unit: 'lb')

                  d4.ingredients.create!(title: 'extra-virgin olive oil, divided',
                                        quantity: '1/4',
                                        unit: 'cup(s)')

                  d4.ingredients.create!(title: 'sprigs thyme or rosemary (optional)',
                                        quantity: '2')

                  d4.ingredients.create!(title: 'Kosher salt and freshly ground black pepper')

                  d4.ingredients.create!(title: 'toasted shelled pistachios',
                                        quantity: '1/4',
                                        unit: 'cup(s)')

                  d4.ingredients.create!(title: 'grapefruit, cut into suprèmes or wedges',
                                        quantity: '1')

                  d4.ingredients.create!(title: 'orange, cut into suprèmes or wedges',
                                        quantity: '1')

                  d4.ingredients.create!(title: 'juice from 1 lemon',
                                        quantity: '2',
                                        unit: 'tsp')

                  d4.ingredients.create!(title: 'small shallot, finely minced',
                                        quantity: '1')

                  d4.ingredients.create!(title: 'minced fresh parsley, tarragon, or chervil',
                                        quantity: '2',
                                        unit: 'tsp')

                  d4.ingredients.create!(title: 'honey',
                                        quantity: '1',
                                        unit: 'tbsp')

                  d4.ingredients.create!(title: 'fresh ricotta',
                                        quantity: '1/2',
                                        unit: 'cup(s)')

                  d4.comments.create!(body: 'This was amazing! I added parsley. YUM', user_id: u3.id)
                  d4.comments.create!(body: 'Needs more olive oil', user_id: u4.id)
                  d4.comments.create!(body: "I'll be making this one again.", user_id: u2.id)

                  d4.comments.create!(body: 'Pretty good, thanks for sharing!', user_id: u6.id)

  d5 = Recipe.create!(name: 'Macaroni and Cheese with Bacon, Leeks, and Thyme',
                     img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490242460/MTI1NjQ2NjcwNTk0NjEwNDUw_av3oun.jpg',
                     tag_id: d.id,
                     user_id: u6.id,
                     directions: '1. Preheat oven to 375°F (190°C). Fold a 12- by 24-inch sheet of aluminum foil in half to form a square. Crimp two edges to form a pouch. Toss beets, 1 tablespoon (15ml) olive oil, rosemary or thyme sprigs (if using), and salt and pepper to taste in a medium bowl until beets are coated. Add to pouch and crimp remaining edge to seal. (If using multiple colors of beets, roast in separate pouches.) Transfer to a rimmed baking sheet and place in oven. Roast until beets are completely tender and a toothpick or cake tester inserted into a beet through foil meets little to no resistance, about 1 1/2 hours. Remove from oven and allow to cool. When beets are cool enough to handle, peel by gently rubbing skin under cold running water. Cut beets into 1 1/2–inch chunks. Beets can be cooked and stored in the refrigerator for up to 5 days.

                     2. Place pistachios in a mortar and pound with pestle until lightly crushed but not totally pulverized. (You can also chop them with a knife.) Transfer half of nuts to a large bowl and reserve the rest for garnish.

                     3. Add grapefruit juice, orange juice, lemon juice, shallot, minced herbs, and honey to bowl with pistachios and whisk to combine. Drizzle in remaining 3 tablespoons (45ml) olive oil while whisking constantly. Season to taste with salt and pepper.

                     4. To Serve: Toss beets and citrus with vinaigrette in a large bowl (if using red beets, toss them separately from everything else) and season to taste with salt and pepper. Spread half of ricotta over a serving platter, place dressed beets and citrus on top, dollop with remaining ricotta, sprinkle with reserved pistachios, and serve.')

                    d5.ingredients.create!(title: 'beets, unpeeled, greens removed, scrubbed clean',
                                          quantity: '2',
                                          unit: 'lb')

                    d5.ingredients.create!(title: 'extra-virgin olive oil, divided',
                                          quantity: '1/4',
                                          unit: 'cup(s)')

                    d5.ingredients.create!(title: 'sprigs thyme or rosemary (optional)',
                                          quantity: '2')

                    d5.ingredients.create!(title: 'Kosher salt and freshly ground black pepper')

                    d5.ingredients.create!(title: 'toasted shelled pistachios',
                                          quantity: '1/4',
                                          unit: 'cup(s)')

                    d5.ingredients.create!(title: 'grapefruit, cut into suprèmes or wedges',
                                          quantity: '1')

                    d5.ingredients.create!(title: 'orange, cut into suprèmes or wedges',
                                          quantity: '1')

                    d5.ingredients.create!(title: 'juice from 1 lemon',
                                          quantity: '2',
                                          unit: 'tsp')

                    d5.ingredients.create!(title: 'small shallot, finely minced',
                                          quantity: '1')

                    d5.ingredients.create!(title: 'minced fresh parsley, tarragon, or chervil',
                                          quantity: '2',
                                          unit: 'tsp')

                    d5.ingredients.create!(title: 'honey',
                                          quantity: '1',
                                          unit: 'tbsp')

                    d5.ingredients.create!(title: 'fresh ricotta',
                                          quantity: '1/2',
                                          unit: 'cup(s)')

                    d5.comments.create!(body: 'This was amazing! I added parsley. YUM', user_id: u3.id)
                    d5.comments.create!(body: 'Needs more olive oil', user_id: u4.id)
                    d5.comments.create!(body: "I'll be making this one again.", user_id: u2.id)
                    d5.comments.create!(body: 'Pretty good, thanks for sharing!', user_id: u6.id)


  d7 = Recipe.create!(name: 'Tofu in Coconut Sauce with Ginger and Lemongrass',
                 img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490242604/Red-Coconut-Curry-Tofu-Plated-1_qiop2s.jpg',
                 tag_id: d.id,
                 user_id: u7.id,
                 directions: '1. Preheat oven to 375°F (190°C). Fold a 12- by 24-inch sheet of aluminum foil in half to form a square. Crimp two edges to form a pouch. Toss beets, 1 tablespoon (15ml) olive oil, rosemary or thyme sprigs (if using), and salt and pepper to taste in a medium bowl until beets are coated. Add to pouch and crimp remaining edge to seal. (If using multiple colors of beets, roast in separate pouches.) Transfer to a rimmed baking sheet and place in oven. Roast until beets are completely tender and a toothpick or cake tester inserted into a beet through foil meets little to no resistance, about 1 1/2 hours. Remove from oven and allow to cool. When beets are cool enough to handle, peel by gently rubbing skin under cold running water. Cut beets into 1 1/2–inch chunks. Beets can be cooked and stored in the refrigerator for up to 5 days.

                 2. Place pistachios in a mortar and pound with pestle until lightly crushed but not totally pulverized. (You can also chop them with a knife.) Transfer half of nuts to a large bowl and reserve the rest for garnish.

                 3. Add grapefruit juice, orange juice, lemon juice, shallot, minced herbs, and honey to bowl with pistachios and whisk to combine. Drizzle in remaining 3 tablespoons (45ml) olive oil while whisking constantly. Season to taste with salt and pepper.

                 4. To Serve: Toss beets and citrus with vinaigrette in a large bowl (if using red beets, toss them separately from everything else) and season to taste with salt and pepper. Spread half of ricotta over a serving platter, place dressed beets and citrus on top, dollop with remaining ricotta, sprinkle with reserved pistachios, and serve.')

                d7.ingredients.create!(title: 'beets, unpeeled, greens removed, scrubbed clean',
                                      quantity: '2',
                                      unit: 'lb')

                d7.ingredients.create!(title: 'extra-virgin olive oil, divided',
                                      quantity: '1/4',
                                      unit: 'cup(s)')

                d7.ingredients.create!(title: 'sprigs thyme or rosemary (optional)',
                                      quantity: '2')

                d7.ingredients.create!(title: 'Kosher salt and freshly ground black pepper')

                d7.ingredients.create!(title: 'toasted shelled pistachios',
                                      quantity: '1/4',
                                      unit: 'cup(s)')

                d7.ingredients.create!(title: 'grapefruit, cut into suprèmes or wedges',
                                      quantity: '1')

                d7.ingredients.create!(title: 'orange, cut into suprèmes or wedges',
                                      quantity: '1')

                d7.ingredients.create!(title: 'juice from 1 lemon',
                                      quantity: '2',
                                      unit: 'tsp')

                d7.ingredients.create!(title: 'small shallot, finely minced',
                                      quantity: '1')

                d7.ingredients.create!(title: 'minced fresh parsley, tarragon, or chervil',
                                      quantity: '2',
                                      unit: 'tsp')

                d7.ingredients.create!(title: 'honey',
                                      quantity: '1',
                                      unit: 'tbsp')

                d7.ingredients.create!(title: 'fresh ricotta',
                                      quantity: '1/2',
                                      unit: 'cup(s)')

                d7.comments.create!(body: 'This was amazing! I added parsley. YUM', user_id: u3.id)
                d7.comments.create!(body: 'Needs more olive oil', user_id: u4.id)
                d7.comments.create!(body: "I'll be making this one again.", user_id: u2.id)
                d7.comments.create!(body: 'Pretty good, thanks for sharing!', user_id: u6.id)

  d8 = Recipe.create!(name: 'Hearty Spinach and Sausage Soup',
                     img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490242706/IMG_1062_gxfozx.jpg',
                     tag_id: d.id,
                     user_id: u3.id,
                     directions: '1. Preheat oven to 375°F (190°C). Fold a 12- by 24-inch sheet of aluminum foil in half to form a square. Crimp two edges to form a pouch. Toss beets, 1 tablespoon (15ml) olive oil, rosemary or thyme sprigs (if using), and salt and pepper to taste in a medium bowl until beets are coated. Add to pouch and crimp remaining edge to seal. (If using multiple colors of beets, roast in separate pouches.) Transfer to a rimmed baking sheet and place in oven. Roast until beets are completely tender and a toothpick or cake tester inserted into a beet through foil meets little to no resistance, about 1 1/2 hours. Remove from oven and allow to cool. When beets are cool enough to handle, peel by gently rubbing skin under cold running water. Cut beets into 1 1/2–inch chunks. Beets can be cooked and stored in the refrigerator for up to 5 days.

                     2. Place pistachios in a mortar and pound with pestle until lightly crushed but not totally pulverized. (You can also chop them with a knife.) Transfer half of nuts to a large bowl and reserve the rest for garnish.

                     3. Add grapefruit juice, orange juice, lemon juice, shallot, minced herbs, and honey to bowl with pistachios and whisk to combine. Drizzle in remaining 3 tablespoons (45ml) olive oil while whisking constantly. Season to taste with salt and pepper.

                     4. To Serve: Toss beets and citrus with vinaigrette in a large bowl (if using red beets, toss them separately from everything else) and season to taste with salt and pepper. Spread half of ricotta over a serving platter, place dressed beets and citrus on top, dollop with remaining ricotta, sprinkle with reserved pistachios, and serve.')

                    d8.ingredients.create!(title: 'beets, unpeeled, greens removed, scrubbed clean',
                                          quantity: '2',
                                          unit: 'lb')

                    d8.ingredients.create!(title: 'extra-virgin olive oil, divided',
                                          quantity: '1/4',
                                          unit: 'cup(s)')

                    d8.ingredients.create!(title: 'sprigs thyme or rosemary (optional)',
                                          quantity: '2')

                    d8.ingredients.create!(title: 'Kosher salt and freshly ground black pepper')

                    d8.ingredients.create!(title: 'toasted shelled pistachios',
                                          quantity: '1/4',
                                          unit: 'cup(s)')

                    d8.ingredients.create!(title: 'grapefruit, cut into suprèmes or wedges',
                                          quantity: '1')

                    d8.ingredients.create!(title: 'orange, cut into suprèmes or wedges',
                                          quantity: '1')

                    d8.ingredients.create!(title: 'juice from 1 lemon',
                                          quantity: '2',
                                          unit: 'tsp')

                    d8.ingredients.create!(title: 'small shallot, finely minced',
                                          quantity: '1')

                    d8.ingredients.create!(title: 'minced fresh parsley, tarragon, or chervil',
                                          quantity: '2',
                                          unit: 'tsp')

                    d8.ingredients.create!(title: 'honey',
                                          quantity: '1',
                                          unit: 'tbsp')

                    d8.ingredients.create!(title: 'fresh ricotta',
                                          quantity: '1/2',
                                          unit: 'cup(s)')

                    d8.comments.create!(body: 'This was amazing! I added parsley. YUM', user_id: u3.id)
                    d8.comments.create!(body: 'Needs more olive oil', user_id: u4.id)
                    d8.comments.create!(body: "I'll be making this one again.", user_id: u2.id)
                    d8.comments.create!(body: 'Pretty good, thanks for sharing!', user_id: u6.id)

# appetizers
  a1 = Recipe.create!(name: 'Artichoke Hummus',
                     img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490212029/ff-artichoke-hummus-feature_l29jyr.jpg',
                     tag_id: a.id,
                     user_id: u1.id,
                     directions: 'In a food processor, combine garbanzo beans, artichoke hearts, garlic, tahini, lemon juice, and olive oil. Process until smooth, adding water to thin if necessary. Add salt and Sriracha (if using) to taste. Extra lemon juice or tahini may also be added to taste.

    Spoon hummus onto a plate, creating a bit of a well in the center. Drizzle with olive oil and garnish with fresh chopped parsley. Serve with your favorite flat bread, crackers, chips, or fresh vegetables.')

                     a1.ingredients.create!(title: 'can of garbanzo beans (chickpeas), drained and rinsed',
                                           quantity: '1')

                      a1.ingredients.create!(title: 'marinated artichoke hearts, drained and rinsed',
                                            quantity: '6',
                                            unit: 'oz')

                     a1.ingredients.create!(title: 'clove garlic, peeled and chopped or pressed',
                                           quantity: '1')

                    a1.ingredients.create!(title: 'tahini (sesame seed paste)',
                                          quantity: '2',
                                          unit: 'tbsp')

                     a1.ingredients.create!(title: 'juice of half a lemon (or more, to taste)')

                    a1.ingredients.create!(title: ' extra virgin olive oil',
                                          quantity: '2',
                                          unit: 'tbsp')

                    a1.ingredients.create!(title: 'cup water',
                                          quantity: '1/4',
                                          unit: 'cup(s)')

                    a1.ingredients.create!(title: 'kosher salt (or to taste)',
                                          quantity: '1/2',
                                          unit: 'tsp')

                    a1.ingredients.create!(title: 'small squirt of Sriracha (optional)',
                                          quantity: '1')

  a2 = Recipe.create!(name: 'Brushetta al Pomodoro',
                     img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490212107/maxresdefault_xhyfng.jpg',
                     tag_id: a.id,
                     user_id: u1.id,
                     directions: 'Mix together and enjoy')

                     a2.ingredients.create!(title: 'Cherry tomatoes, diced')

                      a2.ingredients.create!(title: 'Fresh garlic, minced')

                     a2.ingredients.create!(title: 'Fresh basil, minced')

                    a2.ingredients.create!(title: 'Crushed red pepper (just a pinch)')

                     a2.ingredients.create!(title: 'Extra virgin olive oil')

                    a2.ingredients.create!(title: 'Balsamic vinegar (just a dash)')

                    a2.ingredients.create!(title: 'Pinch of salt')

  a3 = Recipe.create!(name: 'Blood orange salad',
                     img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490212196/img_1773_c4pjza.jpg',
                     tag_id: a.id,
                     user_id: u1.id,
                     directions: '1. Peel and section oranges with a sharp knife, leaving the pith and membrane behind.

                      2. Arrange orange slices on a plate, drizzle with olive oil, then add a sprinkling of coarse salt.

                      3. Scatter some green olives over the plate and serve.')

                     a3.ingredients.create!(title: 'Blood oranges, one per person')

                      a3.ingredients.create!(title: 'Green olives, handful per person (preferably oil cured)')

                     a3.ingredients.create!(title: 'extra virgin olive oil')

                    a3.ingredients.create!(title: 'coarse salt')

  a4 = Recipe.create!(name: 'Easy Black Bean Dip',
                     img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490212272/Black-Bean-Dip_ootvwn.jpg',
                     tag_id: a.id,
                     user_id: u1.id,
                     directions: '1. Drain beans, reserving 2 tablespoons of liquid, then rinse in a strainer.

                      2. Add beans, reserved liquid, lemon juice and all remaining ingredients to a food processor, mini food processor or blender.

                      3. Process until smooth then taste and adjust seasonings as desired.

                      4. Serve with pita chips, corn chips, or your favorite crackers.

                      Make Chips:

                      1. Preheat oven to 450 degrees.

                      2. Using a basting brush, lightly coat both sides of pita with olive oil.

                      3. If using whole pita, cut each round in half then cut each half into four triangles. You should end up with 16 pieces.

                      4. Line a baking sheet with parchment (optional but makes clean up a breeze) then spread pita pieces out in a single layer. Sprinkle lightly with coarse salt. Turn pieces over and sprinkle the other sides lightly with salt.

                      5. Place baking sheet in oven and set timer for 5 minutes. Bake pita until the edges are brown and crisp, checking the first time at five minutes and then watching closely. Total baking time will be less than 10 minutes.

                      6. Remove from oven and let cool for a few minutes before serving.

                      7. Serve with your favorite dip.')

                     a4.ingredients.create!(title: 'whole rounds of whole wheat pita bread (or four halves)',
                                           quantity: '2')

                     a4.ingredients.create!(title: 'extra virgin olive oil')

                    a4.ingredients.create!(title: 'coarse salt')

                    a4.ingredients.create!(title: 'can black beans',
                                          quantity: '1')

                    a4.ingredients.create!(title: 'liquid from the can of beans',
                                          quantity: '2',
                                          unit: 'tbsp')

                    a4.ingredients.create!(title: 'onion powder',
                                          quantity: '1/4',
                                          unit: 'tsp')

                    a4.ingredients.create!(title: 'garlic powder',
                                          quantity: '1/4',
                                          unit: 'tsp')

a5 = Recipe.create!(name: 'Chili Garlic Corn Chips',
                   img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490395883/p1110489_mru1zp.jpg',
                   tag_id: a.id,
                   user_id: u7.id,
                   directions: 'Blend all ingredients until smooth using a hand blender or traditional blender. Drink immediately.')

                   a5.ingredients.create!(title: 'frozen banana',
                                         quantity: '1')

                    a5.ingredients.create!(title: 'whole milk',
                                          quantity: '1',
                                          unit: 'cup(s)')

                   a5.ingredients.create!(title: 'sugar',
                                         quantity: '1',
                                         unit: 'tbsp')

                  a5.ingredients.create!(title: 'tahini (sesame seed paste)',
                                        quantity: '1 - 2',
                                        unit: 'tbsp')

                   a5.ingredients.create!(title: 'vanilla extract',
                                          quantity: '1/8',
                                          unit: 'tsp')

a6 = Recipe.create!(name: 'Coconut Shrimp Poppers with Chili Mango Cream',
                   img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490395960/3673f370-34c2-4974-9ad2-8f0368df924d_rfj9zg.jpg',
                   tag_id: a.id,
                   user_id: u1.id,
                   directions: 'In a food processor, combine garbanzo beans, artichoke hearts, garlic, tahini, lemon juice, and olive oil. Process until smooth, adding water to thin if necessary. Add salt and Sriracha (if using) to taste. Extra lemon juice or tahini may also be added to taste.

  Spoon hummus onto a plate, creating a bit of a well in the center. Drizzle with olive oil and garnish with fresh chopped parsley. Serve with your favorite flat bread, crackers, chips, or fresh vegetables.')

                   a6.ingredients.create!(title: 'fresh-squeezed lemon juice',
                                         quantity: '1',
                                         unit: 'cup(s)')

                    a6.ingredients.create!(title: 'ice cubes')

                   a6.ingredients.create!(title: 'sugar',
                                         quantity: '3/4',
                                         unit: 'cup(s)')

                  a6.ingredients.create!(title: 'water',
                                        quantity: '4',
                                        unit: 'cup(s)')

                   a6.ingredients.create!(title: 'lemon slices')

a7 = Recipe.create!(name: 'Creamy Blue Cheese Dip with Lemon and Chives',
                  img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490396021/bluecheese_m8twag.jpg',
                  tag_id: a.id,
                  user_id: u1.id,
                  directions: 'In a food processor, combine garbanzo beans, artichoke hearts, garlic, tahini, lemon juice, and olive oil. Process until smooth, adding water to thin if necessary. Add salt and Sriracha (if using) to taste. Extra lemon juice or tahini may also be added to taste.

                     Spoon hummus onto a plate, creating a bit of a well in the center. Drizzle with olive oil and garnish with fresh chopped parsley. Serve with your favorite flat bread, crackers, chips, or fresh vegetables.')

                  a7.ingredients.create!(title: 'crushed ice',
                                        quantity: '2',
                                        unit: 'cup(s)')

                   a7.ingredients.create!(title: 'wedge of lime and coarse salt to rim the glass!')

                  a7.ingredients.create!(title: 'fresh-cut strawberries',
                                        quantity: '6')

                 a7.ingredients.create!(title: 'shot of lime juice',
                                       quantity: '1/4',
                                       unit: 'cup(s)')

                  a7.ingredients.create!(title: 'pinch of salt')

                  a7.ingredients.create!(title: 'pinch of sugar')

                  a7.ingredients.create!(title: 'shot of lime juice',
                                        quantity: '1/4',
                                        unit: 'cup(s)')

                   a7.ingredients.create!(title: 'shot of tequila',
                                          quantity: '3/4',
                                          unit: 'cup(s)')

                   a7.ingredients.create!(title: 'triple sec',
                                          quantity: '1/4',
                                          unit: 'cup(s)')

a8 = Recipe.create!(name: 'Kettle Corn',
                  img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490396103/Old-Fashioned-Kettle-Corn-1_ob4fng.jpg',
                  tag_id: a.id,
                  user_id: u1.id,
                  directions: 'Blend all ingredients until smooth using a hand blender or traditional blender.')

                  a8.ingredients.create!(title: 'whole milk',
                                        quantity: '1',
                                        unit: 'cup(s)')

                  a8.ingredients.create!(title: 'fresh-cut strawberry halves',
                                        quantity: '1',
                                        unit: 'cup(s)')

                 a8.ingredients.create!(title: 'sugar',
                                       quantity: '1-2',
                                       unit: 'tbsp')



# drinks
dr1 = Recipe.create!(name: 'Easy Banana Milkshake',
                   img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490237919/banana-date-tahini-smoothie-1_moklxz.jpg',
                   tag_id: dr.id,
                   user_id: u7.id,
                   directions: 'Blend all ingredients until smooth using a hand blender or traditional blender. Drink immediately.')

                   dr1.ingredients.create!(title: 'frozen banana',
                                         quantity: '1')

                    dr1.ingredients.create!(title: 'whole milk',
                                          quantity: '1',
                                          unit: 'cup(s)')

                   dr1.ingredients.create!(title: 'sugar',
                                         quantity: '1',
                                         unit: 'tbsp')

                  dr1.ingredients.create!(title: 'tahini (sesame seed paste)',
                                        quantity: '1 - 2',
                                        unit: 'tbsp')

                   dr1.ingredients.create!(title: 'vanilla extract',
                                          quantity: '1/8',
                                          unit: 'tsp')

dr2 = Recipe.create!(name: 'Fresh Lemonade',
                   img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490237624/lemonade2_qnz7xz.jpg',
                   tag_id: dr.id,
                   user_id: u1.id,
                   directions: 'In a food processor, combine garbanzo beans, artichoke hearts, garlic, tahini, lemon juice, and olive oil. Process until smooth, adding water to thin if necessary. Add salt and Sriracha (if using) to taste. Extra lemon juice or tahini may also be added to taste.

  Spoon hummus onto a plate, creating a bit of a well in the center. Drizzle with olive oil and garnish with fresh chopped parsley. Serve with your favorite flat bread, crackers, chips, or fresh vegetables.')

                   dr2.ingredients.create!(title: 'fresh-squeezed lemon juice',
                                         quantity: '1',
                                         unit: 'cup(s)')

                    dr2.ingredients.create!(title: 'ice cubes')

                   dr2.ingredients.create!(title: 'sugar',
                                         quantity: '3/4',
                                         unit: 'cup(s)')

                  dr2.ingredients.create!(title: 'water',
                                        quantity: '4',
                                        unit: 'cup(s)')

                   dr2.ingredients.create!(title: 'lemon slices')

dr3 = Recipe.create!(name: 'Fresh Strawberry Margaritas for Two',
                  img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490237764/Strawberry-Margaritas-5_tlr11k.jpg',
                  tag_id: dr.id,
                  user_id: u1.id,
                  directions: 'In a food processor, combine garbanzo beans, artichoke hearts, garlic, tahini, lemon juice, and olive oil. Process until smooth, adding water to thin if necessary. Add salt and Sriracha (if using) to taste. Extra lemon juice or tahini may also be added to taste.

                     Spoon hummus onto a plate, creating a bit of a well in the center. Drizzle with olive oil and garnish with fresh chopped parsley. Serve with your favorite flat bread, crackers, chips, or fresh vegetables.')

                  dr3.ingredients.create!(title: 'crushed ice',
                                        quantity: '2',
                                        unit: 'cup(s)')

                   dr3.ingredients.create!(title: 'wedge of lime and coarse salt to rim the glass!')

                  dr3.ingredients.create!(title: 'fresh-cut strawberries',
                                        quantity: '6')

                 dr3.ingredients.create!(title: 'shot of lime juice',
                                       quantity: '1/4',
                                       unit: 'cup(s)')

                  dr3.ingredients.create!(title: 'pinch of salt')

                  dr3.ingredients.create!(title: 'pinch of sugar')

                  dr3.ingredients.create!(title: 'shot of lime juice',
                                        quantity: '1/4',
                                        unit: 'cup(s)')

                   dr3.ingredients.create!(title: 'shot of tequila',
                                          quantity: '3/4',
                                          unit: 'cup(s)')

                   dr3.ingredients.create!(title: 'triple sec',
                                          quantity: '1/4',
                                          unit: 'cup(s)')

dr4 = Recipe.create!(name: 'Strawberry Milk',
                  img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490237827/homemade-strawberry-milk-DSC_2026_hmjeh1.jpg',
                  tag_id: dr.id,
                  user_id: u1.id,
                  directions: 'Blend all ingredients until smooth using a hand blender or traditional blender.')

                  dr4.ingredients.create!(title: 'whole milk',
                                        quantity: '1',
                                        unit: 'cup(s)')

                  dr4.ingredients.create!(title: 'fresh-cut strawberry halves',
                                        quantity: '1',
                                        unit: 'cup(s)')

                 dr4.ingredients.create!(title: 'sugar',
                                       quantity: '1-2',
                                       unit: 'tbsp')

dr5 = Recipe.create!(name: 'Lemon Drop',
                  img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490396344/Make-a-Lemon-Drop-Step-10_xdmd4s.jpg',
                  tag_id: dr.id,
                  user_id: u5.id,
                  directions: '1. Preheat oven to 375°F (190°C). Fold a 12- by 24-inch sheet of aluminum foil in half to form a square. Crimp two edges to form a pouch. Toss beets, 1 tablespoon (15ml) olive oil, rosemary or thyme sprigs (if using), and salt and pepper to taste in a medium bowl until beets are coated. Add to pouch and crimp remaining edge to seal. (If using multiple colors of beets, roast in separate pouches.) Transfer to a rimmed baking sheet and place in oven. Roast until beets are completely tender and a toothpick or cake tester inserted into a beet through foil meets little to no resistance, about 1 1/2 hours. Remove from oven and allow to cool. When beets are cool enough to handle, peel by gently rubbing skin under cold running water. Cut beets into 1 1/2–inch chunks. Beets can be cooked and stored in the refrigerator for up to 5 days.

                  2. Place pistachios in a mortar and pound with pestle until lightly crushed but not totally pulverized. (You can also chop them with a knife.) Transfer half of nuts to a large bowl and reserve the rest for garnish.

                  3. Add grapefruit juice, orange juice, lemon juice, shallot, minced herbs, and honey to bowl with pistachios and whisk to combine. Drizzle in remaining 3 tablespoons (45ml) olive oil while whisking constantly. Season to taste with salt and pepper.

                  4. To Serve: Toss beets and citrus with vinaigrette in a large bowl (if using red beets, toss them separately from everything else) and season to taste with salt and pepper. Spread half of ricotta over a serving platter, place dressed beets and citrus on top, dollop with remaining ricotta, sprinkle with reserved pistachios, and serve.')

                 dr5.ingredients.create!(title: 'beets, unpeeled, greens removed, scrubbed clean',
                                       quantity: '2',
                                       unit: 'lb')

                 dr5.ingredients.create!(title: 'extra-virgin olive oil, divided',
                                       quantity: '1/4',
                                       unit: 'cup(s)')

                 dr5.ingredients.create!(title: 'sprigs thyme or rosemary (optional)',
                                       quantity: '2')

                 dr5.ingredients.create!(title: 'Kosher salt and freshly ground black pepper')

                 dr5.ingredients.create!(title: 'toasted shelled pistachios',
                                       quantity: '1/4',
                                       unit: 'cup(s)')

                 dr5.ingredients.create!(title: 'grapefruit, cut into suprèmes or wedges',
                                       quantity: '1')

                 dr5.ingredients.create!(title: 'orange, cut into suprèmes or wedges',
                                       quantity: '1')

                 dr5.ingredients.create!(title: 'juice from 1 lemon',
                                       quantity: '2',
                                       unit: 'tsp')

                 dr5.ingredients.create!(title: 'small shallot, finely minced',
                                       quantity: '1')

                 dr5.ingredients.create!(title: 'minced fresh parsley, tarragon, or chervil',
                                       quantity: '2',
                                       unit: 'tsp')

                 dr5.ingredients.create!(title: 'honey',
                                       quantity: '1',
                                       unit: 'tbsp')

                 dr5.ingredients.create!(title: 'fresh ricotta',
                                       quantity: '1/2',
                                       unit: 'cup(s)')

                 dr5.comments.create!(body: 'This was amazing! I added parsley. YUM', user_id: u3.id)
                 dr5.comments.create!(body: 'Needs more olive oil', user_id: u4.id)
                 dr5.comments.create!(body: "I'll be making this one again.", user_id: u2.id)
                 dr5.comments.create!(body: 'Pretty good, thanks for sharing!', user_id: u6.id)

dr6 = Recipe.create!(name: 'Mojito Perfecto',
                  img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490396395/Mojito-de-frutas-de-la-pasi_C3_B3n_kmpgbl.jpg',
                  tag_id: dr.id,
                  user_id: u2.id,
                  directions: '1. Preheat oven to 375°F (190°C). Fold a 12- by 24-inch sheet of aluminum foil in half to form a square. Crimp two edges to form a pouch. Toss beets, 1 tablespoon (15ml) olive oil, rosemary or thyme sprigs (if using), and salt and pepper to taste in a medium bowl until beets are coated. Add to pouch and crimp remaining edge to seal. (If using multiple colors of beets, roast in separate pouches.) Transfer to a rimmed baking sheet and place in oven. Roast until beets are completely tender and a toothpick or cake tester inserted into a beet through foil meets little to no resistance, about 1 1/2 hours. Remove from oven and allow to cool. When beets are cool enough to handle, peel by gently rubbing skin under cold running water. Cut beets into 1 1/2–inch chunks. Beets can be cooked and stored in the refrigerator for up to 5 days.

                  2. Place pistachios in a mortar and pound with pestle until lightly crushed but not totally pulverized. (You can also chop them with a knife.) Transfer half of nuts to a large bowl and reserve the rest for garnish.

                  3. Add grapefruit juice, orange juice, lemon juice, shallot, minced herbs, and honey to bowl with pistachios and whisk to combine. Drizzle in remaining 3 tablespoons (45ml) olive oil while whisking constantly. Season to taste with salt and pepper.

                  4. To Serve: Toss beets and citrus with vinaigrette in a large bowl (if using red beets, toss them separately from everything else) and season to taste with salt and pepper. Spread half of ricotta over a serving platter, place dressed beets and citrus on top, dollop with remaining ricotta, sprinkle with reserved pistachios, and serve.')

                 dr6.ingredients.create!(title: 'beets, unpeeled, greens removed, scrubbed clean',
                                       quantity: '2',
                                       unit: 'lb')

                 dr6.ingredients.create!(title: 'extra-virgin olive oil, divided',
                                       quantity: '1/4',
                                       unit: 'cup(s)')

                 dr6.ingredients.create!(title: 'sprigs thyme or rosemary (optional)',
                                       quantity: '2')

                 dr6.ingredients.create!(title: 'Kosher salt and freshly ground black pepper')

                 dr6.ingredients.create!(title: 'toasted shelled pistachios',
                                       quantity: '1/4',
                                       unit: 'cup(s)')

                 dr6.ingredients.create!(title: 'grapefruit, cut into suprèmes or wedges',
                                       quantity: '1')

                 dr6.ingredients.create!(title: 'orange, cut into suprèmes or wedges',
                                       quantity: '1')

                 dr6.ingredients.create!(title: 'juice from 1 lemon',
                                       quantity: '2',
                                       unit: 'tsp')

                 dr6.ingredients.create!(title: 'small shallot, finely minced',
                                       quantity: '1')

                 dr6.ingredients.create!(title: 'minced fresh parsley, tarragon, or chervil',
                                       quantity: '2',
                                       unit: 'tsp')

                 dr6.ingredients.create!(title: 'honey',
                                       quantity: '1',
                                       unit: 'tbsp')

                 dr6.ingredients.create!(title: 'fresh ricotta',
                                       quantity: '1/2',
                                       unit: 'cup(s)')

                 dr6.comments.create!(body: 'This was amazing! I added parsley. YUM', user_id: u3.id)
                 dr6.comments.create!(body: 'Needs more olive oil', user_id: u4.id)
                 dr6.comments.create!(body: "I'll be making this one again.", user_id: u2.id)
                 dr6.comments.create!(body: 'Pretty good, thanks for sharing!', user_id: u6.id)

dr7 = Recipe.create!(name: 'Eggnog',
                        img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490396441/10758_best_eggnog_yt6zrw.jpg',
                        tag_id: dr.id,
                        user_id: u3.id,
                        directions: '1. Preheat oven to 375°F (190°C). Fold a 12- by 24-inch sheet of aluminum foil in half to form a square. Crimp two edges to form a pouch. Toss beets, 1 tablespoon (15ml) olive oil, rosemary or thyme sprigs (if using), and salt and pepper to taste in a medium bowl until beets are coated. Add to pouch and crimp remaining edge to seal. (If using multiple colors of beets, roast in separate pouches.) Transfer to a rimmed baking sheet and place in oven. Roast until beets are completely tender and a toothpick or cake tester inserted into a beet through foil meets little to no resistance, about 1 1/2 hours. Remove from oven and allow to cool. When beets are cool enough to handle, peel by gently rubbing skin under cold running water. Cut beets into 1 1/2–inch chunks. Beets can be cooked and stored in the refrigerator for up to 5 days.

                        2. Place pistachios in a mortar and pound with pestle until lightly crushed but not totally pulverized. (You can also chop them with a knife.) Transfer half of nuts to a large bowl and reserve the rest for garnish.

                        3. Add grapefruit juice, orange juice, lemon juice, shallot, minced herbs, and honey to bowl with pistachios and whisk to combine. Drizzle in remaining 3 tablespoons (45ml) olive oil while whisking constantly. Season to taste with salt and pepper.

                        4. To Serve: Toss beets and citrus with vinaigrette in a large bowl (if using red beets, toss them separately from everything else) and season to taste with salt and pepper. Spread half of ricotta over a serving platter, place dressed beets and citrus on top, dollop with remaining ricotta, sprinkle with reserved pistachios, and serve.')

                       dr7.ingredients.create!(title: 'beets, unpeeled, greens removed, scrubbed clean',
                                             quantity: '2',
                                             unit: 'lb')

                       dr7.ingredients.create!(title: 'extra-virgin olive oil, divided',
                                             quantity: '1/4',
                                             unit: 'cup(s)')

                       dr7.ingredients.create!(title: 'sprigs thyme or rosemary (optional)',
                                             quantity: '2')

                       dr7.ingredients.create!(title: 'Kosher salt and freshly ground black pepper')

                       dr7.ingredients.create!(title: 'toasted shelled pistachios',
                                             quantity: '1/4',
                                             unit: 'cup(s)')

                       dr7.ingredients.create!(title: 'grapefruit, cut into suprèmes or wedges',
                                             quantity: '1')

                       dr7.ingredients.create!(title: 'orange, cut into suprèmes or wedges',
                                             quantity: '1')

                       dr7.ingredients.create!(title: 'juice from 1 lemon',
                                             quantity: '2',
                                             unit: 'tsp')

                       dr7.ingredients.create!(title: 'small shallot, finely minced',
                                             quantity: '1')

                       dr7.ingredients.create!(title: 'minced fresh parsley, tarragon, or chervil',
                                             quantity: '2',
                                             unit: 'tsp')

                       dr7.ingredients.create!(title: 'honey',
                                             quantity: '1',
                                             unit: 'tbsp')

                       dr7.ingredients.create!(title: 'fresh ricotta',
                                             quantity: '1/2',
                                             unit: 'cup(s)')

                       dr7.comments.create!(body: 'This was amazing! I added parsley. YUM', user_id: u3.id)
                       dr7.comments.create!(body: 'Needs more olive oil', user_id: u4.id)
                       dr7.comments.create!(body: "I'll be making this one again.", user_id: u2.id)
                       dr7.comments.create!(body: 'Pretty good, thanks for sharing!', user_id: u6.id)

dr8 = Recipe.create!(name: 'Mimosa',
                  img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490396488/maxresdefault_qfkrbe.jpg',
                  tag_id: dr.id,
                  user_id: u4.id,
                  directions: '1. Preheat oven to 375°F (190°C). Fold a 12- by 24-inch sheet of aluminum foil in half to form a square. Crimp two edges to form a pouch. Toss beets, 1 tablespoon (15ml) olive oil, rosemary or thyme sprigs (if using), and salt and pepper to taste in a medium bowl until beets are coated. Add to pouch and crimp remaining edge to seal. (If using multiple colors of beets, roast in separate pouches.) Transfer to a rimmed baking sheet and place in oven. Roast until beets are completely tender and a toothpick or cake tester inserted into a beet through foil meets little to no resistance, about 1 1/2 hours. Remove from oven and allow to cool. When beets are cool enough to handle, peel by gently rubbing skin under cold running water. Cut beets into 1 1/2–inch chunks. Beets can be cooked and stored in the refrigerator for up to 5 days.

                  2. Place pistachios in a mortar and pound with pestle until lightly crushed but not totally pulverized. (You can also chop them with a knife.) Transfer half of nuts to a large bowl and reserve the rest for garnish.

                  3. Add grapefruit juice, orange juice, lemon juice, shallot, minced herbs, and honey to bowl with pistachios and whisk to combine. Drizzle in remaining 3 tablespoons (45ml) olive oil while whisking constantly. Season to taste with salt and pepper.

                  4. To Serve: Toss beets and citrus with vinaigrette in a large bowl (if using red beets, toss them separately from everything else) and season to taste with salt and pepper. Spread half of ricotta over a serving platter, place dressed beets and citrus on top, dollop with remaining ricotta, sprinkle with reserved pistachios, and serve.')

                 dr8.ingredients.create!(title: 'beets, unpeeled, greens removed, scrubbed clean',
                                       quantity: '2',
                                       unit: 'lb')

                 dr8.ingredients.create!(title: 'extra-virgin olive oil, divided',
                                       quantity: '1/4',
                                       unit: 'cup(s)')

                 dr8.ingredients.create!(title: 'sprigs thyme or rosemary (optional)',
                                       quantity: '2')

                 dr8.ingredients.create!(title: 'Kosher salt and freshly ground black pepper')

                 dr8.ingredients.create!(title: 'toasted shelled pistachios',
                                       quantity: '1/4',
                                       unit: 'cup(s)')

                 dr8.ingredients.create!(title: 'grapefruit, cut into suprèmes or wedges',
                                       quantity: '1')

                 dr8.ingredients.create!(title: 'orange, cut into suprèmes or wedges',
                                       quantity: '1')

                 dr8.ingredients.create!(title: 'juice from 1 lemon',
                                       quantity: '2',
                                       unit: 'tsp')

                 dr8.ingredients.create!(title: 'small shallot, finely minced',
                                       quantity: '1')

                 dr8.ingredients.create!(title: 'minced fresh parsley, tarragon, or chervil',
                                       quantity: '2',
                                       unit: 'tsp')

                 dr8.ingredients.create!(title: 'honey',
                                       quantity: '1',
                                       unit: 'tbsp')

                 dr8.ingredients.create!(title: 'fresh ricotta',
                                       quantity: '1/2',
                                       unit: 'cup(s)')

                 dr8.comments.create!(body: 'This was amazing! I added parsley. YUM', user_id: u3.id)
                 dr8.comments.create!(body: 'Needs more olive oil', user_id: u4.id)
                 dr8.comments.create!(body: "I'll be making this one again.", user_id: u2.id)
                 dr8.comments.create!(body: 'Pretty good, thanks for sharing!', user_id: u6.id)
