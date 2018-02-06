import React from 'react';
import { Link } from 'react-router-dom';
import SigninContainer from '../session/signin_container';
import SignupContainer from '../session/signup_container';

const sessionLinks = () => (
  <nav className="nav-right">
    <SigninContainer/>
    <Link to="/signup">Don't have an Account? Sign up instead!</Link>
  </nav>
);

const userIcons = (currentUser, logout) => (
	<nav className="nav-right">
    <h2 className="header-name"> {currentUser.username}</h2>
    <button className="header-button" onClick={logout}>Log Out</button>
	</nav>
);

const Navbar = ({ currentUser, logout }) => (
  currentUser ? userIcons(currentUser, logout) : sessionLinks()
);

export default Navbar;
