import React from 'react';
import UserContainer from './user/user_container';

const App = ({ children }) => (
  <div>
    <UserContainer />
    { children }
  </div>
);

export default App;
