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
        this.props.recipes.map( (recipe, idx) => (
          <li key={recipe.id}
            className="recipe-container col col-1-3"
            onClick={() => hashHistory.push(`/recipes/${recipe.id}`)}>
            <img
              className="recipe-image"
              src={recipe.img}/>
            <p className="recipe-name">{recipe.name}</p>
          </li>
        ))
    );
  }

  render(){
    let recipes = this.renderRecipes();
    return(
        <ul className="recipes-container">
          { recipes }
        </ul>
    );
  }

}

export default RecipeIndex;
