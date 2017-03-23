import React from 'react';
import { hashHistory } from 'react-router';
import NavContainer from '../nav/nav_container';

class RecipeIndex extends React.Component {
  constructor(props){
    super(props);
    this.state = {recipes: []};
  }

  componentWillMount() {
    this.props.fetchRecipes();
    // this.props.fetchRecipe();
    // this.props.fetchTagRecipes().then(() => (
    //   this.setState({
    //     recipes: this.props.recipes
    //   })
    // ));
  }

  componentDidMount() {
    this.props.fetchRecipes();
  }

  renderImage(recipe){
    if (recipe.img === "") {
      return null;
    }
    return(
      <img
      className="recipe-image"
      src={recipe.img}/>);
  }

  renderRecipes(){
    console.log(this.props.recipes);
    return(
        this.props.recipes.map( (recipe, idx) => (
          <li key={idx}
            className="recipe-container col col-1-3"
            onClick={() => hashHistory.push(`/recipes/${recipe.id}`)}>
            {this.renderImage(recipe)}
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
