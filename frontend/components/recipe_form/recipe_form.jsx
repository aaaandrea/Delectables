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
        <form className="recipe-form-container" onSubmit={ this.handleSubmit.bind(this) }>

          <h2 className="recipe-form-title">{ this.props.formType === 'create' ? "Create" : "Update" } Recipe</h2>

          <br></br>
          <br></br>

          <p className="recipe-form-errors">{this.props.errors}</p>

          <br></br>
          <br></br>

          <label className="recipe-form-title">Recipe name</label>
          <input className="recipe-form-attribute"></input>

          <br></br>
          <br></br>

          <label className="recipe-form-title">Ingredients</label>
          <input className="recipe-form-attribute"></input>

          <br></br>
          <br></br>


          <label className="recipe-form-title">Directions</label>
          <input className="recipe-form-attribute"></input>

          <br></br>
          <br></br>


          <label className="recipe-form-title">Image Link</label>
          <input className="recipe-form-attribute"></input>

          <br></br>
          <br></br>


          <label className="recipe-form-title">Category</label>
          <input className="recipe-form-attribute"></input>

          <br></br>
          <br></br>

          <input type="hidden" name="user[user_id]" value="">{this.currentUser.id}</input>

          <button className="recipe-form-button">{ (this.props.formType === 'create ') ? 'Create' : 'Update' } Recipe</button>

        </form>
    );
  }
}

export default withRouter(RecipeForm);
