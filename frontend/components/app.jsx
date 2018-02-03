import React from 'react';
import SignupContainer from './session/signup_container';
import { Route } from 'react-router-dom';
import GreetingContainer from './greeting/greeting_container';

const App = () => (
  <div>
    <header>
      <h1>Go Read</h1>
      <GreetingContainer/>
    </header>
    <Route path="/signup" component={SignupContainer} />
  </div>
);

export default App;
