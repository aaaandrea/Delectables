import React from 'react';
import { Link, hashHistory } from 'react-router';

const sessionLinks = () => {
  const login = () => {
    hashHistory.push('/login');
  };

  const signup = () => {
    hashHistory.push('signup');
  };

  return(
    <nav className="login-signup">
      <button className="header-button" onClick={login}>Log In</button>
      <button className="header-button" onClick={signup}>Sign Up</button>
    </nav>
);
};

const personalGreeting = (currentUser, logout) => (
  <hgroup className="header-group">
    <h2 className="header-name">Hi, {currentUser.username}!</h2>
    <button className="header-button" onClick={logout}>Log Out</button>
  </hgroup>
);

const User = ({ currentUser, logout }) => (
  currentUser ? personalGreeting(currentUser, logout) : sessionLinks()
);

export default User;
