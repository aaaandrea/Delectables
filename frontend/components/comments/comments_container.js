import { connect } from 'react-redux';

import { createComment, fetchComments, deleteComment } from '../../actions/comment_actions';
import Comment from './comment';

const mapStateToProps = (state, ownProps) => ({
  comments: state.comments,
  userId: state.session.currentUser.id,
  recipeId: ownProps.recipeId
});

const mapDispatchToProps = (dispatch, ownProps) => {
  return({
    createComment: comment => dispatch(createComment(comment)),
    fetchComments: () => dispatch(fetchComments(ownProps.recipeId)),
    delteComment: id => dispatch(deleteComment(id))
  });
};

export default connect(mapStateToProps, mapDispatchToProps)(Comment);
