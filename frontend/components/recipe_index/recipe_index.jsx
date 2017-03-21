import React from 'react';
import { hashHistory } from 'react-router';
import NavContainer from '../nav/nav_container';

class RecipeIndex extends React.Component {
  constructor(props){
    super(props);
    this.state = {recipes: []};
  }

  componentDidMount() {
    this.props.fetchRecipes();
    // this.props.fetchRecipe();
    // this.props.fetchTagRecipes().then(() => (
    //   this.setState({
    //     recipes: this.props.recipes
    //   })
    // ));
  }

  renderRecipes(){
    return(
      <div>
        {this.props.recipes.map( (recipe, idx) => (
          <div key={recipe.id} className="recipe-container">
            <img
              className = "recipe-image"
              src={recipe.img}
              onClick={() => hashHistory.push(`/recipes/${recipe.id}`)}/>
            <p className="recipe-name">{recipe.name}</p>
          </div>
        ))}
      </div>
    );
  }

  render(){
    let recipes = this.renderRecipes();
    return(
      <div className="recipes-background">
        <div className="recipes-container">
          { recipes }
        </div>
      </div>
    );
  }

}

export default RecipeIndex;
