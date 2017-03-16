import React from 'react';
import { Link, withRouter } from 'react-router';

class Recipe extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      username: "",
      password: ""
    };
  }

  componentDidUpdate() {

  }

  redirectIfLoggedIn() {

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

          <h2 className="recipe-form-title">{ (this.props.formType === 'login') ? 'Log In' : 'Sign Up' }</h2>

          <Link to={ this.props.formType === 'login' ? '/signup' : '/login' } />

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

            <label className="recipe-form-label">Ingredients</label>
              <br></br>
              <input className="recipe-form-attributes" type='text' placeholder="Ingredients" onChange={ this.updateAttributes('ingredients') }/>

            <br></br>
            <br></br>

            <label className="recipe-form-label">Ingredients</label>
              <br></br>
              <input className="recipe-form-attributes" type='text' placeholder="Ingredients" onChange={ this.updateAttributes('ingredients') }/>

            <br></br>
            <br></br>

            <button className="recipe-form-button">{ 'Create Recipe' }</button>

          </form>
        </section>
      </div>
    );
  }
}

export default withRouter(Recipe);
