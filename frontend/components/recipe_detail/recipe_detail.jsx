import React from 'react';
import { Link, hashHistory, withRouter } from 'react-router';
import merge from 'lodash/merge';

class RecipeDetail extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      comment: {
        body: ""
      }
    };
    this.edit = this.edit.bind(this);
    this.delete = this.delete.bind(this);
    this.addComment = this.addComment.bind(this);
  }

  componentDidMount() {
    this.props.fetchRecipe(this.props.params.recipeId);
  }

  edit() {
    hashHistory.push(`/recipes/${this.props.recipeDetail.id}/edit`);
  }

  delete() {
    this.props.deleteRecipe(this.props.recipeDetail.id)
      .then(data => hashHistory.push('/'));
  }

  updateComment() {
    return e => this.setState({
      comment: {
        body: e.currentTarget.value
      }
    });
  }

  addComment(e) {
    e.preventDefault();
    const comment = {
      body: this.state.comment.body,
      user_id: this.props.user.currentUser.id,
      recipe_id: this.props.recipeDetail.id
    };
    this.props.createComment({comment})
      .then(() => (
        this.props.fetchComments(this.props.recipeDetail.id)
          .then( () =>
            this.setState({
              comment: {
                body: ""
              }
            })
          )
      ));
  }
  removeComment() {
    this.props.deleteComment(this.props.comment.id);
  }

  renderCommentBox() {
    if (!this.props.user.currentUser) {
      return null;
    }
      return(
        <form
          className="recipe-comment-create-container">
          <textarea
            className="recipe-comment-body"
            value={this.state.comment.body}
            onChange={this.updateComment()}/>
          <button
            className="recipe-comment-button"
            onClick={this.addComment}>Add Comment</button>
        </form>
      );

  }

  renderIngredients() {
    if (!this.props.recipeDetail.ingredients) {
      return null;
    }
    return(
      <ul className="recipe-detail-ul">
        {this.props.recipeDetail.ingredients.map((el, idx) => {
          if (!el.quantity) {
            return (
              <li
              className="recipe-detail-list"
              key={idx}>{el.title}</li>
            );
          }
          return (
            <li
            className="recipe-detail-list"
            key={idx}>
            <label>{el.quantity} {el.unit} </label>{el.title}</li>
          );
        })}
      </ul>
    );
  }

  renderComments() {
    if (!this.props.recipeDetail.comments) {
      return null;
    }
    return(
      <div className="recipe-comments-container">
        <label className="recipe-detail-label">Comments</label>

        {this.renderCommentBox()}

        <ul className="recipe-comments-ul-container">
          {this.props.recipeDetail.comments.map((el, idx) => {
            return(
              <div className="recipe-comment-container">
                <label className="recipe-comment-name">{el.username} says</label>
                <li className="recipe-comment" key={idx}>{el.body}</li>
              </div>
            );
          })}
        </ul>
      </div>
    );
  }

  renderDeleteButton() {
    if (!this.props.user.currentUser) {
      return null;
    } else if (this.props.user.currentUser.id === this.props.recipeDetail.user.id) {
      return(
        <div className="recipe-buttons">
        <button className="recipe-detail-button" onClick={this.delete}>Delete</button>
        <button className="recipe-detail-button" onClick={this.edit}>Update</button>
        </div>
      );
    }
  }

  render(){
    let div = (<label>Loading...</label>);
    if (Object.keys(this.props.recipeDetail).length !== 0) {
      div = (
        <section
          className="recipe-detail-container">
          <div className="recipe-title-container">
            <label
              className="recipe-detail-title">{this.props.recipeDetail.name}
            </label>
            <label
              className="recipe-detail-author"> by {this.props.recipeDetail.user.username}
            </label>
          </div>
          <div className="recipe-img-ing">
              <img
                className="recipe-detail-img"
                src={this.props.recipeDetail.img}
                alt={this.props.recipeDetail.name}>
              </img>
            <div className="recipe-ing-container">
              <label className="recipe-detail-label">Ingredients</label>
              <br></br>
              {this.renderIngredients()}
            </div>
          </div>
          <div className="recipe-dir-container">
            <label className="recipe-detail-label">Directions</label>
            <p className="recipe-detail-p">{this.props.recipeDetail.directions}</p>
          </div>
          {this.renderDeleteButton()}

          {this.renderComments()}

        </section>
      );
    }
    return (
      <div>
        {div}
      </div>
    );
  }

}

export default RecipeDetail;
