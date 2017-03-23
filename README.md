# Delectables

Delectables is a web application for users to learn new recipes based on meal. Delectables users are allowed to upload their own recipes, discover new recipes, and comment on them.

Delectables is a personal project developed by Andrea del Rio.

# Features
  * Securely authenticated User accounts
  * Create and update personal recipes
  * Commenting on recipes
  * Picture uploading for recipes
  * Image hosting on Cloudinary.
  * Recipes are searchable by meal category

# Project Design
Delectables was designed and built in a two week period.
A proposal was drafted to help provide a timeline during the development process.

![index page](/docs/delectables_index_screenshot.jpg?raw=true "Home Page")

# Technology
## Backend
### Heroku
A production server was used.

### Database
PostgresSQL RDBMS is necessary for Heroku

### Dependencies
  * Cloudinary for image-hosting
  * BCrypt for password-salting and hashing for a secure authentication system

## Frontend
Delectables uses the React.js framework and follows the Redux architecture.

### npm
Node package manage(npm) is used to install all frontend dependecies.

### Webpack
Webpack bundles all frontend components.

### React and Redux
All of the React components, Redux actions, API utilities, and stores are located in the frontend directory.

### jQuery
jQuery is used to make AJAX requests with the rails server

## Future Implementations
  * User likes
  * User icons
