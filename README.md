# Delectables

[Delectables](https://delectables.herokuapp.com/#/) is a web application for users to learn new recipes based on meal. Delectables users are allowed to upload their own recipes, discover new recipes, and comment on them.

[Delectables](https://delectables.herokuapp.com/#/) is a personal project developed by Andrea del Rio.

## Features
  * Securely authenticated User accounts
  * Create and update personal recipes
  * Commenting on recipes
  * Picture uploading for recipes
  * Image hosting on Cloudinary.
  * Recipes are searchable by meal category

## Project Design
[Delectables](https://delectables.herokuapp.com/#/) was designed and built in a two week period.
A proposal was drafted to help provide a timeline during the development process.

![index page](/docs/delectables_index_screenshot.jpg?raw=true "Home Page")

## Technologies
[Delectables](https://delectables.herokuapp.com/#/) uses the React.js framework and follows the Redux architecture.
The backend uses a ruby on rails architecture with json requests sent by a react-redux front end. Images are hosted on Cloudinary to allow for custom resizing.
  * React.js
  * Redux
  * jQuery
  * Ruby on Rails
  * Active Record
  * PostgreSQL
  * BCrypt
  * Cloudinary
  * Heroku server


## Key Challenges
  * Number of backend apis were minimized to reduce complexity
  * Filter values were not re-routed in order to ensure the same state, and not require a re-render
  * Backend controllers only allow a logged in user with correct priveledges to modify the database

## Future Implementations
  * Users can review a recipe
  * User profile pages with lists of recipes
  * Users can have icons
