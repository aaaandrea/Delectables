import {
  RECEIVE_COMMENT,
  RECEIVE_COMMENTS,
  REMOVE_COMMENT} from '../actions/comment_actions';
import merge from 'lodash/merge';

const CommentReducer = (state = {}, action) => {
  Object.freeze(state);
  switch(action.type){
    case RECEIVE_COMMENT:
      return merge({}, state, action.comment);
    case RECEIVE_COMMENTS:
      return action.comments;
    case REMOVE_COMMENT:
      const newState = merge({} ,state);
      delete newState[Object.keys(action.comment)[0]];
      return newState;
    default:
      return state;
  }

};

export default CommentReducer;
