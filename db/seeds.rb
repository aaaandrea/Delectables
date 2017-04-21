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
                    user_id: u6.id,
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
                    user_id: u7.id)



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
                   directions: 'In a small bowl, combine, cinnamon, nutmeg, and sugar and set aside briefly.

                  In a 10-inch or 12-inch skillet, melt butter over medium heat. Whisk together cinnamon mixture, eggs, milk, and vanilla and pour into a shallow container such as a pie plate. Dip bread in egg mixture. Fry slices until golden brown, then flip to cook the other side. Serve with syrup.')

b7.ingredients.create!(title: 'ground cinnamon', quantity: '1', unit: 'tsp')
b7.ingredients.create!(title: 'ground nutmeg', quantity: '1/4', unit: 'tsp(s)')
b7.ingredients.create!(title: 'sugar', quantity: '2', unit: 'tbsp')
b7.ingredients.create!(title: 'butter', quantity: '4', unit: 'tbsp')
b7.ingredients.create!(title: 'eggs', quantity: '4')
b7.ingredients.create!(title: 'milk', quantity: '1/4', unit: 'cup(s)')
b7.ingredients.create!(title: 'vanilla extract', quantity: '1/2', unit: 'tsp')
b7.ingredients.create!(title: 'slices brioche or white bread', quantity: '8')
b7.ingredients.create!(title: 'syrup', quantity: '1/2', unit: 'cup(s)')

b7.comments.create!(body: 'This is my favorite breakfast food.', user_id: u3.id)
b7.comments.create!(body: 'All a part of a complete breakfast', user_id: u4.id)
b7.comments.create!(body: "Add berries on the side, sooo goooooood", user_id: u2.id)
b7.comments.create!(body: 'Classic', user_id: u6.id)

