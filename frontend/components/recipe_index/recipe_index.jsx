import React from 'react';
import { hashHistory } from 'react-router';
import NavContainer from '../nav/nav_container';

class RecipeIndex extends React.Component {
  constructor(props){
    super(props);
    this.state = {recipes: []};
    this.findRecipes = this.findRecipes.bind(this);
  }

  findRecipes(e) {
    // this.props.fetchRecipes();
    hashHistory.push(`/${e.currentTarget.value}`);
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
            value="breakfast"
            onClick={this.findRecipes}
            >Breakfast
          </button>
          <button
            className="index-filter"
            value="lunch"
            onClick={this.findRecipes}
            >Lunch
          </button>
          <button
            className="index-filter"
            value="dinner"
            onClick={this.findRecipes}
            >Dinner
          </button>
          <button
            className="index-filter"
            value="appetizers"
            onClick={this.findRecipes}
            >Appetizers
          </button>
          <button
            className="index-filter"
            value="drinks"
            onClick={this.findRecipes}
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
