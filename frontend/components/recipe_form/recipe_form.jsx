import React from 'react';
import { Link, withRouter } from 'react-router';
import merge from 'lodash/merge';

class RecipeForm extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      name: props.recipe.name,
      directions: props.recipe.directions,
      img: props.recipe.img,
      tag_id: props.recipe.tag_id,
      user_id: props.recipe.user_id
    };
  }

  updateAttributes(attribute){
    return (e) => {
      this.setState({ [attribute]: e.currentTarget.value });
    };
  }

  handleSubmit(e) {
    e.preventDefault();
    const recipe = Object.assign({}, this.state);
    this.props.processForm(recipe);
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
            className="recipe-form-title">{ this.props.formType === 'create' ? "Create" : "Update" } Recipe</h2>

          <p
            className="recipe-form-errors">{this.props.errors}</p>

          <input
            className="recipe-form-attribute"
            type="text"
            placeholder="Recipe Name"
            value={this.state.name}
            onChange={this.updateAttributes('name')}/>

          <input
            className="recipe-form-attribute"
            type="text"
            placeholder="Ingredient"
            value={this.ingredient.name}
            onChange={this.updateAttributes('ingredient')}/>
          // check update attributes for ingredient tables

          <input
            className="recipe-form-attribute"
            type="text"
            placeholder="Quantity"
            value={this.recipe_ingredient.quantity}
            onChange={this.updateAttributes('quantity')}/>
            // add logic for recipe_id/ingredient_id/unit_id updates
            // check update attributes for recipe_ingredients tables
            // button handling

          <input
            className="recipe-form-attribute"
            type="text"
            placeholder="Unit"
            value={this.unit.name}
            onChange={this.updateAttributes('name')}/>
          // check updateAttributes for unit table

          <input
            className="recipe-form-attribute"
            type="textarea"
            placeholder="Directions"
            value={this.recipe.directions}
            onChange={this.updateAttributes('directions')}/>

          <input
            className="recipe-form-attribute"
            type="text"
            placeholder="Image Link"
            value={this.recipe.img}
            onChange={this.updateAttributes('img')}/>

          <input
            className="recipe-form-attribute"
            type="text"
            placeholder="Category"
            value={this.tag.name}
            onChange={this.updateAttributes('name')}/>

          <input
            type="hidden"
            name="user[user_id]"
            value="">{this.currentUser.id}</input>
            // fix updating user_id logic

          <button
            className="recipe-form-button">{ (this.props.formType === 'create ') ? 'Create' : 'Update' } Recipe
          </button>

        </form>
    );
  }
}

export default withRouter(RecipeForm);
