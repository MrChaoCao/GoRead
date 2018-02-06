import React from 'react';
import { Link } from 'react-router-dom';
import SigninContainer from '../session/signin_container';
import SignupContainer from '../session/signup_container';
import SignupModalContainer from '../session/signup_modal_container';

const sessionLinks = () => (
  <nav className="nav-right">
    <SigninContainer/>
    <SignupModalContainer/>
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
