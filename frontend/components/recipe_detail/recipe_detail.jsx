import React from 'react';
import { Link, withRouter } from 'react-router';
import merge from 'lodash/merge';

class RecipeDetail extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      recipe: props.recipe
    };
  }

  componentDidMount() {
    this.props.fetchRecipe(this.props.params.recipeId);
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

  renderDeleteButton() {
    console.log(this.props.user);
    if (!this.props.recipeDetail.user.username) {
      return null;
    } else if (this.props.user.id === this.props.recipeDetail.user.id) {
      return(
        <div>
        <button className="recipe-detail-button">Delete</button>
        <button className="recipe-detail-button">Update</button>
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
