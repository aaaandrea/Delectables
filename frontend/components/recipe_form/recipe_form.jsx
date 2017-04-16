import React from 'react';
import { Link, hashHistory, withRouter } from 'react-router';
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
    this.handleCloudinary = this.handleCloudinary.bind(this);
  }

  componentDidMount() {
    if (this.props.formType === 'edit') {
      const boundSetState = this.setState.bind(this);
      this.props.fetchRecipe(this.props.params.recipeId)
      .then(({ recipe }) => {
        boundSetState({ recipe });
      });
    }
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
      e.preventDefault();
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
    this.setState(newState);
  }

  handleCloudinary(e) {
    e.preventDefault();
    cloudinary.openUploadWidget(CLOUDINARY_OPTIONS,
    (errors, imageInfo) => {
      if (errors === null) {
        const cloudUrl = imageInfo[0].url;
        this.setState(
          merge({}, this.state, {recipe: { img: cloudUrl }})
        );
      }
    });
  }

  removeImage() {
    this.setState({
      img: ""
    });
  }

  handleImageSubmit() {
    if (this.state.img === "") {
      return(
        <div>
          <img src={this.state.img}/>
          <button onClick={this.removeImage}>Replace Image</button>
        </div>
      );
    }
  }

  handleSubmit(e) {
    e.preventDefault();
    const recipe = Object.assign({}, this.state.recipe);
    this.props.processForm(recipe)
      .then(resp => {
        if (resp.recipe.id) {
          hashHistory.push(`/recipes/${resp.recipe.id}`);
        }
        else {

        }
      });
  }

  renderAllIngredients(){
    return(
      <ul>
        {this.state.recipe.ingredients.map((el, idx) => (
          <IngredientForm
            ingredient={el}
            key={idx}
            idx={idx}
            updateIngredientAttributes={this.updateIngredientAttributes} /> ))}
      </ul>
    );
  }

  render(){
    let { errors } = this.props;
    if (errors) {
      errors = errors.map( (error, i ) => <li key={i}>{error}</li>);
    }
    return(
        <form
          className="recipe-form-container"
          onSubmit={ this.handleSubmit.bind(this) }>
          <section className="recipe-form-setup">
            <h2
              className="recipe-form-title">
              { (this.props.params.recipeId) ? "Update" : "Create" } Recipe
            </h2>

            <ul
              className="recipe-form-errors">{ errors }</ul>

            <label className="recipe-form-label">Recipe Name</label>
            <input
              className="recipe-form-attribute"
              type="text"
              placeholder="Recipe Name"
              value={this.state.recipe.name}
              onChange={this.updateRecipeAttributes('name')}/>

            <label className="recipe-form-label">Category</label>
            <select
              className="recipe-form-selector"
              name="tag_id"
              placeholder="Category"
              defaultValue={this.state.recipe.tag_id}
              onChange={this.updateRecipeAttributes('tag_id')}>
              <option value="">-</option>
              <option value="1">Breakfast</option>
              <option value="2">Lunch</option>
              <option value="3">Dinner</option>
              <option value="4">Appetizer</option>
              <option value="5">Drinks</option>
            </select>

            <label className="recipe-form-label">Directions</label>
            <textarea
              className="recipe-form-dir"
              type="textarea"
              placeholder="Directions"
              value={this.state.recipe.directions}
              onChange={this.updateRecipeAttributes('directions')}/>

            <div className="ing-form-container">
              {this.renderAllIngredients()}
              <button
                className="add-ingredient-button"
                onClick={this.handleAddRecipeIngredient}>
                Add Another Ingredient
              </button>
            </div>

            <button
              className="upload-img-button"
              onClick={this.handleCloudinary}>Upload Image</button>

            <button
              type="submit"
              className="recipe-form-button">
              { (this.props.params.recipeId) ? 'Update' : 'Create' } Recipe
            </button>
          </section>
        </form>
    );
  }
}

export default withRouter(RecipeForm);
