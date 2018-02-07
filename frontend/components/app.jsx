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
import { AuthRoute, ProtectedRoute } from '../util/route_util';

import GreetingContainer from './greeting/greeting_container';
import NavbarContainer from './navbar/navbar_container';
import BookIndexContainer from './books/book_index_container';
import tempHome from './temphome/temphome';

const App = () => (
  <div>
    <header>
      <Link to="/" className = "header-link">
        <img className="icon" src={window.staticImages.bookicon}></img>
        Go read
      </Link>
      <NavbarContainer/>
      <BookIndexContainer/>
    </header>


    <Switch>
      <Route exact path="/" component={tempHome}/>
      <AuthRoute exact path="/signup" component={SignupContainer} />
      <Route render={ () => <Redirect to="/"/> }/>
    </Switch>
  </div>
);

export default App;
