
import React from 'react';
import { Provider } from 'react-redux';
import {  Router, Route, IndexRoute, hashHistory } from 'react-router';

import App from './app';
import SessionFormContainer from './session_form/session_form_container';
import HomeContainer from './home/home_container';
import RecipeFormContainer from './recipe_form/recipe_form_container';
import RecipeDetail from './recipe_detail/recipe_detail_container';

const Root = ({ store }) => {

  const _ensureLoggedIn = (nextState, replace) => {
    const currentUser = store.getState().session.currentUser;
    if (!currentUser) {
      replace('/login');
    }
  };

  const _redirectIfLoggedIn = (nextState, replace) => {
    const currentUser = store.getState().session.currentUser;
    if (currentUser) {
      replace('/');
    }
  };

  return(
  <Provider store={ store }>
    <Router history={ hashHistory }>
      <Route path="/" component={ App } >
        <IndexRoute component={HomeContainer}  />
        <Route
          path="/login"
          component={SessionFormContainer}
          onEnter={_redirectIfLoggedIn} />
        <Route
          path="/signup"
          component={SessionFormContainer}
          onEnter={_redirectIfLoggedIn} />
        <Route
          path="/recipes/create"
          component={RecipeFormContainer}
          onEnter={_ensureLoggedIn}/>
        <Route
          path="/recipes/:recipeId"
          component={RecipeDetail}/>
      </Route>
    </Router>
  </Provider>
);
};

export default Root;
