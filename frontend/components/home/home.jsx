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
          <img className="home-img" src="http://res.cloudinary.com/dg0cmca7a/image/upload/v1489704383/michael-browning-188999_agnvtl.jpg" alt="glasses" />
        </nav>
      </div>
    );
  }
}

export default withRouter(Home);
