import React from 'react';
import { hashHistory } from 'react-router';
import NavContainer from '../nav/nav_container';

class RecipeIndex extends React.Component {
  constructor(props){
    super(props);
    this.state = {recipes: []};
  }

  findRecipes() {
    // this.props.fetchRecipes();
    this.props.fetchTagRecipes().then(() => (
      this.setState({
        recipes: this.props.recipes
      })
    ));
  }

  componentDidMount() {
    this.props.fetchRecipes();
  }

  renderImage(recipe){
    return(
      <img
      className="recipe-image"
      src={recipe.img}/>);
  }

  renderRecipes(){
    return(
        this.props.recipes.map( (recipe, idx) => (
          <li key={idx}
            className="recipe-container col col-1-4"
            onClick={() => hashHistory.push(`/recipes/${recipe.id}`)}>
            {(recipe.img === "") ? null : this.renderImage(recipe)}
            <p className="recipe-name">{recipe.name}</p>
          </li>
        ))
    );
  }

  render(){
    let recipes = this.renderRecipes();
    return(
      <div className="recipe-index-container">
        <section className="index-filter-container">
          <button
            className="index-filter"
            onClick={() => hashHistory.push(`/recipes/breakfast`)}
            >Breakfast
          </button>
          <button
            className="index-filter"
            onClick={() => hashHistory.push(`/recipes/lunch`)}
            >Lunch
          </button>
          <button
            className="index-filter"
            onClick={() => hashHistory.push(`/recipes/dinner`)}
            >Dinner
          </button>
          <button
            className="index-filter"
            onClick={() => hashHistory.push(`/recipes/appetizers`)}
            >Appetizers
          </button>
          <button
            className="index-filter"
            onClick={() => hashHistory.push(`/recipes/drinks`)}
            >Drinks
          </button>
        </section>

        <section className="recipes-wrapper">
          <ul className="recipes-container">
            { recipes }
          </ul>
        </section>
      </div>
    );
  }

}

export default RecipeIndex;
