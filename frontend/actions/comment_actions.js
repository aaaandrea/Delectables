import * as APIUtils from '../util/comment_api_util';

export const RECEIVE_COMMENTS = "RECEIVE_COMMENTS";
export const RECEIVE_COMMENT = "RECEIVE_COMMENT";
export const REMOVE_COMMENT = "REMOVE_COMMENT";
export const RECEIVE_ERRORS = "RECEIVE_ERRORS";

export const createComment = comment => dispatch => (
  APIUtils.createComment(comment).then(data => dispatch(receiveComment(data)),
            err => dispatch(receiveErrors(err.responseJSON)))
);

export const fetchComments = recipeId => dispatch => (
  APIUtils.fetchComments(recipeId).then(data => dispatch(receiveComments(data)),
            err => dispatch(receiveErrors(err.responseJSON)))
);

export const deleteComment = id => dispatch => (
  APIUtils.deleteComment(id).then(data => dispatch(removeComment(data)),
            err => dispatch(receiveErrors(err.responseJSON)))
);

const receiveComment = comment => ({
  type: RECEIVE_COMMENT,
  comment
});

const receiveComments = (comments) => ({
  type: RECEIVE_COMMENTS,
  comments
});

const receiveErrors = errors => ({
  type: RECEIVE_ERRORS,
  errors
});

const removeComment = comment => ({
  type: REMOVE_COMMENT,
  comment
});
