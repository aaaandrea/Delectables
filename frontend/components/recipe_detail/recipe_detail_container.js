import { connect } from 'react-redux';
import { fetchRecipe, deleteRecipe, createComment, deleteComment, fetchComments } from '../../actions/recipe_actions';
import RecipeDetail from './recipe_detail';
import { merge } from 'lodash';

const defaultRecipe = {user: {}};
const defaultComment = {body: {}};

const mapStateToProps = (state, ownProps) => {
  console.log(state);
  let recipeDetail = merge({}, defaultRecipe, state.recipeDetail, state.recipe) || defaultRecipe;
  let user = state.session;
  return {recipeDetail, user};
};

const mapDispatchToProps = dispatch => ({
  fetchRecipe: id => dispatch(fetchRecipe(id)),
  deleteRecipe: id => dispatch(deleteRecipe(id)),
  createComment: comment => dispatch(createComment(comment)),
  deleteComment: id => dispatch(deleteComment(id)),
  fetchComments: id => dispatch(fetchComments(id))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(RecipeDetail);
