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
          <img src="http://res.cloudinary.com/dg0cmca7a/image/upload/v1489681266/lamb_carrots_zxvqx0.jpg" alt="lamb" />
        </nav>
      </div>
    );
  }
}

export default withRouter(Home);
