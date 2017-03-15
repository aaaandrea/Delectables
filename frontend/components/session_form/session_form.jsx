import React from 'react';
import { Link, withRouter } from 'react-router';

class SessionForm extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      username: "",
      password: ""
    };
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

  render(){
    return(
      <div className="form-container">
        <section className="form-setup">
          <h2 className="form-title">{ (this.props.formType === 'login') ? 'Log In' : 'Sign Up' }</h2>
          <Link to={ this.props.formType === 'login' ? '/signup' : '/login' } />
            <br></br>
            <br></br>
          <p>{ this.props.errors }</p>
          <form onSubmit={ this.handleSubmit.bind(this) }>

  					<label className="form-label">Username</label>
  					<br></br>
  					<input className="form-attributes" type="text" value={this.state.username} onChange={this.updateAttributes('username')}/>

  					<br></br>
  					<br></br>

  					<label className="form-label">Password</label>
  					<br></br>
            <input className="form-attributes" type='password' placeholder="Password" onChange={ this.updateAttributes('password') }/>

  					<br></br>
  					<br></br>

            <button className="form-button">{ (this.props.formType === 'login') ? 'Log In' : 'Create Account' }</button>

          </form>
        </section>
      </div>
    );
  }
}

export default withRouter(SessionForm);
