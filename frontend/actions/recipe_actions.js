
import * as APIUtils from '../util/recipe_api_util';

export const RECEIVE_RECIPES = 'RECEIVE_RECIPES';
export const RECEIVE_RECIPE = 'RECEIVE_RECIPE';
export const RECEIVE_RECIPE_ERRORS = 'RECEIVE_RECIPE_ERRORS';
export const REMOVE_RECIPE = 'REMOVE_RECIPE';
export const CLEAR_ERRORS = 'CLEAR_ERRORS';
export const RECEIVE_SEARCH = 'RECEIVE_SEARCH';
export const REMOVE_SEARCHES = 'REMOVE_SEARCHES';

export const RECEIVE_TAG = 'RECEIVE_TAG';
export const RECEIVE_TAGS = 'RECEIVE_TAGS';

export const RECEIVE_COMMENT = 'RECEIVE_COMMENT';
export const REMOVE_COMMENT = 'REMOVE_COMMENT';
export const RECEIVE_COMMENT_ERRORS = 'RECEIVE_COMMENT_ERRORS';

const receiveComment = comment => ({
  type: RECEIVE_COMMENT,
  comment
});

const receiveCommentErrors = errors => ({
  type: RECEIVE_COMMENT_ERRORS,
  errors
});

const receiveRecipes = recipes => ({
  type: RECEIVE_RECIPES,
  recipes
});

const receiveRecipe = recipe => ({
  type: RECEIVE_RECIPE,
  recipe
});

const removeComment = id => ({
  type: REMOVE_COMMENT,
  id
});

const receiveRecipeErrors = errors => ({
  type: RECEIVE_RECIPE_ERRORS,
  errors
});

const removeRecipe = id => ({
  type: REMOVE_RECIPE,
  id
});

export const clearErrors = () => ({
  type: CLEAR_ERRORS
});

const receiveSearch = recipes => ({
  type: RECEIVE_SEARCH,
  recipes
});

const removeSearches = () => ({
  type: REMOVE_SEARCHES
});

// const receiveTag = tag => ({
//   type: RECEIVE_TAG,
//   tag
// });

const receiveTags = tags => ({
  type: RECEIVE_TAGS,
  tags
});

export const createComment = comment => dispatch => (
  APIUtils.createComment(comment).then(data => dispatch(receiveComment(data)),
            err => dispatch(receiveCommentErrors(err.responseJSON)))
);

export const deleteComment = id => dispatch => (
  APIUtils.deleteComment(id).then(() => dispatch(removeComment(id)),
            err => dispatch(receiveRecipeErrors(err.responseJSON)))
);



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

export const searchRecipes = recipes => dispatch => (
  APIUtils.searchRecipes(recipes).then(data => dispatch(receiveSearch(data)),
            err => dispatch(receiveRecipeErrors(err.responseJSON)))
);

export const updateRecipe = recipe => dispatch => (
  APIUtils.updateRecipe(recipe).then(data => dispatch(receiveRecipe(data)),
            err => dispatch(receiveRecipeErrors(err.responseJSON)))
);

//
// export const fetchTag = id => dispatch => (
//   APIUtils.fetchTag(id).then(data => dispatch(receiveTag(data)))
// );

export const fetchTagRecipes = () => dispatch => (
  APIUtils.fetchTagRecipe().then(data => dispatch(receiveTags(data)))
);
