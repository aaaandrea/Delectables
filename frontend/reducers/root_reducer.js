import {combineReducers} from 'redux';
import SessionReducer from './session_reducer';
import RecipeReducer from './recipe_reducer';
import RecipeDetailReducer from './recipe_detail_reducer';
import TagReducer from './tag_reducer';
import CommentReducer from './comment_reducer';

const RootReducer = combineReducers({
  session: SessionReducer,
  recipe: RecipeReducer,
  recipeDetail: RecipeDetailReducer,
  tags: TagReducer,
  comments: CommentReducer
});

export default RootReducer;
