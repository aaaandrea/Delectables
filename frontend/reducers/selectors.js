import { values } from 'lodash';

export const selectRecipe = ({ recipe }, recipeId) => {
  const foundRecipe = recipe.find( recipeSingle => recipe.id === recipeId);

  return foundRecipe || {};
};

export const selectIngredients = ({ ingredients }) => {
  return values(ingredients);
};

export const selectAllRecipes = ({ recipe }) => {
  return values(recipe);
};

export const selectAllTags = ({ tags }) => {
  return values(tags);
};
