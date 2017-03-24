import { connect } from 'react-redux';
import { fetchRecipe, deleteRecipe, createComment, deleteComment } from '../../actions/recipe_actions';
import RecipeDetail from './recipe_detail';
import { merge } from 'lodash';

const defaultRecipe = {user: {}};
const defaultComment = {body: {}};

const mapStateToProps = (state, ownProps) => {
  let recipeDetail = merge({}, defaultRecipe, state.recipeDetail) || defaultRecipe;
  let user = state.session;
  return {recipeDetail, user};
};

const mapDispatchToProps = dispatch => ({
  fetchRecipe: id => dispatch(fetchRecipe(id)),
  deleteRecipe: id => dispatch(deleteRecipe(id)),
  createComment: comment => dispatch(createComment(comment)),
  deleteComment: id => dispatch(deleteComment(id))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(RecipeDetail);
