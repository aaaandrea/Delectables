import { connect } from 'react-redux';
import { createRecipe, updateRecipe, fetchRecipes,
  fetchRecipe, clearErrors } from '../../actions/recipe_actions';
import RecipeForm from './recipe_form';
import { hashHistory } from 'react-router';


const mapStateToProps = ( state, ownProps ) => {
  console.log(state);
  let recipe = {name: "", directions: "", img: "", ingredients: [{}],
                tag_id: "", user_id: state.session.currentUser.id};
  let formType = ownProps.location.pathname.slice(1);
  formType = formType.slice(-4);
  let errors = state.recipeDetail.errors;

  return({recipe, formType, errors});
};

const mapDispatchToProps = (dispatch, ownProps) => {
  let formType = ownProps.location.pathname.slice(1);
  formType = formType.slice(-4);
  const processFormAction = (formType === 'edit') ? updateRecipe : createRecipe;
  return({
    fetchRecipe: id => dispatch(fetchRecipe(id)),
    createRecipe: data => dispatch(createRecipe(data)),
    processForm: recipe => dispatch(processFormAction(recipe))
  });
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(RecipeForm);
