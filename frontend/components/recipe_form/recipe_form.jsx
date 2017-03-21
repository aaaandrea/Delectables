import React from 'react';
import { Link, withRouter } from 'react-router';
import merge from 'lodash/merge';
import IngredientForm from './ingredient_form';

class RecipeForm extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      recipe: props.recipe
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.renderAllIngredients = this.renderAllIngredients.bind(this);
    this.updateRecipeAttributes = this.updateRecipeAttributes.bind(this);
    this.handleAddRecipeIngredient = this.handleAddRecipeIngredient.bind(this);
    this.updateIngredientAttributes = this.updateIngredientAttributes.bind(this);
  }

  componentDidMount() {
    window.component = this;
  }

  updateIngredientAttributes(index, attribute) {
    return((e) => {
      e.preventDefault();
      const newState = Object.assign({}, this.state);
      newState.recipe.ingredients[index][attribute] = e.currentTarget.value;
      this.setState(newState);
    }).bind(this);
  }

  updateRecipeAttributes(attribute){
    return (e) => {
      const newState = Object.assign({}, this.state);
      newState.recipe[attribute] = e.currentTarget.value;
      this.setState(newState);
    };
  }

  handleAddRecipeIngredient(e) {
    e.preventDefault();
    const newState = Object.assign({}, this.state);
    newState.recipe.ingredients.push({});
    this.setState(newState);
  }

  handleAddTag(e) {
    e.preventDefault();
    const newState = Object.assign({}, this.state);
    newState.tag = {};
    this.newState(newState);
  }

  handleSubmit(e) {
    e.preventDefault();
    const recipe = Object.assign({}, this.state.recipe);
    this.props.processForm(recipe);
  }

  renderAllIngredients(){
    return(
      <ul>
        {this.state.recipe.ingredients.map((el, idx) => (
            <IngredientForm ingredient={el} key={idx} idx={idx} updateIngredientAttributes={this.updateIngredientAttributes} /> ))}
      </ul>
    );
  }

  render(){
    let { errors } = this.props;
    if (errors) {
      errors = errors.map( (error, i ) => <li key={i}>{error}</li>);
      errors = <ul className='error'>{errors}</ul>;
    }

    return(
        <form
          className="recipe-form-container"
          onSubmit={ this.handleSubmit.bind(this) }>
          <section className="recipe-form-setup">
            <h2
              className="recipe-form-title">
              { this.props.formType === 'edit' ? "Update" : "Create" } Recipe
            </h2>

            <p
              className="recipe-form-errors">{this.props.errors}</p>

            <input
              className="recipe-form-attribute"
              type="text"
              placeholder="Recipe Name"
              value={this.state.recipe.name}
              onChange={this.updateRecipeAttributes('name')}/>


            <select
              className="recipe-form-selector"
              name="tag_id"
              placeholder="Category"
              value={this.state.recipe.tag_id}
              onChange={this.updateRecipeAttributes('tag_id')}>
              <option value="">-</option>
              <option value="1">Breakfast</option>
              <option value="2">Lunch</option>
              <option value="3">Dinner</option>
              <option value="4">Appetizer</option>
              <option value="5">Drinks</option>
            </select>

            <input
              className="recipe-form-attribute"
              type="textarea"
              placeholder="Directions"
              value={this.state.recipe.directions}
              onChange={this.updateRecipeAttributes('directions')}/>

            <input
              className="recipe-form-attribute"
              type="text"
              placeholder="Image Link"
              value={this.state.recipe.img}
              onChange={this.updateRecipeAttributes('img')}/>


            {this.renderAllIngredients()}

            <button
              className="add-ingredient-button"
              onClick={this.handleAddRecipeIngredient}>
              Add Ingredient
            </button>

            <button
              className="recipe-form-button">
              { (this.props.formType === 'edit') ? 'Update' : 'Create' } Recipe
            </button>
          </section>
        </form>
    );
  }
}

export default withRouter(RecipeForm);
