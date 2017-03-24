import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';
import {fetchTags} from './actions/tag_actions';

document.addEventListener('DOMContentLoaded', () => {
    window.fetchTags = fetchTags;
    const root = document.getElementById('root');
    let store;
    if (window.currentUser) {
      const preLoadedState = { session: { currentUser: window.currentUser } };
      store = configureStore(preLoadedState);
    } else {
      store = configureStore();
    }
    window.store = store;
    ReactDOM.render(<Root store={ store } />, root);
});
