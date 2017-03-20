import React from 'react';
import { Link, withRouter } from 'react-router';
import merge from 'lodash/merge';

class RecipeForm extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      recipe: props.recipe
    };
  }

  updateIngredientAttributes(index, attribute) {
    return(e) => {
      e.preventDefault();
      const newState = Object.assign({}, this.state);
      newState.recipe.ingredients[index][attribute] = e.currentTarget.value;
      this.setState(newState);
    };
  }

  updateRecipeAttributes(attribute){
    return (e) => {
      this.setState({recipe: { [attribute]: e.currentTarget.value }});
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
    const recipe = Object.assign({}, this.state);
    this.props.processForm(recipe);
  }

  renderIngredientInputs() {
    return this.state.recipe.ingredients.map((ri, idx) => {
      return (
        <div>
          <input
            type="text"
            name="ingredient"
            value={this.state.recipe.ingredients.title}
            onChange={this.updateIngredientAttributes(idx, 'title')} />
          <input
            type="text"
            name="quantity"
            value={this.state.recipe.ingredients.quantity}
            onChange={this.updateIngredientAttributes(idx, 'quantity')} />
          <select
            name="unit"
            value={this.state.recipe.ingredients.unit}
            onChange={this.updateIngredientAttributes(idx, 'unit')}>
            <option value="tsp">tsp</option>
            <option value="tbsp">tbsp</option>
            <option value="fl oz">fl oz</option>
            <option value="cup(s)">cup(s)</option>
            <option value="pt">pt</option>
            <option value="qt">qt</option>
            <option value="gal">gal</option>
            <option value="ml">ml</option>
            <option value="l">l</option>
            <option value="lb">oz</option>
            <option value="mg">mg</option>
            <option value="g">g</option>
            <option value="kg">kg</option>
            <option value="mm">mm</option>
            <option value="cm">cm</option>
            <option value="m">m</option>
            <option value="in">in</option>
          </select>
        </div>
      );
    });
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

          <h2
            className="recipe-form-title">
            { this.props.formType === 'create' ? "Create" : "Update" } Recipe
          </h2>

          <p
            className="recipe-form-errors">{this.props.errors}</p>

          <input
            className="recipe-form-attribute"
            type="text"
            placeholder="Recipe Name"
            value={this.state.recipe.name}
            onChange={this.udpateRecipeAttributes('name')}/>

          <input
            className="recipe-form-attribute"
            type="textarea"
            placeholder="Directions"
            value={this.state.recipe.directions}
            onChange={this.udpateRecipeAttributes('directions')}/>

          <input
            className="recipe-form-attribute"
            type="text"
            placeholder="Image Link"
            value={this.state.recipe.img}
            onChange={this.udpateRecipeAttributes('img')}/>

          <input
            type="hidden"
            name="user_id"
            value={this.state.currentUser.id}
            onChange={this.updateRecipeAttributes('user_id')}/>

          <button
            className="add-ingredient-button"
            onClick={this.renderIngredientInputs()}>Add Ingredient
          </button>

          <select>
            <option
              className="recipe-form-attribute"
              placeholder="Category"
              value={this.state.recipe.tag_id}
              onChange={this.udpateRecipeAttributes('tag_id')}>
            </option>
          </select>

          <button
            className="recipe-form-button">
            { (this.props.formType === 'create ') ? 'Create' : 'Update' } Recipe
          </button>

        </form>
    );
  }
}

export default withRouter(RecipeForm);
