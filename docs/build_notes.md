<!-- - On signup :422 Unprocessable entity. "Username can't be blank"
  * Solution: typo: name rather than username

- Button nav rather than link for login/signup: session_form.jsx / user.jsx
  * Solution: define functions for signup/login to add route to url.

- SCSS setup: demo-button (form.scss, and in session_form)
  * Solution: bind in constructor (session form)

- Images not appearing on heroku
  * Problem: I had configured the image files locally in the assets folder. Heroku has issues with these config files, and production.rb setups.
  * Solution:
    1. Host images on cloudinary,
    2. run `bundle exec rake assets:clobber` to fix the assets changes I'd made
    3. Manually remove the config changes in production.rb

- scss colors rendering
  * Solution:
    - In application.css.scss import colors file after reset;
  * Lesson:
    - Don't forget the load order is key. -->

- DRY-up navbar
  * Problem: Currently multiple navs: 1. session form. other in user.jsx.
  * Solution:
    - Maybe include in home?

- Recipe ingredients logic
  - Option 1: Place ingredients as a text field column in the Recipe table and iterate over it when new ingredients are entered into the form to display a bulleted list.
    - Potential Issues: formatting depending on how a user inputs text, also with quantity/units
  - Option 2: Have 4 tables: a) Recipes b) Ingredients c) Units d) RecipeIngredients. Thus when a user inputs they can select units from a dropdown, they can still store ingredients as a string, and just tab into the next box.
    - Potential Issues: possibility for duplicate ingredients given the users can type in ingredients differently.


extras:
- center detail update/delete buttons
- render errors for create/delete recipe
- when search is complete: add code snippet of filtering to production readme
- fix gray text for session form


clear store of recipe detail upon navigation from page.
