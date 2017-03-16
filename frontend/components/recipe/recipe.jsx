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
      <div className="form-container">
        <section className="form-setup">

          <h2 className="form-title">{ (this.props.formType === 'login') ? 'Log In' : 'Sign Up' }</h2>

          <Link to={ this.props.formType === 'login' ? '/signup' : '/login' } />

            <br></br>
            <br></br>

          <p className="form-errors">{ this.props.errors }</p>

            <br></br>
            <br></br>

          <form onSubmit={ this.handleSubmit.bind(this) }>
            <label className="form-label">Username</label>
              <br></br>
              <input className="form-attributes" type="text" placeholder="username" value={this.state.username} onChange={this.updateAttributes('username')}/>

            <br></br>
            <br></br>

            <label className="form-label">Password</label>
              <br></br>
              <input className="form-attributes" type='password' placeholder="password" onChange={ this.updateAttributes('password') }/>

            <br></br>
            <br></br>

            <button className="form-button">{ (this.props.formType === 'login') ? 'Log In' : 'Create Account' }</button>

            <br></br>
            <br></br>

            <button className="demo-button" onClick={this.handleGuest} value="Demo">Demo</button>

          </form>
        </section>
      </div>
    );
  }
}

export default withRouter(Recipe);
