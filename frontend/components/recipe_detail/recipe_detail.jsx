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

  render(){
    let div = (<h1>Loading...</h1>);
    if (this.props.recipeDetail) {
      div = (
        <h1>{this.props.recipeDetail.name}</h1>
        // <section
        //   className="recipe-detail-container">
        //   <h2
        //     className="recipe-detail-title">{this.props.recipeDetail.name}
        //   </h2>
        //   <label>{this.props.recipeDetail.user_id}</label>
        //   <figure>
        //     <img
        //       className="recipe-detail-img"
        //       src={this.props.recipeDetail.img}
        //       alt={this.props.recipeDetail.name}/>
        //   </figure>
        //   <h3>Ingredients</h3>
        //   <ul>
        //     <li>Ingredients each</li>
        //   </ul>
        //   <h3>Directions</h3>
        //   <p>{this.props.recipeDetail.directions}</p>
        // </section>
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
