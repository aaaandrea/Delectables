import React from 'react';
import { Link, withRouter } from 'react-router';

class SessionForm extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      username: "",
      password: ""
    };
    this.handleGuest = this.handleGuest.bind(this);
  }

  componentDidUpdate() {
		this.redirectIfLoggedIn();
	}

	redirectIfLoggedIn() {
		if (this.props.loggedIn) {
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
    const user = Object.assign({}, this.state);
    this.props.processForm(user);
  }

  handleGuest(e) {
    e.preventDefault();
    this.props.login({username: "Guest", password: "password"});
  }

  render(){
    return(
      <div className="form-container">
        <section className="form-setup">

          <h2 className="form-title">{ (this.props.formType === 'login') ? 'Log In' : 'Sign Up' }</h2>

          <Link to={ this.props.formType === 'login' ? '/signup' : '/login' } />

          <p className="form-errors">{ this.props.errors }</p>

          <form onSubmit={ this.handleSubmit.bind(this) }>

    					<input className="form-attributes" type="text" placeholder="username" value={this.state.username} onChange={this.updateAttributes('username')}/>

  					<br></br>
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

export default withRouter(SessionForm);
