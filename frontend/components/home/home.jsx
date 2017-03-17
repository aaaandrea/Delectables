import React from 'react';
import { login, logout, signup } from '../../actions/session_actions';
import { Link, withRouter } from 'react-router';

class Home extends React.Component {
  constructor(props){
    super(props);
    this.handleGuest = this.handleGuest.bind(this);
  }

  handleGuest(e) {
    e.preventDefault();
    this.props.login({username: "Guest", password: "password"});
  }

  render(){
    return(
      <div className="home-container">
        <nav className="home-nav">
          <img className="home-img" src="http://res.cloudinary.com/dg0cmca7a/image/upload/v1489704383/michael-browning-188999_agnvtl.jpg" alt="glasses" />
          <button className="demo-button" onClick={this.handleGuest} value="Demo">Demo</button>
        </nav>
      </div>
    );
  }
}

export default withRouter(Home);
