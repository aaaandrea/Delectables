import React from 'react';
import {  Router, Route, IndexRoute, hashHistory } from 'react-router';
import App from './app';
import { Provider } from 'react-redux';

const Root = ({ store }) => {
  debugger;
  return(
  <Provider store={ store }>
    <Router history={ hashHistory }>
      <Route path="/" component={ App } />
    </Router>
  </Provider>
);
};

export default Root;