# lunch
l1 = Recipe.create!(name: 'Roasted Beet and Citrus Salad With Ricotta and Pistachio Vinaigrette',
                     img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490200193/Chicory-Salad-11_upafzl.jpg',
                     tag_id: l.id,
                     user_id: u1.id,
                     directions: '1. Preheat oven to 375°F (190°C). Fold a 12- by 24-inch sheet of aluminum foil in half to form a square. Crimp two edges to form a pouch. Toss beets, 1 tablespoon (15ml) olive oil, rosemary or thyme sprigs (if using), and salt and pepper to taste in a medium bowl until beets are coated. Add to pouch and crimp remaining edge to seal. (If using multiple colors of beets, roast in separate pouches.) Transfer to a rimmed baking sheet and place in oven. Roast until beets are completely tender and a toothpick or cake tester inserted into a beet through foil meets little to no resistance, about 1 1/2 hours. Remove from oven and allow to cool. When beets are cool enough to handle, peel by gently rubbing skin under cold running water. Cut beets into 1 1/2–inch chunks. Beets can be cooked and stored in the refrigerator for up to 5 days.

                     2. Place pistachios in a mortar and pound with pestle until lightly crushed but not totally pulverized. (You can also chop them with a knife.) Transfer half of nuts to a large bowl and reserve the rest for garnish.

                     3. Add grapefruit juice, orange juice, lemon juice, shallot, minced herbs, and honey to bowl with pistachios and whisk to combine. Drizzle in remaining 3 tablespoons (45ml) olive oil while whisking constantly. Season to taste with salt and pepper.

                     4. To Serve: Toss beets and citrus with vinaigrette in a large bowl (if using red beets, toss them separately from everything else) and season to taste with salt and pepper. Spread half of ricotta over a serving platter, place dressed beets and citrus on top, dollop with remaining ricotta, sprinkle with reserved pistachios, and serve.')

l1.ingredients.create!(title: 'beets, unpeeled, greens removed, scrubbed clean', quantity: '2', unit: 'lb')
l1.ingredients.create!(title: 'extra-virgin olive oil, divided', quantity: '1/4', unit: 'cup(s)')
l1.ingredients.create!(title: 'sprigs thyme or rosemary (optional)', quantity: '2')
l1.ingredients.create!(title: 'Kosher salt and freshly ground black pepper')
l1.ingredients.create!(title: 'toasted shelled pistachios', quantity: '1/4', unit: 'cup(s)')
l1.ingredients.create!(title: 'grapefruit, cut into suprèmes or wedges', quantity: '1')
l1.ingredients.create!(title: 'orange, cut into suprèmes or wedges', quantity: '1')
l1.ingredients.create!(title: 'juice from 1 lemon', quantity: '2', unit: 'tsp')
l1.ingredients.create!(title: 'small shallot, finely minced', quantity: '1')
l1.ingredients.create!(title: 'minced fresh parsley, tarragon, or chervil', quantity: '2', unit: 'tsp')
l1.ingredients.create!(title: 'honey', quantity: '1', unit: 'tbsp')
l1.ingredients.create!(title: 'fresh ricotta', quantity: '1/2', unit: 'cup(s)')


l1.comments.create!(body: 'More beets really', user_id: u3.id)
l1.comments.create!(body: 'I switched the pistachios out for almonds. Delectable', user_id: u4.id)
l1.comments.create!(body: "I just love anything with beets.", user_id: u2.id)
l1.comments.create!(body: 'The citrus makes this', user_id: u6.id)



l2 = Recipe.create!(name: 'Curry Artichoke Rice Salad',
                    img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490241554/curry-rice-salad-a_dv9jeh.jpg',
                    tag_id: l.id,
                    user_id: u1.id,
                    directions: 'Cook Rice as directed on box, but brown using olive oil, instead of butter.
                              Mix Mayonnaise, curry powder and reserved marinade together, and set aside.
                              Combine cooked Rice-a-Roni, artichoke hearts, olives, green onions and bell pepper.
                              Pour mayonnaise mixture over rice mix.
                              Stir to coat.
                              Refrigerate until serving.
                              Enjoy!')

l2.ingredients.create!(title: 'chicken rice-a-roni', quantity: '10', unit: 'oz')
l2.ingredients.create!(title: 'extra-virgin olive oil, divided', quantity: '2', unit: 'tbsp')
l2.ingredients.create!(title: '(6 ounce) jars marinated artichoke hearts, chopped, reserve liquid', quantity: '2')
l2.ingredients.create!(title: 'green bell pepper, diced', quantity: '1/2')
l2.ingredients.create!(title: 'green onions, chopped both white and green parts', quantity: '4')
l2.ingredients.create!(title: 'pimento-stuffed green olives, sliced thin', quantity: '15')
l2.ingredients.create!(title: 'curry powder', quantity: '1', unit: 'tbsp')
l2.ingredients.create!(title: 'mayo', quantity: '1/3', unit: 'cup(s)')

l2.comments.create!(body: '10/10 will make again.', user_id: u3.id)
l2.comments.create!(body: 'Anything with Rice-a-Roni really.', user_id: u4.id)
l2.comments.create!(body: "The curry definitely makes this.", user_id: u2.id)
l2.comments.create!(body: 'So easy, and plenty of leftovers!', user_id: u6.id)




l3 = Recipe.create!(name: 'Grilled Corn, Mango and Jicama Salad with Honey Vinaigrette',
                   img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490241628/Salad-Creole-green-salad-baby-arugula-and-baby-greens-roast-fennel-naval-and-blood-oranges-candied-cayenne-pecans-goat-cheese-in-creole-mustard-vinaigrette.-Accompanied-a-Cajun-menu_s7yvxb.jpg',
                   tag_id: l.id,
                   user_id: u1.id,
                   directions: 'In a large bowl, combine all ingredients and toss well. Salad can be served immediately at room temperature. In a small bowl, whisk together honey, vinegar and salt. While whisking steadily, add the oil in a slow steady stream until it’s all incorporated.')

l3.ingredients.create!(title: 'Kernels from 3 ears of grilled sweet corn')
l3.ingredients.create!(title: 'medium jicama, peeled and sliced into matchsticks', quantity: '1')
l3.ingredients.create!(title: 'small mangoes, cubed', quantity: '3')
l3.ingredients.create!(title: 'avocado, diced', quantity: '1')
l3.ingredients.create!(title: 'minced jalapeño pepper', quantity: '1', unit: 'tbsp')
l3.ingredients.create!(title: 'chopped cilantro', quantity: '1/4', unit: 'cup(s)')
l3.ingredients.create!(title: 'salt', quantity: '1/4', unit: 'tsp')
l3.ingredients.create!(title: 'apple cider vinegar', quantity: '2', unit: 'tbsp')
l3.ingredients.create!(title: 'honey', quantity: '2', unit: 'tbsp')
l3.ingredients.create!(title: 'canola oil', quantity: '1/3', unit: 'cup(s)')

l3.comments.create!(body: 'This was amazing! I added parsley. YUM', user_id: u3.id)
l3.comments.create!(body: 'Needs more olive oil', user_id: u4.id)
l3.comments.create!(body: "I'll be making this one again.", user_id: u2.id)
l3.comments.create!(body: 'Pretty good, thanks for sharing!', user_id: u6.id)






l4 = Recipe.create!(name: 'Orange Cranberry Green Salad with Walnuts and Blue Cheese',
                   img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490241751/green-salad-with-cranberries_ubfres.jpg',
                   tag_id: l.id,
                   user_id: u4.id,
                   directions: '1. Wash and dry lettuce, tear into manageable pieces and put in salad bowl.
                   2. Using a knife and working over a bowl to catch the juice, peel and section oranges, tossing the orange slices onto the salad as you free each one.
                   3. As you finish each orange, squeeze juice from whatever orange flesh is left on the peel and from the handful of membrane you should have left over. Set bowl of juice aside.
                   4. Add the cranberries, walnuts and blue cheese to the salad then place in refrigerator while you make the dressing.
                   5. Measure out four tablespoons of orange juice into a small mixing bowl. Add vinegar and garlic then slowly whisk in the four tablespoons of oil.
                   6. Season dressing with salt and pepper to taste.
                   7. Just before serving, add desired amount of dressing to salad (you’ll probably have some left over) and toss well.
                   8. Enjoy!')


l4.ingredients.create!(title: 'head of Butter, Boston or Bibb lettuce', quantity: '1')
l4.ingredients.create!(title: 'oranges, peeled and sectioned', quantity: '4')
l4.ingredients.create!(title: 'handful of sweetened, dried cranberries')
l4.ingredients.create!(title: 'handful of toasted walnuts')
l4.ingredients.create!(title: 'crumbled blue cheese')
l4.ingredients.create!(title: 'fresh orange juice', quantity: '4', unit: 'tbsp')
l4.ingredients.create!(title: 'white wine vinegar', quantity: '1', unit: 'tbsp')
l4.ingredients.create!(title: 'clove garlic', quantity: '1')
l4.ingredients.create!(title: 'olive oil', quantity: '4', unit: 'tbsp')
l4.ingredients.create!(title: 'pinch of salt')
l4.ingredients.create!(title: 'pinch of pepper')


l4.comments.create!(body: 'I left out the blue cheese and it was way better', user_id: u3.id)
l4.comments.create!(body: 'You just really have to love citrus for this one', user_id: u4.id)
l4.comments.create!(body: "I'll be making this one again.", user_id: u2.id)
l4.comments.create!(body: 'I left out the cranberries, and used half the citrus, and it was great!', user_id: u6.id)




l5 = Recipe.create!(name: 'Spicy Pumpkin Soup with Cilantro Pepita Pesto',
                   img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490241818/CvEkhpVUAAA5oYG_glmzax.jpg',
                   tag_id: l.id,
                   user_id: u3.id,
                   directions: '1. Heat olive oil in a large pot or dutch oven over medium-low heat.
                    2. Add onions and celery and cook, stirring occasionally for about ten minutes or until vegetables are softened.
                    3. Add serrano chiles and garlic and cook, stirring, for another couple minutes.
                    4. Add smoked paprika and cumin and cook, stirring, for 30 seconds.
                    5. Add piquillo peppers, roasted pumpkin, chicken stock, and honey. Turn up heat, stir, and bring to a boil. Reduce heat and let soup simmer, stirring occasionally, for about 30 minutes.
                    6. Puree soup in batches in a blender or in the pot using an immersion blender. Return soup to the pot (if you used a blender) and stir in the cream. Add the lime juice and salt to taste (I used a little more than a teaspoon of salt). Reheat over low heat before serving.
                    7. Garnish with Cilantro Pepita Pesto (recipe below), fresh pomegranate arils, and crumbled cotija cheese (may substitute feta). Serve with fresh lime wedges and pesto.')

l5.ingredients.create!(title: 'olive oil', quantity: '2', unit: 'tbsp')
l5.ingredients.create!(title: 'medium onion, chopped', quantity: '1')
l5.ingredients.create!(title: 'stalk celery, chopped', quantity: '1')
l5.ingredients.create!(title: 'handful of toasted walnuts')
l5.ingredients.create!(title: 'serrano chiles, chopped', quantity: '2')
l5.ingredients.create!(title: 'garlic cloves, minced', quantity: '2')
l5.ingredients.create!(title: 'smoked paprika', quantity: '1', unit: 'tsp')
l5.ingredients.create!(title: 'clove garlic', quantity: '1')
l5.ingredients.create!(title: 'cumin seeds, toasted and ground', quantity: '1', unit: 'tsp')
l5.ingredients.create!(title: 'roasted piquillo peppers', quantity: '4')
l5.ingredients.create!(title: 'fresh roasted pumpkin', quantity: '4', unit: 'cup(s)')
l5.ingredients.create!(title: 'chicken stock', quantity: '4', unit: 'cup(s)')
l5.ingredients.create!(title: 'honey', quantity: '1', unit: 'tsp')
l5.ingredients.create!(title: 'heavy cream', quantity: '3/4', unit: 'cup(s)')
l5.ingredients.create!(title: 'juice of one lime')
l5.ingredients.create!(title: 'salt to taste')
l5.ingredients.create!(title: 'pomegranate arils')
l5.ingredients.create!(title: 'cotija cheese')


l5.comments.create!(body: 'The pesto was a nice add', user_id: u3.id)
l5.comments.create!(body: 'Finally something new to do with all these pumpkins', user_id: u4.id)
l5.comments.create!(body: "My kind of soup! So savory.", user_id: u2.id)
l5.comments.create!(body: 'Genius. The pesto and cheese topping really make it', user_id: u6.id)





l6 = Recipe.create!(name: 'Roasted Autumn Vegetable Chowder',
               img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490241911/cornchowder5_ya37vl.jpg',
               tag_id: l.id,
               user_id: u1.id,
               directions: 'Roast at 400 degrees, stirring occasionally, until veggies are tender and slightly browned (about 30 minutes).
                In a large saucepan, heat two tablespoons of butter over medium heat, then add:

                1/2 onion, diced,
                one carrot, diced,
                one celery stalk, diced.

                Cook, stirring for about five minutes or so then add the roasted vegetables, making sure to scrape out all the liquid with a spatula. Next, add three more cups of vegetable broth. Bring to a simmer, then puree with and immersion blender, leaving it just a bit chunky.
                Add one cup of milk and one cup of defrosted frozen corn, and heat through.  Season with salt and freshly ground pepper to taste.  Finally, add a tablespoon or two of hot sauce, to taste (I used Cholula).')

l6.ingredients.create!(title: 'small russet potatoes, peeled and cut in chunks', quantity: '3')
l6.ingredients.create!(title: 'sweet potato, peeled and cut in chunks', quantity: '1')
l6.ingredients.create!(title: 'small head of cauliflower, cut in chunks', quantity: '1')
l6.ingredients.create!(title: 'head of broccoli, cut in chunks', quantity: '1/2')
l6.ingredients.create!(title: 'leeks, white part only, rinsed well and sliced', quantity: '2')
l6.ingredients.create!(title: 'onion, cut in chunks', quantity: '1')
l6.ingredients.create!(title: 'large garlic cloves, peeled', quantity: '3')
l6.ingredients.create!(title: 'olive oil', quantity: '3', unit: 'tbsp')
l6.ingredients.create!(title: 'dried thyme', quantity: '1', unit: 'tsp')
l6.ingredients.create!(title: 'dried sage', quantity: '1/2', unit: 'tsp')
l6.ingredients.create!(title: 'coriander powder', quantity: '1/2', unit: 'tsp')
l6.ingredients.create!(title: 'large pinch of koscher salt and black pepper')

l6.comments.create!(body: 'Totally vegetarian <3', user_id: u3.id)
l6.comments.create!(body: 'I added a lot more sage.', user_id: u4.id)
l6.comments.create!(body: "GET ME TO THE CHOWDA!", user_id: u2.id)
l6.comments.create!(body: 'use fresh herbs always', user_id: u6.id)





  l7 = Recipe.create!(name: 'Potato Leek Soup',
                 img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490242014/Skinny-Crockpot-Potato-Leek-Soup_sy8jwh.jpg',
                 tag_id: l.id,
                 user_id: u2.id,
                 directions: 'Melt the butter over medium heat in a large soup pot. Add the leeks and garlic and cook, stirring regularly, until soft and wilted, about 10 minutes. Adjust the heat as necessary so as not to brown.
                  Add the potatoes, stock, bay leaves, thyme, salt and pepper to pot and bring to a boil. Cover and turn the heat down to low. Simmer for 15 minutes, or until the potatoes are very soft.
                  Fish out the thyme sprig and bay leaves, then purée the soup with a hand-held immersion blender until smooth. (Alternatively, use a standard blender to purée the soup in batches; see note.) Add the heavy cream and bring to a simmer. Taste and adjust seasoning with salt and pepper. If soup is too thin, simmer until thickened. If it\'s too thick, add water or stock to thin it out. Garnish with fresh herbs if desired.
                  Note: If using a standard blender to purée the soup: be sure not to fill the jar more than halfway; leave the hole in the lid open and cover loosely with a dishtowel to allow the heat to escape; and pour blended soup into a clean pot.')


l7.ingredients.create!(title: 'unsalted butter', quantity: '3', unit: 'tbsp')
l7.ingredients.create!(title: 'Yukon Gold potatoes, peeled and roughly chopped into 1/2-inch pieces', quantity: '2', unit: 'lb')
l7.ingredients.create!(title: 'leeks, white and light green parts only, roughly chopped', quantity: '4')
l7.ingredients.create!(title: 'low sodium chicken or vegetable broth (best quality such as Swanson)', quantity: '7', unit: 'cup(s)')
l7.ingredients.create!(title: 'bay leaves', quantity: '2')
l7.ingredients.create!(title: 'sprig fresh thyme, plus more for garnish if desired', quantity: '1')
l7.ingredients.create!(title: 'salt', quantity: '1', unit: 'tsp')
l7.ingredients.create!(title: 'pepper', quantity: '1/4', unit: 'tsp')
l7.ingredients.create!(title: 'heavy cream', quantity: '1', unit: 'cup(s)')
l7.ingredients.create!(title: 'Chives, finely chopped (optional)')

l7.comments.create!(body: 'In my mind thyme is not optional.', user_id: u3.id)
l7.comments.create!(body: 'Thyme will never tell', user_id: u4.id)
l7.comments.create!(body: "Po-Tay-Toes.", user_id: u2.id)
l7.comments.create!(body: 'So salty!', user_id: u6.id)


l8 = Recipe.create!(name: 'B.L.A.T. Sandwich with Spicy Chipotle Mayonnaise',
                   img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490242125/BLTA-bacon-lettuce-tomato-sandwich-toast-avocado-5_lkfvzm.jpg',
                   tag_id: l.id,
                   user_id: u1.id,
                   directions: 'Although my favorite sandwich has always been a Bacon, Lettuce and Tomato (BLT), this Bacon, Lettuce, Avocado, and Turkey Sandwich (BLAT). might have just taken over the top spot! I know that B.L.A.T. often stands for Bacon, Lettuce, Avocado, and Tomato, but I didn’t have any good tomatoes!  And since this was my dinner last night, the turkey is what made it more substantial.

                  First, I buttered and grilled a couple slices of sourdough bread (one side only) in my cast iron skillet.  Then I spread the inside of each slice with a generous amount of Spicy Chipotle Mayo (recipe below) before piling on the ingredients.  Sliced oven-roasted turkey breast, applewood smoked bacon, sliced avocado, and some red leaf lettuce were my ingredients of choice.
                  Although this is not an uncommon sandwich, I had never tried it on grilled sourdough, and this was the first time I’ve used a chipotle mayonnaise.  YUM!  File this one away for your leftover Thanksgiving turkey!

                  Now, I didn’t make the mayo from scratch so this is a simple condiment you can whip up in less than five minutes if you have the ingredients.  I used chipotle chili powder rather than chipotle en adobo, because that’s what was in my pantry last night.  Chipotle chili powder is a great thing to keep on hand for when you want to add a bit of chipotle flavor but don’t want to open a whole can of chiles.
                  Whisk all ingredients together in a small bowl.  Enjoy on your favorite sandwich or use as a dipping sauce.')

l8.ingredients.create!(title: 'Bread, bacon, lettuce, tomato')
l8.ingredients.create!(title: 'mayo', quantity: '2', unit: 'tbsp')
l8.ingredients.create!(title: 'chipotle chile powder', quantity: '1/4', unit: 'tsp')
l8.ingredients.create!(title: 'lime juice', quantity: '1', unit: 'tsp')
l8.ingredients.create!(title: 'chopped herbs(parsley or cilantro)', quantity: '2', unit: 'tsp')

l8.comments.create!(body: 'So simple!', user_id: u3.id)
l8.comments.create!(body: 'I\'ll stick with the classic', user_id: u4.id)
l8.comments.create!(body: "I'll be making this one again.", user_id: u2.id)
l8.comments.create!(body: 'I made it WITH FOCCACIA!', user_id: u6.id)


# dinner
d1 = Recipe.create!(name: 'Chicken Bolognese with Tagliatelle',
                   img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490200498/ElCerrito_ThePasta2-superJumbo_gqatvi.jpg',
                   tag_id: d.id,
                   user_id: u3.id,
                   directions: 'Heat a large skillet over medium-high. Swirl in oil. Add onion, celery, and carrots; season with salt and pepper. Cook, stirring, until softened, 5 to 7 minutes. Add chicken; season with salt and pepper. Cook, breaking into bite-size pieces, until no longer pink, 3 to 4 minutes. Stir in tomato paste; cook 2 minutes. Add wine; boil until almost evaporated, 1 to 2 minutes. Add milk and tomatoes; reduce heat and simmer until thickened, 12 to 15 minutes. Cook pasta in a large pot of salted water. Drain, reserving 1 cup pasta water; return to pot. Add sauce, then pasta water, a little at a time, until sauce evenly coats pasta. Drizzle with oil and top with celery leaves, cheese, and a pinch of nutmeg; serve.')

d1.ingredients.create!(title: 'celery stalk, finely chopped (plus leaves for serving)', quantity: '1', unit: 'cup')
d1.ingredients.create!(title: 'medium carrots, peeled and finely chopped', quantity: '2', unit: 'cup(s)')
d1.ingredients.create!(title: 'course salt and freshly ground pepper', quantity: 'to taste')
d1.ingredients.create!(title: 'ground chicken', quantity: '1', unit: 'lb')
d1.ingredients.create!(title: 'tomato paste', quantity: '3', unit: 'tbsp')
d1.ingredients.create!(title: 'dry white wine (eg. Sauvignon Blanc)', quantity: '1/2', unit: 'cup(s)')
d1.ingredients.create!(title: 'whole milk', quantity: '3/4', unit: 'cup(s)')
d1.ingredients.create!(title: 'whole milk', quantity: '3/4', unit: 'cup(s)')
d1.ingredients.create!(title: 'whole peeled tomatoes (can), pureed', quantity: '14.5', unit: 'oz')
d1.ingredients.create!(title: 'tagliatelle, pappardelle, or fettuccine', quantity: '1', unit: 'lb')
d1.ingredients.create!(title: 'Freshly grated Parmesan and nutmeg for servind')

d1.comments.create!(body: 'This was amazing! I added parsley. YUM', user_id: u3.id)
d1.comments.create!(body: 'Needs more olive oil', user_id: u4.id)
d1.comments.create!(body: "I'll be making this one again.", user_id: u2.id)
d1.comments.create!(body: 'Pretty good, thanks for sharing!', user_id: u6.id)

  d2 = Recipe.create!(name: 'Paella with Tomatoes',
                     img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490242201/paella_ui10c8.jpg',
                     tag_id: d.id,
                     user_id: u1.id,
                     directions: 'Preheat oven to 450 degrees. Warm stock or water in a saucepan. Put tomatoes in a medium bowl, sprinkle with salt and pepper, and drizzle them with 1 tablespoon olive oil. Toss to coat.
                      Put remaining oil in a 10- or 12-inch ovenproof skillet over medium-high heat. Add onion and garlic, sprinkle with salt and pepper, and cook, stirring occasionally, until vegetables soften, 3 to 5 minutes. Stir in tomato paste, saffron if you are using it, and paprika and cook for a minute more. Add rice and cook, stirring occasionally, until it is shiny, another minute or two. Add liquid and stir until just combined.
                      Put tomato wedges on top of rice and drizzle with juices that accumulated in bottom of bowl. Put pan in oven and roast, undisturbed, for 15 minutes. Check to see if rice is dry and just tender. If not, return pan to oven for another 5 minutes. If rice looks too dry but still is not quite done, add a small amount of stock or water (or wine). When rice is ready, turn off oven and let pan sit for 5 to 15 minutes.
                      Remove pan from oven and sprinkle with parsley. If you like, put pan over high heat for a few minutes to develop a bit of a bottom crust before serving.')

d2.ingredients.create!(title: 'stock/water', quantity: '3', unit: 'cup(s)')
d2.ingredients.create!(title: 'tomatoes, cored and cut into thick wedges', quantity: '1 1/2', unit: 'lb')
d2.ingredients.create!(title: 'Kosher salt and freshly ground black pepper')
d2.ingredients.create!(title: 'extra-virgin olive oil', quantity: '1/4', unit: 'cup(s)')
d2.ingredients.create!(title: 'medium onion, minced', quantity: '1')
d2.ingredients.create!(title: 'minced garlic', quantity: '1', unit: 'tbsp')
d2.ingredients.create!(title: 'tomato paste', quantity: '1', unit: 'tbsp')
d2.ingredients.create!(title: 'large pinch saffron threads')
d2.ingredients.create!(title: 'Spanish pimenton (smoked paprika)', quantity: '2', unit: 'tsp')
d2.ingredients.create!(title: 'Spanish, or other short-grain rice', quantity: '2', unit: 'cup(s)')
d2.ingredients.create!(title: 'minced parsley for garnish')

d2.comments.create!(body: 'Vegetarian paella, finally!', user_id: u3.id)
d2.comments.create!(body: 'needs protein...', user_id: u4.id)
d2.comments.create!(body: "I just really like tomatoes.", user_id: u2.id)
d2.comments.create!(body: 'Definitely worth the saffron', user_id: u6.id)

  d3 = Recipe.create!(name: 'Spice Rubbed Flank Steak',
                     img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490242285/1427695310729_cat1dd.jpg',
                     tag_id: d.id,
                     user_id: u1.id,
                     directions: 'Mash garlic and ginger to a paste with salt and spices using a mortar and pestle (or mince and mash with a large knife). Pat steak dry, then rub paste all over and marinate steak, covered and chilled, at least 8 hours.
                    Prepare grill for cooking.
                    Bring steak to room temperature (do not leave out longer than 1 hour). When fire is hot (you can hold your hand 5 inches above rack 1 to 2 seconds), grill steak on lightly oiled grill rack 5 to 8 minutes on each side for medium-rare. Transfer steak to a cutting board and let stand 10 minutes.
                    Holding knife at a 45-degree angle, cut steak across the grain into thin slices.')

d3.ingredients.create!(title: 'garlic cloves, large', quantity: '2')
d3.ingredients.create!(title: 'fresh ginger, grated', quantity: '1 1/2', unit: 'tsp')
d3.ingredients.create!(title: 'Kosher salt', quantity: '1', unit: 'tsp')
d3.ingredients.create!(title: 'ground cinnamon', quantity: '1', unit: 'tsp')
d3.ingredients.create!(title: 'ground coriander', quantity: '1', unit: 'tsp')
d3.ingredients.create!(title: 'freshly ground black pepper', quantity: '1/2', unit: 'tsp')
d3.ingredients.create!(title: 'ground cumin', quantity: '1/2', unit: 'tsp')
d3.ingredients.create!(title: 'flank steak, trimmed', quantity: '1 1/2', unit: 'lb')

d3.comments.create!(body: 'Added tomatoes and tamarind dressing - so good!', user_id: u3.id)
d3.comments.create!(body: 'The cumin adds a lot', user_id: u4.id)
d3.comments.create!(body: "Steak forever and always", user_id: u2.id)
d3.comments.create!(body: 'YES', user_id: u6.id)



d4 = Recipe.create!(name: 'Horseradish Meatloaf',
                 img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490242412/FN_CHARITY-BOYD-MOMS-MEATLOAF_s4x3.jpg.rend.hgtvcom.616.462_wdf4m2.jpg',
                 tag_id: d.id,
                 user_id: u5.id,
                 directions: 'Soak bread in milk for 5 minutes. Drain and discard milk. Stir in next nine ingredients. Crumble beef over mixture and mix well.
                  Shape into a loaf in an 11x7-in. baking dish coated with cooking spray. Spread top with ketchup. Bake at 350° until a thermometer reads 160°, 45-55 minutes. Let stand 10 minutes before cutting.
                  Freeze option: Omitting ketchup, bake as directed. Securely wrap cooled meat loaf in plastic wrap and foil, then freeze. To use, partially thaw in refrigerator overnight. Unwrap and spread top with ketchup. Reheat on a greased 15x10x1-in. baking pan in a preheated 350° oven until a thermometer inserted in center reads 160°. Let stand 10 minutes before cutting. Yield: 8 servings.')

d4.ingredients.create!(title: 'slices whole wheat bread, crumbled', quantity: '4')
d4.ingredients.create!(title: 'fat-free milk', quantity: '1', unit: 'cup(s)')
d4.ingredients.create!(title: 'finely chopped celery', quantity: '1/4', unit: 'cup(s)')
d4.ingredients.create!(title: 'horseradish', quantity: '1/4', unit: 'cup(s)')
d4.ingredients.create!(title: 'Dijon mustard', quantity: '2', unit: 'tbsp')
d4.ingredients.create!(title: 'chile sauce', quantity: '1', unit: 'tbsp')
d4.ingredients.create!(title: 'large egg, lightly beaten', quantity: '1')
d4.ingredients.create!(title: 'Worestershire sauce', quantity: '1 1/2', unit: 'tsp')
d4.ingredients.create!(title: 'salt', quantity: '1/2', unit: 'tsp')
d4.ingredients.create!(title: 'pepper', quantity: '1/4', unit: 'tsp')
d4.ingredients.create!(title: 'lean ground beef', quantity: '1 1/2', unit: 'lb')
d4.ingredients.create!(title: 'ketchup')

d4.comments.create!(body: 'This was a lot like my grandma\'s', user_id: u3.id)
d4.comments.create!(body: 'I never understood meatloaf', user_id: u4.id)
d4.comments.create!(body: "I would do anything for love.", user_id: u2.id)
d4.comments.create!(body: 'Who am I, why am I here? Forget the question, someone give me another beer', user_id: u6.id)

d5 = Recipe.create!(name: 'Macaroni and Cheese with Bacon, Leeks, and Thyme',
                   img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490242460/MTI1NjQ2NjcwNTk0NjEwNDUw_av3oun.jpg',
                   tag_id: d.id,
                   user_id: u6.id,
                   directions: 'Preheat oven to 375°F. Butter 9×13-inch baking dish and set aside.
                    Cook pasta according to package directions until al dente; drain and set aside. Meanwhile, cook bacon until crisp then chop into small pieces. Drain all but 2 tablespoons bacon drippings from pan then return to medium-low heat and add chopped leeks. Cook, stirring occasionally, until leeks are softened and just starting to brown, about 10 minutes. Stir in thyme and bacon; remove pan from heat and set aside.
                    In large heavy saucepan, melt butter over medium heat and stir in flour. Cook, stirring, about 2 minutes, until flour mixture has darkened slightly, then whisk in half and half. Bring sauce to boil, whisking constantly, then turn heat down and let simmer, stirring, until thickened.
                    Stir in 1 cup cheddar and 1 1/2 cups havarti cheese. Add salt and pepper then remove sauce from heat. Stir in pasta and bacon-leek mixture. Pour pasta into prepared baking dish and sprinkle with reserved cheddar. Bake 25 minutes.')

d5.ingredients.create!(title: 'pasta shells', quantity: '1', unit: 'lb')
d5.ingredients.create!(title: 'thick-sliced', quantity: '1/2', unit: 'lb')
d5.ingredients.create!(title: 'leeks', quantity: '2')
d5.ingredients.create!(title: 'fresh thyme leaves, minced', quantity: '1', unit: 'tsp')
d5.ingredients.create!(title: 'butter', quantity: '3', unit: 'tbsp')
d5.ingredients.create!(title: 'flour', quantity: '1/4', unit: 'cup(s)')
d5.ingredients.create!(title: 'half and half', quantity: '3', unit: 'cup(s)')
d5.ingredients.create!(title: 'Wisconsin havarti cheese, shredded', quantity: '2', unit: 'cup(s)')
d5.ingredients.create!(title: 'salt and pepper', quantity: '2', unit: 'tsp')

d5.comments.create!(body: 'More herbs!', user_id: u3.id)
d5.comments.create!(body: 'Add bacon', user_id: u4.id)
d5.comments.create!(body: "I LOVE CHEESE", user_id: u2.id)
d5.comments.create!(body: 'Nothing beats Kraft', user_id: u6.id)


d7 = Recipe.create!(name: 'Tofu in Coconut Sauce with Ginger and Lemongrass',
               img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490242604/Red-Coconut-Curry-Tofu-Plated-1_qiop2s.jpg',
               tag_id: d.id,
               user_id: u7.id,
               directions: 'Drain the tofu, then dice it into 1/2 inch cubes. Heat 2 T. oil in a medium skillet, add the shallots, and cook over medium heat until lightly browned, about 10 minutes. Season with a few pinches salt, then add half the cilantro. Remove from the heat and set aside.
                Heat a wok, add the remaining oil, and swirl it around the sides. When hot, add the ginger, lemongrass, and jalapeno. Stir-fry for about 30 seconds, add the coconut milk mixture and galangal and bring to a boil. Lower the heat, add the tofu, and simmer gently until heated through and the sauce has thickened, about 10 minutes. Add the soy, season with plenty of pepper, then add the shallots and remaining cilantro. Serve garnished with cilantro sprigs.')

d7.ingredients.create!(title: 'firm tofu, drained', quantity: '1', unit: 'lb')
d7.ingredients.create!(title: 'peanut oil', quantity: '3', unit: 'tbsp')
d7.ingredients.create!(title: 'shallots, thinly sliced', quantity: '8')
d7.ingredients.create!(title: 'Salt and freshly milled white pepper')
d7.ingredients.create!(title: 'bunch cilantro, the leaves plus a little of the stems', quantity: '1')
d7.ingredients.create!(title: 'grapefruit, cut into suprèmes or wedges', quantity: '1')
d7.ingredients.create!(title: 'finely diced fresh ginger', quantity: '1', unit: 'tbsp')
d7.ingredients.create!(title: 'minced lemongrass, from the middle of the stalk, or grated zest of 1 lemon', quantity: '2', unit: 'tbsp')
d7.ingredients.create!(title: 'jalapeno chile, seeded and diced', quantity: '1')
d7.ingredients.create!(title: '15-ounce can unsweetened coconut milk plus water to make 2 cups', quantity: '1')
d7.ingredients.create!(title: 'pieces galangal, optional', quantity: '3')
d7.ingredients.create!(title: 'soy sauce, preferably mushroom soy', quantity: '1', unit: 'tsp')
d7.ingredients.create!(title: 'cilantro sprigs for garnish')

d7.comments.create!(body: 'This was amazing! I added parsley. YUM', user_id: u3.id)
d7.comments.create!(body: 'Needs more olive oil', user_id: u4.id)
d7.comments.create!(body: "I'll be making this one again.", user_id: u2.id)
d7.comments.create!(body: 'Pretty good, thanks for sharing!', user_id: u6.id)

d8 = Recipe.create!(name: 'Hearty Spinach and Sausage Soup',
                   img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490242706/IMG_1062_gxfozx.jpg',
                   tag_id: d.id,
                   user_id: u3.id,
                   directions: 'Heat olive oil in a large pot over medium heat. Add onions, carrots, and celery and cook, stirring occasionally, for 8-10 minutes or until onions are softened. Add potatoes, 5 cups of stock, and barley. Turn up heat, bring to a boil, then reduce heat and simmer uncovered for 30-45 minutes or until barley is tender. Meanwhile, squeeze sausage from its casings, crumble and brown it in a skillet. Drain fat and set the sausage aside. When barley is tender, add spinach and sausage to the soup and fresh herbs if you are using them. Add more stock if necessary or desired, bring soup back up to a simmer and let cook for another 15 minutes. Season to taste with salt and pepper.')

d8.ingredients.create!(title: 'extra-virgin olive oil, divided', quantity: '1', unit: 'tbsp')
d8.ingredients.create!(title: 'medium yellow onion', quantity: '1')
d8.ingredients.create!(title: 'carrots, peeled and sliced', quantity: '3')
d8.ingredients.create!(title: 'chicken stock (homemade, or low-sodium broth)', quantity: '6', unit: 'cup(s)')
d8.ingredients.create!(title: 'red potatoes, cut into bite size pieces', quantity: '1', unit: 'lb')
d8.ingredients.create!(title: 'pearl barley', quantity: '1', unit: 'cup(s)')
d8.ingredients.create!(title: 'mild italian sausage', quantity: '1', unit: 'lb')
d8.ingredients.create!(title: 'large bunch of spinach, thick stems removed, roughly chopped', quantity: '1')
d8.ingredients.create!(title: 'salt to taste')
d8.ingredients.create!(title: 'extra herbs or seasonings of your choice - I used some fresh thyme')

d8.comments.create!(body: 'This was perfect mid november', user_id: u3.id)
d8.comments.create!(body: 'I added navy beans and it was perfect', user_id: u4.id)
d8.comments.create!(body: "I prefer thicker creamier broths", user_id: u2.id)
d8.comments.create!(body: 'Definitely needed the thyme', user_id: u6.id)

# appetizers
  a1 = Recipe.create!(name: 'Artichoke Hummus',
                     img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490212029/ff-artichoke-hummus-feature_l29jyr.jpg',
                     tag_id: a.id,
                     user_id: u1.id,
                     directions: 'Combine the garlic, chickpeas, artichokes, tahini, lemon juice, water, salt, and cumin in a food processor and puree until smooth. Taste for seasoning.
                      Transfer to a serving bowl and garnish with olive oil, paprika, and fresh parsley. Serve alongside pita chips or crudités.')

a1.ingredients.create!(title: 'garlic cloves', quantity: '2')
a1.ingredients.create!(title: '15-ounce can chickpeas', quantity: '1')
a1.ingredients.create!(title: '15-ounce can artichoke hearts', quantity: '1')
a1.ingredients.create!(title: 'tahini', quantity: '1/2', unit: 'cup(s)')
a1.ingredients.create!(title: 'juice of a lemon (or more, to taste)', quantity: '2', unit: 'tbsp')
a1.ingredients.create!(title: 'water', quantity: '1/4', unit: 'cup(s)')
a1.ingredients.create!(title: 'kosher salt (or to taste)', quantity: '1', unit: 'tsp')
a1.ingredients.create!(title: 'cumin', quantity: '1/2', unit: 'tsp')

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

a2.comments.create!(body: 'Bruschetta continues to be a household favorite', user_id: u3.id)
a2.comments.create!(body: 'MMmmm, all my favorite things', user_id: u4.id)
a2.comments.create!(body: "This was more straightforward than I thought", user_id: u2.id)
a2.comments.create!(body: 'Just like in a restaurant', user_id: u6.id)

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

a3.comments.create!(body: 'Blood oranges - two per person...', user_id: u3.id)
a3.comments.create!(body: 'This one is all about presentation', user_id: u4.id)
a3.comments.create!(body: "Added pepper too", user_id: u2.id)
a3.comments.create!(body: 'Good with goat cheese', user_id: u6.id)

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

a4.ingredients.create!(title: 'whole rounds of whole wheat pita bread (or four halves)', quantity: '2')
a4.ingredients.create!(title: 'extra virgin olive oil')
a4.ingredients.create!(title: 'coarse salt')
a4.ingredients.create!(title: 'can black beans', quantity: '1')
a4.ingredients.create!(title: 'liquid from the can of beans', quantity: '2', unit: 'tbsp')
a4.ingredients.create!(title: 'onion powder', quantity: '1/4', unit: 'tsp')
a4.ingredients.create!(title: 'garlic powder', quantity: '1/4', unit: 'tsp')

a4.comments.create!(body: 'Good with tortilla chips too', user_id: u3.id)
a4.comments.create!(body: 'Add cheese', user_id: u4.id)
a4.comments.create!(body: "Keeping the liquid to the side was key", user_id: u2.id)
a4.comments.create!(body: 'Perfect for hosting', user_id: u6.id)


a5 = Recipe.create!(name: 'Chili Garlic Corn Chips',
                   img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490395883/p1110489_mru1zp.jpg',
                   tag_id: a.id,
                   user_id: u7.id,
                   directions: 'Get everything organized: Chop all the veggies and throw them in a bowl. Chop garlic and set aside in small bowl of its own. Measure the rice, leave it in the cup. Measure the spices and put together in a small bowl. Throw the beans, tomatoes and water in another bowl with the salt. . Put all your “preparations” near the stove and you’re ready to begin!
                    Heat 2-3 T. olive oil in a heavy dutch oven over medium heat. Add the veggies (not the garlic) and cook, stirring occasionally until softened and just starting to brown (5-10 minutes). Add the garlic and stir for about 30 seconds then add the brown rice and seasonings and stir constantly for a minute or two. Next, add the beans, tomatoes and water and stir everything together. Bring mixture to a boil and then turn heat to lowest setting, cover and let simmer for about an hour. Uncover, stir, and enjoy! This is good with grated sharp cheddar on top.')

a5.ingredients.create!(title: 'corn tortillas cut into 24 triangles (or as many as you would like!)', quantity: '4')
a5.ingredients.create!(title: 'peanut oil for frying')
a5.ingredients.create!(title: 'salt', quantity: '1', unit: 'tsp')
a5.ingredients.create!(title: 'chili powder', quantity: '1', unit: 'tsp')
a5.ingredients.create!(title: 'ground cumin', quantity: '1/2', unit: 'tsp')
a5.ingredients.create!(title: 'garlic powder', quantity: '1/2', unit: 'tsp')

a5.comments.create!(body: 'Good with pita chips too', user_id: u3.id)
a5.comments.create!(body: 'Add cheese', user_id: u4.id)
a5.comments.create!(body: "Great with chili", user_id: u2.id)
a5.comments.create!(body: 'My kids love this!', user_id: u6.id)

a6 = Recipe.create!(name: 'Coconut Shrimp Poppers with Chili Mango Cream',
                   img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490395960/3673f370-34c2-4974-9ad2-8f0368df924d_rfj9zg.jpg',
                   tag_id: a.id,
                   user_id: u1.id,
                   directions: '1. Peel and dice mango into chunks; combine with pineapple ring and puree in blender until smooth. In a medium bowl combine 4 oz. Philadelphia Cream Cheese and fruit puree. With a mixer on high speed, beat until thoroughly combined. Add desired amount of chili sauce; mix to combine and chill.

                    2. Rinse and pat dry shrimp. Pour flour in a deep bowl and season with 1/2 tsp salt and a few twist of ground pepper. In a separate deep bowl, combine 2 oz. Philadelphia Cream Cheese, eggs, and lemon zest; mix until incorporated. In a third deep bowl mix together Panko crumbs and coconut.

                    3. Toss shrimp in flour; shaking off excess, dip in egg, then lightly press and cover entire shrimps in coconut mixture; set aside on large platter.

                    4. In a deep saucepan, heat 2 in. of oil to 350*. Fry shrimp, 4-5 at a time, for 1/2-1 minute or until golden brown. Place on a paper towel-lined plate and immediately sprinkle with sea salt to taste. Serve warm with chili mango Cream. Enjoy!')

a6.ingredients.create!(title: 'whipped Philadelphia Cream Cheese or regular cream cheese (room temp.)', quantity: '6', unit: 'oz')
a6.ingredients.create!(title: 'large sweet ripe mango', quantity: '1')
a6.ingredients.create!(title: 'canned pineapple ring', quantity: '1')
a6.ingredients.create!(title: 'Sweet Thai Chili Sauce', quantity: '4', unit: 'tbsp')
a6.ingredients.create!(title: 'medium, raw deveined shrimp', quantity: '2', unit: 'cup(s)')
a6.ingredients.create!(title: 'flour(season with salt and pepper)', quantity: '1/3', unit: 'cup(s)')
a6.ingredients.create!(title: 'large eggs', quantity: '2')
a6.ingredients.create!(title: 'lemon, zested', quantity: '1')
a6.ingredients.create!(title: 'Panko bread crumbs', quantity: '1', unit: 'cup(s)')
a6.ingredients.create!(title: 'vegetable oil for deep frying', quantity: '4', unit: 'cup(s)')


a6.comments.create!(body: 'Good with pita chips too', user_id: u3.id)
a6.comments.create!(body: 'Add cheese', user_id: u4.id)
a6.comments.create!(body: "Great with chili", user_id: u2.id)
a6.comments.create!(body: 'My kids love this!', user_id: u6.id)

a7 = Recipe.create!(name: 'Creamy Blue Cheese Dip with Lemon and Chives',
                  img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490396021/bluecheese_m8twag.jpg',
                  tag_id: a.id,
                  user_id: u1.id,
                  directions: 'In a food processor, combine garbanzo beans, artichoke hearts, garlic, tahini, lemon juice, and olive oil. Process until smooth, adding water to thin if necessary. Add salt and Sriracha (if using) to taste. Extra lemon juice or tahini may also be added to taste.
                  Spoon hummus onto a plate, creating a bit of a well in the center. Drizzle with olive oil and garnish with fresh chopped parsley. Serve with your favorite flat bread, crackers, chips, or fresh vegetables.')

a7.ingredients.create!(title: 'well-shaken buttermilk', quantity: '1/2', unit: 'cup(s)')
a7.ingredients.create!(title: 'wedge of lime and coarse salt to rim the glass!', quantity: '1/2', unit: 'cup(s)')
a7.ingredients.create!(title: 'fresh lemon juice', quantity: '1', unit: 'tbsp')
a7.ingredients.create!(title: 'worcestershire sauce', quantity: '1/4', unit: 'tsp')
a7.ingredients.create!(title: 'small garlic clove, minced', quantity: '1')
a7.ingredients.create!(title: 'salt', quantity: '1/4', unit: 'tsp')
a7.ingredients.create!(title: 'fresh flat-leaf parsley leaves', quantity: '1/4', unit: 'cup(s)')
a7.ingredients.create!(title: 'crumbled firm blue cheese', quantity: '2', unit: 'oz')
a7.ingredients.create!(title: 'finely chopped fresh chives', quantity: '2', unit: 'tbsp')
a7.ingredients.create!(title: 'black pepper', quantity: '1/8', unit: 'tsp')

a7.comments.create!(body: 'The buttermilk was a nice touch', user_id: u3.id)
a7.comments.create!(body: 'Pita chips were good with this', user_id: u4.id)
a7.comments.create!(body: "This was a little too experimental for my taste", user_id: u2.id)
a7.comments.create!(body: 'AMAZING', user_id: u6.id)


a8 = Recipe.create!(name: 'Kettle Corn',
                  img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490396103/Old-Fashioned-Kettle-Corn-1_ob4fng.jpg',
                  tag_id: a.id,
                  user_id: u1.id,
                  directions: 'Heat the vegetable oil in a large pot over medium heat. Once hot, stir in the sugar and popcorn. Cover, and shake the pot constantly to keep the sugar from burning. Once the popping has slowed to once every 2 to 3 seconds, remove the pot from the heat and continue to shake for a few minutes until the popping has stopped. Pour into a large bowl, and allow to cool, stirring occasionally to break up large clumps.')

a8.ingredients.create!(title: 'vegetable oil', quantity: '1/4', unit: 'cup(s)')
a8.ingredients.create!(title: 'popcorn kernals', quantity: '1/2', unit: 'cup(s)')
a8.ingredients.create!(title: 'sugar', quantity: '1/4', unit: 'cup(s)')

a8.comments.create!(body: 'I prefer mine with butter', user_id: u3.id)
a8.comments.create!(body: 'Or just go to the county fair', user_id: u4.id)
a8.comments.create!(body: "Add bacon bits!!", user_id: u2.id)
a8.comments.create!(body: 'Reminds me of my grandmother', user_id: u6.id)


# drinks
dr2 = Recipe.create!(name: 'Fresh Lemonade',
                   img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490237624/lemonade2_qnz7xz.jpg',
                   tag_id: dr.id,
                   user_id: u1.id,
                   directions: 'Place all the ingredients in a blender and process until completely smooth. Serve over ice.')

dr2.ingredients.create!(title: 'fresh-squeezed lemon juice', quantity: '1', unit: 'cup(s)')
dr2.ingredients.create!(title: 'ice cubes')
dr2.ingredients.create!(title: 'sugar', quantity: '3/4', unit: 'cup(s)')
dr2.ingredients.create!(title: 'water', quantity: '4', unit: 'cup(s)')
dr2.ingredients.create!(title: 'lemon slices')

dr2.comments.create!(body: 'Great for yuor kids to sell to sidewalk suckers', user_id: u3.id)
dr2.comments.create!(body: 'More sugar', user_id: u4.id)
dr2.comments.create!(body: "lemon scones on the side, yummy!", user_id: u2.id)
dr2.comments.create!(body: 'I thought this would be tougher', user_id: u6.id)


dr3 = Recipe.create!(name: 'Fresh Strawberry Margaritas for Two',
                  img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490237764/Strawberry-Margaritas-5_tlr11k.jpg',
                  tag_id: dr.id,
                  user_id: u1.id,
                  directions: 'Well, actually there are hardly any instructions.  Just dump all 5 ingredients — strawberries, tequila, orange liqueur, honey (or desired sweetener), and some fresh lime juice in a blender. Then blend until smooth.  If you’re using fresh berries, you’ll probably have a nice thick foam that develops on top after this sits for a few minutes.  Feel free to skim it off if you don’t want super foamy margaritas.Then either pour them over ice to serve on the rocks.  Or add some ice to your blender and make frozen margaritas.  And then enjoy!')

dr3.ingredients.create!(title: 'fresh strawberries, hulled', quantity: '1', unit: 'lb')
dr3.ingredients.create!(title: 'silver tequila', quantity: '1', unit: 'cup(s)')
dr3.ingredients.create!(title: 'shot of lime juice', quantity: '2/3', unit: 'cup(s)')
dr3.ingredients.create!(title: 'honey or agave', quantity: '1/2', unit: 'cup(s)')
dr3.ingredients.create!(title: 'triple sec', quantity: '1/4', unit: 'cup(s)')
dr3.ingredients.create!(title: 'ice')


dr3.comments.create!(body: 'Great for yuor kids to sell to sidewalk suckers', user_id: u3.id)
dr3.comments.create!(body: 'More sugar', user_id: u4.id)
dr3.comments.create!(body: "lemon scones on the side, yummy!", user_id: u2.id)
dr3.comments.create!(body: 'I thought this would be tougher', user_id: u6.id)


dr4 = Recipe.create!(name: 'Strawberry Milk',
                  img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490237827/homemade-strawberry-milk-DSC_2026_hmjeh1.jpg',
                  tag_id: dr.id,
                  user_id: u1.id,
                  directions: 'In a small pot, heat strawberries, sugar and water until boiling (it\'s a bit like making jam). Let boil for about 10 minutes; mixture will reduce and thicken slightly. Using a fine sieve or mesh strainer, strain the mixture into a small bowl. You can save the cooked strawberries to add to yogurt or put on pancakes. Set the strawberry syrup aside.
                  Chill two small glasses in the freezer for about 10 minutes. Add 3/4 cup milk to each glass. Swirl in 3 tablespoons of the strawberry syrup into each glass of milk (more or less, depending on desired sweetness). You will have a little strawberry syrup left over, perfect for pancakes or adding to soda water.')

dr4.ingredients.create!(title: 'whole milk', quantity: '1', unit: 'cup(s)')
dr4.ingredients.create!(title: 'fresh-cut strawberry, chopped', quantity: '1', unit: 'cup(s)')
dr4.ingredients.create!(title: 'sugar', quantity: '1-2', unit: 'tbsp')
dr4.ingredients.create!(title: 'water', quantity: '1', unit: 'cup(s)')

dr4.comments.create!(body: 'Strawberries don\'t lactate...', user_id: u3.id)
dr4.comments.create!(body: 'I just ate the strawberries', user_id: u4.id)
dr4.comments.create!(body: "Added ice cream", user_id: u2.id)
dr4.comments.create!(body: 'I thought this would be tougher', user_id: u6.id)


dr5 = Recipe.create!(name: 'Lemon Drop',
                  img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490396344/Make-a-Lemon-Drop-Step-10_xdmd4s.jpg',
                  tag_id: dr.id,
                  user_id: u5.id,
                  directions: 'Coat the rim of a cocktail glass with sugar and set aside. (Do this a few minutes ahead of time so the sugar can dry and adhere well to the glass.).
                  Add the remaining ingredients to a shaker and fill with ice.
                  Shake, and strain into the prepared glass.
                  Garnish with a lemon twist.')

dr5.ingredients.create!(title: 'vodka', quantity: '2', unit: 'oz')
dr5.ingredients.create!(title: 'triple sec', quantity: '5', unit: 'oz')
dr5.ingredients.create!(title: 'simple syrup', quantity: '1', unit: 'oz')
dr5.ingredients.create!(title: 'fresh lemon juice', quantity: '1', unit: 'oz')
dr5.ingredients.create!(title: 'lemon twist', quantity: '1')
dr5.ingredients.create!(title: 'sugar')

dr5.comments.create!(body: 'This was amazing! I added parsley. YUM', user_id: u3.id)
dr5.comments.create!(body: 'Needs more olive oil', user_id: u4.id)
dr5.comments.create!(body: "I'll be making this one again.", user_id: u2.id)
dr5.comments.create!(body: 'Pretty good, thanks for sharing!', user_id: u6.id)

dr6 = Recipe.create!(name: 'Mojito Perfecto',
                    img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490396395/Mojito-de-frutas-de-la-pasi_C3_B3n_kmpgbl.jpg',
                    tag_id: dr.id,
                    user_id: u2.id,
                    directions: 'Put 3 mint leaves and 2 teaspoons sugar into each of 2 glass tumblers; vigorously stir sugar and mint together, crushing mint with the back of a spoon to release oils. Add 3 lime wedges to each glass; again stir vigorously to release some lime juice. Pour 1 jigger rum into each glass. Fill glasses with ice cubes and top with carbonated water; stir.')

dr6.ingredients.create!(title: 'mint leaves', quantity: '6')
dr6.ingredients.create!(title: 'white sugar', quantity: '4', unit: 'tsp')
dr6.ingredients.create!(title: 'lime, cut into wedges', quantity: '1')
dr6.ingredients.create!(title: 'jiggers lemon-flavored rum', quantity: '2', unit: 'oz')
dr6.ingredients.create!(title: 'ice cubes', quantity: '1', unit: 'cup(s)')
dr6.ingredients.create!(title: 'carbonated water', quantity: '1/2', unit: 'cup(s)')

dr6.comments.create!(body: 'mo-ji-tos', user_id: u3.id)
dr6.comments.create!(body: 'Yeah, I left the rest out and kept the rum', user_id: u4.id)
dr6.comments.create!(body: "Added strawberries, and it was great!", user_id: u2.id)
dr6.comments.create!(body: 'Needs more lime IMO', user_id: u6.id)



dr7 = Recipe.create!(name: 'Eggnog',
                        img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490396441/10758_best_eggnog_yt6zrw.jpg',
                        tag_id: dr.id,
                        user_id: u3.id,
                        directions: 'In the bowl of a stand mixer, beat the egg yolks until they lighten in color. Gradually add the 1/3 cup sugar and continue to beat until it is completely dissolved. Add the milk, cream, bourbon and nutmeg and stir to combine.
                        Place the egg whites in the bowl of a stand mixer and beat to soft peaks. With the mixer still running gradually add the 1 tablespoon of sugar and beat until stiff peaks form.
                        Whisk the egg whites into the mixture. Chill and serve.
                        Cook\'s Note: For cooked eggnog, follow procedure below.
                        In the bowl of a stand mixer, beat the egg yolks until they lighten in color. Gradually add the 1/3 cup sugar and continue to beat until it is completely dissolved. Set aside.
                        In a medium saucepan, over high heat, combine the milk, heavy cream and nutmeg and bring just to a boil, stirring occasionally. Remove from the heat and gradually temper the hot mixture into the egg and sugar mixture. Then return everything to the pot and cook until the mixture reaches 160 degrees F. Remove from the heat, stir in the bourbon, pour into a medium mixing bowl, and set in the refrigerator to chill.
                        In a medium mixing bowl, beat the egg whites to soft peaks. With the mixer running gradually add the 1 tablespoon of sugar and beat until stiff peaks form. Whisk the egg whites into the chilled mixture.')

dr7.ingredients.create!(title: 'egg yolks', quantity: '4')
dr7.ingredients.create!(title: 'sugar', quantity: '3/5', unit: 'cup(s)')
dr7.ingredients.create!(title: 'pint whole milk', quantity: '1')
dr7.ingredients.create!(title: 'heavy cream', quantity: '1', unit: 'cup(s)')
dr7.ingredients.create!(title: 'bourbon', quantity: '3', unit: 'oz')
dr7.ingredients.create!(title: 'freshly grated nutmeg', quantity: '1', unit: 'tsp')
dr7.ingredients.create!(title: 'egg whites', quantity: '4')

dr7.comments.create!(body: 'classy', user_id: u3.id)
dr7.comments.create!(body: 'Yeah, I like eggnogg now', user_id: u4.id)
dr7.comments.create!(body: "Too much bourbon", user_id: u2.id)
dr7.comments.create!(body: 'I used whiskey and ice instead of anything else', user_id: u6.id)

dr8 = Recipe.create!(name: 'Mimosa',
                  img: 'https://res.cloudinary.com/dg0cmca7a/image/upload/v1490396488/maxresdefault_qfkrbe.jpg',
                  tag_id: dr.id,
                  user_id: u4.id,
                  directions: 'Mix three parts of your favorite sparkling white to one part of your favorite orange juice. Enjoy!')

dr8.ingredients.create!(title: 'champagne, chilled', quantity: '3/4', unit: 'cup(s)')
dr8.ingredients.create!(title: 'orange juice', quantity: '1/4', unit: 'cup(s)')

dr8.comments.create!(body: 'Do we really need a recipe for Sangria?', user_id: u3.id)
dr8.comments.create!(body: 'Literally nothing unique about this one', user_id: u4.id)
dr8.comments.create!(body: "Umm... thanks", user_id: u2.id)
dr8.comments.create!(body: 'WHOOOOOOO BRUNCH!!!', user_id: u6.id)
