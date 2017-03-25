import React from 'react';
import { Link, withRouter } from 'react-router';
import merge from 'lodash/merge';


class IngredientForm extends React.Component {
  constructor(props) {
    super(props);
    if (props.ingredient) {
      this.state = {
        title: props.ingredient.title,
        quantity: props.ingredient.quantity,
        unit: props.ingredient.unit
      };
    } else {
      this.state = {
        title: "",
        quantity: "",
        unit: ""
      };
    }
  }

  componentWillReceiveProps(nextProps) {
    if (nextProps.ingredient) {
      this.setState( {
        title: nextProps.ingredient.title,
        quantity: nextProps.ingredient.quantity,
        unit: nextProps.ingredient.unit
      });
    }
  }


  renderUnits() {
    const unitArray = [
      '',
      'tsp',
      'tbsp',
      'fl oz',
      'cup(s)',
      'pt',
      'qt',
      'gal',
      'ml',
      'l',
      'lb',
      'mg',
      'g',
      'kg',
      'mm',
      'cm',
      'm',
      'in'
    ];

    return unitArray.map((el, idx) => (
      <option value={el} key={idx}>{el}</option>
    ));

  }

  render() {
    return (
        <div>
          <input
            className="ing-form-attribute"
            type="text"
            name="ingredient"
            placeholder="Ingredient Name"
            value={this.state.title}
            onChange={this.props.updateIngredientAttributes(this.props.idx, 'title')} />

          <input
            className="ing-form-attribute"
            type="text"
            name="quantity"
            placeholder="Ingredient Qty"
            value={this.state.quantity}
            onChange={this.props.updateIngredientAttributes(this.props.idx, 'quantity')} />

          <select
            className="recipe-form-units"
            name="unit"
            placeholder="Units"
            defaultValue={this.state.unit}
            onChange={this.props.updateIngredientAttributes(this.props.idx, 'unit')}>
            {this.renderUnits()}
          </select>
        </div>
    );
  }
}

export default IngredientForm;
