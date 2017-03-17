import { connect } from 'react-redux';
import { createRecipe, updateRecipe, fetchRecipes, clearErrors } from '../../actions/recipe_actions';
import RecipeForm from './recipe_form';
import { hashHistory } from 'react-router';


const mapStateToProps = ( state, ownProps ) => {
  let recipe = {name: "", directions: "", img: ""};
  let formType = "create";
  let errors = state.errors;
  if (ownProps.params.recipeId) {
    recipe = state.recipes[ownProps.params.recipeId];
    formType = "edit";
  }
  return({recipe, formType, errors});
};

const mapDispatchToProps = (dispatch, ownProps) => {
  let action = recipe => dispatch(createRecipe(recipe)).then(
    data => hashHistory.push(`/recipes/${Object.keys(data.recipe)[0]}`));

  if (ownProps.params.recipeId) {
    action = recipe => dispatch(updateRecipe(recipe));
  }
  return({
    clearErrors: () => dispatch(clearErrors()),
    fetchRecipes: () => dispatch(fetchRecipes),
    action
  });
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(RecipeForm);
