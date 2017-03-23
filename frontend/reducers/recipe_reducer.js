import {
  RECEIVE_RECIPES,
  RECEIVE_RECIPE,
  REMOVE_RECIPE,
  RECEIVE_RECIPE_ERRORS } from '../actions/recipe_actions';
import merge from 'lodash/merge';

const RecipeReducer = (state = {}, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_RECIPES:
      return action.recipes;
    case RECEIVE_RECIPE_ERRORS:
      const errors = action.errors;
      return merge({}, state, {
        errors
      });
    case REMOVE_RECIPE:
      let newState = merge([], state);
      let index;
      state.forEach((el, idx) => {
        if (el.id === action.id) {
          index = idx;
        }
      });
      newState = newState.splice(index, 1);
      return newState;
    default:
      return state;
  }
};

export default RecipeReducer;
