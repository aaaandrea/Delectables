import { connect } from 'react-redux';
import { createRecipe, updateRecipe, fetchRecipes,
         clearErrors } from '../../actions/recipe_actions';
import RecipeForm from './recipe_form';
import { hashHistory } from 'react-router';


const mapStateToProps = ( state, ownProps ) => {

  let recipe = {name: "", directions: "", img: "", ingredients: [],
                tag_id: 1, user_id: state.session.currentUser.id};
  let formType = ownProps.location.pathname.slice(1);
  let errors = state.errors;
  if (ownProps.params.recipeId) {
    recipe = state.recipes[ownProps.params.recipeId];
  }
  return({recipe, formType, errors});
};

const mapDispatchToProps = (dispatch, ownProps) => {
  let action = recipe => dispatch(createRecipe(recipe)).then(
    data => hashHistory.push(`/recipes/${Object.keys(data.recipe.id)}`));

  let formType = ownProps.location.pathname.slice(1);

  if (formType === 'edit') {
    action = recipe => dispatch(updateRecipe(recipe));
  }

  return({
    recipize: action,
  });
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(RecipeForm);
