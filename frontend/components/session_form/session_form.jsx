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
    // let username;
    // if (this.props.formType === 'login') {
    //   username = "";
    // } else {
    //   username = <input placeholder="username" onChange={ this.updateAttributes('username') }/>;
    // }

    return(
      <section>
        <h2>{ this.props.formType }</h2>
        <Link to={ this.props.formType === 'login' ? '/signup' : '/login' } />
        <p>{ this.props.errors }</p>
        <form onSubmit={ this.handleSubmit.bind(this) }>
					<input type="text" value={this.state.username} onChange={this.updateAttributes('username')}/>
          <input type='password' placeholder="Password" onChange={ this.updateAttributes('password') }/>
          <button>{ this.props.formType }</button>
        </form>
      </section>
    );
  }
}

export default withRouter(SessionForm);
