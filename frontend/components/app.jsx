import React from 'react';
import SignupContainer from './session/signup_container';
import SigninContainer from './session/signin_container'
import {
  Route,
  Redirect,
  Switch,
  Link,
  HashRouter
} from 'react-router-dom';

import GreetingContainer from './greeting/greeting_container';
import NavbarContainer from './navbar/navbar_container';
import { AuthRoute, ProtectedRoute } from '../util/route_util';

const App = () => (
  <div>
    <header>
      <h1>Go Read</h1>
      <NavbarContainer/>
    </header>

    <Switch>
      <AuthRoute path="/signin" component={SigninContainer} />
      <AuthRoute exact path="/signup" component={SignupContainer} />
    </Switch>
  </div>
);

export default App;
