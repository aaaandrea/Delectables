import {combineReducers} from 'redux';
import SessionReducer from './session_reducer';
import RecipeReducer from './recipe_reducer';

const RootReducer = combineReducers({
  session: SessionReducer,
  recipe: RecipeReducer
});

export default RootReducer;
