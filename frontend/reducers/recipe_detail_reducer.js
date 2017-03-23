import { merge } from 'lodash';
import {
  RECEIVE_RECIPE, RECEIVE_RECIPE_ERRORS
  } from '../actions/recipe_actions';

const RecipeDetailReducer = (state = {}, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_RECIPE:
      return merge({}, state, action.recipe);
    case RECEIVE_RECIPE_ERRORS:
      const errors = action.errors;
      return merge({}, state, {
        errors
      });
    default:
      return state;
  }
};

export default RecipeDetailReducer;
