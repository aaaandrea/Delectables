import React from 'react';

class Comment extends React.Component{
  constructor(props){
    super(props);
    this.state = {comments: {}, new_comment: ""};

    this.renderComments = this.renderComments.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  componentDidMount(){
    this.props.fetchComments().then( () => (
      this.setState({
        comments: this.props.comments
      })
    ));
  }

  renderComments(){
    let commentKeys = Object.keys(this.state.comments);
    return(
      <ul>
        {commentKeys.map((key, i) => (
          this.comment(this.state.comments[key], i)
        ))}
      </ul>
    );
  }

  comment(comment, index){

    return(
      <li key={comment.id} >
        <img className="comment-user-icon" src={comment.user.image_url}/>
        <div className="comment-text">
          <h3 className="comment-username">{comment.user.username}</h3>
          <p className ="comment-body">"{comment.body}"</p>
        </div>
     </li>
    );
  }

  update() {
		return e => this.setState({
			new_comment: e.currentTarget.value
		});
	}

  handleSubmit(e) {
    e.preventDefault();
    let newComment = {
      user_id: this.props.userId,
      recipe_id: this.props.recipeId,
      body: this.state.new_comment
    };
    this.props.createComment(newComment).then( () =>
      this.props.fetchComments().then( () => (
        this.setState({
          comments: this.props.comments,
          new_comment: ""
        })
      ))
    );
  }

  render(){
    return(
      <div className="comment-container">
        <h3 className="comment-title">Comments</h3>
        {this.renderComments()}
        <div className="comment-form-box">
          <form className="comment-form"
              onSubmit={this.handleSubmit}>
            <textarea className="comment-form-textarea"
              value={this.state.new_comment}
              onChange={this.update()}/>
            <button className="comment-form-button">Add Comment</button>
          </form>
        </div>
      </div>
    );
  }

}

export default Comment;
