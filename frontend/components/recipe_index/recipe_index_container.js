import { connect } from 'react-redux';
import {  fetchRecipes, fetchRecipe } from '../../actions/recipe_actions';
import { fetchTags } from '../../actions/tag_actions';
import { selectAllRecipes, selectRecipe, selectAllTags } from '../../reducers/selectors';
import RecipeIndex from './recipe_index';

const mapStateToProps = (state, ownProps) => {
  return{
    recipes: selectAllRecipes(state),
    tags: state.tags
  };
};

const mapDispatchToProps = (dispatch, ownProps) => ({
  fetchRecipes: () => dispatch(fetchRecipes()),
  fetchTags: () => dispatch(fetchTags())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(RecipeIndex);
