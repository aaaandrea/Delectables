import { connect } from 'react-redux';
import { createRecipe, updateRecipe, fetchRecipes,
  fetchRecipe, clearErrors } from '../../actions/recipe_actions';
import RecipeForm from './recipe_form';
import { hashHistory } from 'react-router';


const mapStateToProps = ( state, ownProps ) => {
  let recipe = {name: "", directions: "", img: "", ingredients: [{}],
                tag_id: "", user_id: state.session.currentUser.id};
  let formType = ownProps.location.pathname.slice(1);
  let errors = state.errors;

  return({recipe, formType, errors});
};

const mapDispatchToProps = (dispatch, ownProps) => {
  // let action = recipe => dispatch(createRecipe(recipe)).then(
  //   data => hashHistory.push(`/recipes/${Object.keys(data.recipe.id)}`));

  let formType = ownProps.location.pathname.slice(1);
  const processFormAction = (formType === 'edit') ? updateRecipe : createRecipe;
  return({
    fetchRecipe: id => dispatch(fetchRecipe(id)),
    processForm: recipe => dispatch(processFormAction(recipe))
  });
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(RecipeForm);
