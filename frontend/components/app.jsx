import React from 'react';
import UserContainer from './user/user_container';

const App = ({ children }) => (
  <div>
    <h1>Delectables</h1>
    <UserContainer />
    { children }
  </div>
);

export default App;
