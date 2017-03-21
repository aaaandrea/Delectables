import {
  RECEIVE_RECIPES,
  REMOVE_RECIPE,
  RECEIVE_RECIPE_ERRORS } from '../actions/recipe_actions';
import merge from 'lodash/merge';

const _nullRecipe = Object.freeze({
  errors: []
});

const RecipeReducer = (state = _nullRecipe, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_RECIPES:
      const currentUser = action.currentUser;
      return merge({}, _nullRecipe, {
        currentUser
      });
    case REMOVE_RECIPE:
      return merge({}, _nullRecipe);
    case RECEIVE_RECIPE_ERRORS:
      const errors = action.errors;
      return merge({}, _nullRecipe, {
        errors
      });
    default:
      return state;
  }
};

export default RecipeReducer;
