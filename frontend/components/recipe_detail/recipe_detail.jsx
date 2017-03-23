import React from 'react';
import { Link, hashHistory, withRouter } from 'react-router';
import merge from 'lodash/merge';

class RecipeDetail extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      recipe: props.recipe
    };
    this.edit = this.edit.bind(this);
    this.delete = this.delete.bind(this);
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

  renderIngredients() {
    if (!this.props.recipeDetail.ingredients) {
      return null;
    }
    return(
      <ul className="recipe-detail-ul">
        {this.props.recipeDetail.ingredients.map((el, idx) => {
          return(<li className="recipe-detail-list" key={idx}>{el.quantity} {el.unit} - {el.title}</li>);
        })}
      </ul>
    );
  }

  renderComments() {
    console.log(this.props.recipeDetail);
    if (!this.props.recipeDetail.comments) {
      return null;
    }
    return(
      <ul className="recipe-detail-ul">
        {this.props.recipeDetail.comments.map((el, idx) => {
          return(<li className="recipe-detail-comment" key={idx}>{el.body}</li>);
        })}
      </ul>
    );
  }

  renderDeleteButton() {
    if (!this.props.user.currentUser) {
      return null;
    } else if (this.props.user.currentUser.id === this.props.recipeDetail.user.id) {
      return(
        <div>
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
          <label
            className="recipe-detail-title">{this.props.recipeDetail.name}
          </label>
          <br></br>
          <label> by {this.props.recipeDetail.user.username}</label>
          <figure>
            <img
              className="recipe-detail-img"
              src={this.props.recipeDetail.img}
              alt={this.props.recipeDetail.name}/>
          </figure>
          <div className="recipe-ing-container">
            <h3 className="recipe-detail-h3">Ingredients</h3>
            {this.renderIngredients()}
          </div>
          <div className="recipe-dir-container">
            <h3 className="recipe-detail-h3">Directions</h3>
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
