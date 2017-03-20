import React from 'react';
import { Link, withRouter } from 'react-router';
import merge from 'lodash/merge';


class IngredientForm extends React.Component {
  constructor(props) {
    super(props);
    if (this.props.ingredient) {
      this.state = {
        title: this.props.ingredient.title,
        quantity: this.props.ingredient.quantity,
        unit: this.props.ingredient.unit
      };
    } else {
      this.state = {
        title: "",
        quantity: "",
        unit: ""
      };
    }
  }

  updateIngredientAttributes(index, attribute) {
    return(e) => {
      e.preventDefault();
      // const newState = Object.assign({}, this.state);
      // newState.recipe.ingredients[index][attribute] = e.currentTarget.value;
      // this.setState(newState);
    };
  }

  render() {
    return (
        <div>
          <input
            type="text"
            name="ingredient"
            onChange={this.updateIngredientAttributes('title')} />
          <input
            type="text"
            name="quantity"
            onChange={this.updateIngredientAttributes('quantity')} />
          <select
            name="unit"
            onChange={this.updateIngredientAttributes('unit')}>
            <option value="">-</option>
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
  }
}

export default IngredientForm;
