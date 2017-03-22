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
      <ul>
        {this.props.recipeDetail.ingredients.map((el, idx) => {
          return(<li key={idx}>{el.quantity} {el.unit} - {el.title}</li>);
        })}
      </ul>
    );
  }

  renderDeleteButton() {
    if (!this.props.user.username) {
      return null;
    } else if (this.props.user.id === this.props.recipeDetail.user.id) {
      return(
        <div>
        <button>Delete</button>
        </div>
      );
    }
  }

  render(){
    let div = (<h1>Loading...</h1>);
    if (Object.keys(this.props.recipeDetail).length !== 0) {
      div = (
        <section
          className="recipe-detail-container">
          <h2
            className="recipe-detail-title">{this.props.recipeDetail.name}
          </h2>
          <label>{this.props.user.username}</label>
          <figure>
            <img
              className="recipe-detail-img"
              src={this.props.recipeDetail.img}
              alt={this.props.recipeDetail.name}/>
          </figure>
          <h3>Ingredients</h3>
          {this.renderIngredients()}
          <h3>Directions</h3>
          <p>{this.props.recipeDetail.directions}</p>
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
