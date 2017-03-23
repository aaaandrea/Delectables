import { connect } from 'react-redux';
import { fetchRecipe, deleteRecipe } from '../../actions/recipe_actions';
import RecipeDetail from './recipe_detail';

const mapStateToProps = (state, ownProps) => {
  let recipeDetail = state.recipeDetail;
  let user = state.session;
  return {recipeDetail, user};
};

const mapDispatchToProps = dispatch => ({
  fetchRecipe: id => dispatch(fetchRecipe(id)),
  deleteRecipe: id => dispatch(deleteRecipe(id))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps 
)(RecipeDetail);
