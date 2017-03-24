# Delectables

[Delectables](https://delectables.herokuapp.com/#/) is a web application for users to learn new recipes based on meal. Delectables users are allowed to upload their own recipes, discover new recipes, and comment on them.

Delectables is a personal project developed by Andrea del Rio.

# Features
  * Securely authenticated User accounts
  * Create and update personal recipes
  * Commenting on recipes
  * Picture uploading for recipes
  * Image hosting on Cloudinary.
  * Recipes are searchable by meal category

# Project Design
[Delectables](https://delectables.herokuapp.com/#/) was designed and built in a two week period.
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
[Delectables](https://delectables.herokuapp.com/#/) uses the React.js framework and follows the Redux architecture.

This proved particularly useful using promises in order to make asynchronous calls.
```
export const createRecipe = recipe => dispatch => (
  APIUtils.createRecipe(recipe).then(data => dispatch(receiveRecipe(data)),
            err => dispatch(receiveRecipeErrors(err.responseJSON)))
);

export const deleteRecipe = id => dispatch => (
  APIUtils.deleteRecipe(id).then(() => dispatch(removeRecipe(id)),
            err => dispatch(receiveRecipeErrors(err.responseJSON)))
);

export const fetchRecipes = () => dispatch => (
  APIUtils.fetchRecipes().then(data => dispatch(receiveRecipes(data)),
            err => dispatch(receiveRecipeErrors(err.responseJSON)))
);

export const fetchRecipe = id => dispatch => (
  APIUtils.fetchRecipe(id).then(data => dispatch(receiveRecipe(data)),
  err => dispatch(receiveRecipeErrors(err.responseJSON)))
);
```

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
