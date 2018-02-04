import React from 'react';
import SignupContainer from './session/signup_container';
import { Route } from 'react-router-dom';
import GreetingContainer from './greeting/greeting_container';
import SigninContainer from './session/signin_container'

const App = () => (
  <div>
    <header>
      <h1>Go Read</h1>
      <GreetingContainer/>
      <SigninContainer/>
    </header>
    <Route path="/signup" component={SignupContainer} />
  </div>
);

export default App;
