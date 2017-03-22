import React from 'react';

const IngredientDetail = ({ ingredient }) => (
  <ul>
    <li className='ing-attribute'>{ingredient.title}</li>
    <li className='ing-attribute'>{ingredient.quantity}</li>
    <li className='ing-attribute'>{ingredient.unit}</li>
  </ul>
);

export default IngredientDetail;
