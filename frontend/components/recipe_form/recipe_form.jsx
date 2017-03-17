import React from 'react';
import { Link, withRouter } from 'react-router';
import merge from 'lodash/merge';

class RecipeForm extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      name: "",
      tag_id: "",
      ingredients: "",
      directions: "",
      img: ""
    };
  }

  renderErrors() {
    return(
      <ul>
        {this.props.errors.map((error, i) => (
          <li className="recipe-form-errors" key={`error-${i}`}>
            {error}
          </li>
        ))}
      </ul>
    );
  }


  componentDidUpdate() {
    this.props.clearErrors();
    this.props.fetchRecipes().then(() => {
      let newRecipe = merge({}, this.props.recipe);
      newRecipe.ingredients = newRecipe.ingredients.map( el => el.name);
      this.setState(merge({}, newRecipe));
    });
  }

  redirectIfNotLoggedIn() {
    if (!this.props.loggedIn) {
      this.props.router.push("/");
    }
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
    return(
      <div className="recipe-form-container">
        <section className="recipe-form-setup">

          <h2 className="recipe-form-title">{ (this.props.formType === 'create') ? 'Create Recipe' : 'Edit Recipe' }</h2>

          <Link to={ this.props.formType === 'create' ? '/recipes' : `/recipe/${id}` } />

            <br></br>
            <br></br>

          <p className="recipe-form-errors">{ this.props.errors }</p>

            <br></br>
            <br></br>

          <form onSubmit={ this.handleSubmit.bind(this) }>
            <label className="recipe-form-label">Recipe Name</label>
              <br></br>
              <input className="recipe-form-attributes" type="string" placeholder="Recipe Name" value={this.state.username} onChange={this.updateAttributes('name')}/>

            <br></br>
            <br></br>

            <label className="recipe-form-label">Category</label>
              <br></br>
              <input className="recipe-form-attributes" type='text' placeholder="tag" onChange={ this.updateAttributes('tag') }/>

            <br></br>
            <br></br>

            <label className="recipe-form-label">Ingredients</label>
              <br></br>
              <input className="recipe-form-attributes" type='text' placeholder="Ingredients" onChange={ this.updateAttributes('ingredients') }/>

            <br></br>
            <br></br>

            <label className="recipe-form-label">Ingredients</label>
              <br></br>
              <input className="recipe-form-attributes" type='text' placeholder="Directions" onChange={ this.updateAttributes('directions') }/>

            <br></br>
            <br></br>

            <label className="recipe-form-label">Picture</label>
              <br></br>
              <input className="recipe-form-attributes" type='text' placeholder="Image" onChange={ this.updateAttributes('img') }/>

            <br></br>
            <br></br>

            <button className="recipe-form-button">{ 'Create Recipe' }</button>

          </form>
        </section>
      </div>
    );
  }
}

export default withRouter(RecipeForm);
