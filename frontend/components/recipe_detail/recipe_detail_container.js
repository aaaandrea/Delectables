import { connect } from 'react-redux';
import { fetchRecipe, deleteRecipe } from '../../actions/recipe_actions';
import RecipeDetail from './recipe_detail';

const mapStateToProps = (state, ownProps) => {
  // const recipeDetail = state.recipe.
  let recipeDetail;
  // state.recipe.each
  console.log(state);
  let i = 0;
  while (i < state.recipe.length) {

    if (String(state.recipe[i].id) === ownProps.params.recipeId) {
      recipeDetail = state.recipe[i];
    }
    i++;
  }
  return {recipeDetail};
};

const mapDispatchToProps = dispatch => ({
  fetchRecipe: id => dispatch(fetchRecipe(id))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(RecipeDetail);
