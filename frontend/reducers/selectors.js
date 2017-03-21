import { values } from 'lodash';

export const selectRecipe = ({ recipe }, recipeId) => {
  const foundRecipe = recipe.find( recipeSingle => recipe.id === recipeId);

  return foundRecipe || {};
};

export const selectAllRecipes = ({ recipe }) => {
  return values(recipe);
};
