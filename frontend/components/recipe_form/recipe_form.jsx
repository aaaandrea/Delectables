import React from 'react';
import { Link, withRouter } from 'react-router';
import merge from 'lodash/merge';

class RecipeForm extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      recipe: {
        name: props.recipe.name,
        directions: props.recipe.directions,
        img: props.recipe.img,
        tag_id: props.recipe.tag_id,
        user_id: props.recipe.user_id
      },
      recipe_ingredients: []
    };
  }

  updateRecipeIngredient(index, attribute) {
    return(e) => {
      const newState = Object.assign({}, this.state);
      newState.recipe_ingredients[index][attribute] = e.currentTarget.value;
      this.setState(newState);
    };
  }

  updateAttributes(attribute){
    return (e) => {
      this.setState({recipe: { [attribute]: e.currentTarget.value }});
    };
  }

  handleAddIngredient() {
    const newState = Object.assign({}, this.state);
    newState.recipe_ingredients.push({});
    this.setState(newState);
  }

  handleSubmit(e) {
    e.preventDefault();
    const recipe = Object.assign({}, this.state);
    this.props.processForm(recipe);
  }

  renderIngredientInputs() {
    return this.state.recipe_ingredients.map((ri, idx) => {
      return (
        <div>
          <input
            name="quantity"
            onChange={this.updateRecipeIngredient(idx, 'quantity')} />
          <select>
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
            className="recipe-form-title">{ this.props.formType === 'create' ? "Create" : "Update" } Recipe</h2>

          <p
            className="recipe-form-errors">{this.props.errors}</p>

          <input
            className="recipe-form-attribute"
            type="text"
            placeholder="Recipe Name"
            value={this.state.recipe.name}
            onChange={this.updateAttributes('name')}/>

          <input
            className="recipe-form-attribute"
            type="textarea"
            placeholder="Directions"
            value={this.state.recipe.directions}
            onChange={this.updateAttributes('directions')}/>

          <input
            className="recipe-form-attribute"
            type="text"
            placeholder="Image Link"
            value={this.state.recipe.img}
            onChange={this.updateAttributes('img')}/>

          <input
            type="hidden"
            name="user[user_id]"
            value="">{this.state.id}</input>
            // fix updating user_id logic


          <input
            className="recipe-form-attribute"
            type="text"
            placeholder="Category"
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
            value={this.recipe_ingredients.quantity}
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

          <button
            className="recipe-form-button">{ (this.props.formType === 'create ') ? 'Create' : 'Update' } Recipe
          </button>

        </form>
    );
  }
}

export default withRouter(RecipeForm);
