import React from 'react';
import { hashHistory } from 'react-router';
import NavContainer from '../nav/nav_container';

class RecipeIndex extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      filterTagId: false,
      recipes: this.props.recipes
    };
    this.filterRecipes = this.filterRecipes.bind(this);
    this.renderRecipes = this.renderRecipes.bind(this);
  }

  componentWillMount() {
    this.props.fetchTags();
    this.props.fetchRecipes();
  }

  componentWillReceiveProps(nextProps) {
    if (nextProps.recipes.length > 0) {
      this.setState({ recipes: nextProps.recipes });
    }
  }

  renderImage(recipe){
    return(
      <img
      className="recipe-image"
      src={recipe.img}/>);
  }
        // <p className="recipe-author">{recipe.user.username}</p>
  renderRecipes() {
    this.state.recipes.map((recipe) => (
      console.log(recipe.user)
    ));
    const recipes = this.state.recipes.filter((recipe) => {
      if (!this.state.filterTagId) {
        return true;
      }
      return recipe.tag_id === this.state.filterTagId;
    });
    return recipes.map( (recipe, idx) => (
      <li key={idx}
        className="recipe-container col col-1-4"
        onClick={() => hashHistory.push(`/recipes/${recipe.id}`)}>
        {(recipe.img === "") ? null : this.renderImage(recipe)}
        <p className="recipe-name">{recipe.name}</p>
      </li>
    ));
  }

  filterRecipes(id) {
    return (e) => {
      e.preventDefault();
      this.setState({ filterTagId: id });
    };
  }

  renderFilterButtons() {
    if (!this.props.tags) {
      return null;
    }
    const buttons = [{name: 'All'}].concat(this.props.tags);
    return(
      buttons.map((tag, idx) => (
        <button
          className="index-filter"
          key={idx}
          value={tag.id}
          onClick={this.filterRecipes(tag.id)}
          >{tag.name}</button>
      ))
    );
  }

  render(){
    let recipes = this.renderRecipes();
    let tagButtons = this.renderFilterButtons();
    return(
      <div className="recipe-index-container">
        <section className="index-filter-container">
          { tagButtons }
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
