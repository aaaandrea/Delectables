import React from 'react';
import { Link, withRouter } from 'react-router';

class Home extends React.Component {
  constructor(props){
    super(props);
  }

  render(){
    return(
      <div className="home-container">
        <nav className="home-nav">
          <img src="/assets/lamb_carrots.jpeg" alt="lamb" />
        </nav>
      </div>
    );
  }
}

export default withRouter(Home);
