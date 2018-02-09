import React from 'react';
import { Link } from 'react-router-dom';
import SigninContainer from '../session/signin_container';
import SignupModalContainer from '../session/signup_modal_container';

const sessionLinks = () => (
  <div className="nav-bar">
    <nav className="nav-right">
      <SigninContainer/>
      <SignupModalContainer/>
    </nav>

    <nav className="nav-general">

    </nav>
  </div>
);

const userIcons = (currentUser, logout) => (
	<nav className="nav-right">
    <h2 className="header-name"> Hello, {currentUser.username}</h2>
    <button className="header-button" onClick={logout}>Log Out</button>
	</nav>
);

const Navbar = ({ currentUser, logout }) => (
  currentUser ? userIcons(currentUser, logout) : sessionLinks()
);

export default Navbar;
