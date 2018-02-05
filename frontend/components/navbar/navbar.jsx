import React from 'react';
import { Link } from 'react-router-dom';
import SigninContainer from '../session/signin_container';

const sessionLinks = () => (
  <nav className="login-signup">
    <SigninContainer/>
  </nav>
);

const userIcons = (currentUser, logout) => (
	<hgroup className="header-group">
    <h2 className="header-name"> {currentUser.username}</h2>
    <button className="header-button" onClick={logout}>Log Out</button>
	</hgroup>
);

const Navbar = ({ currentUser, logout }) => (
  currentUser ? userIcons(currentUser, logout) : sessionLinks()
);

export default Navbar;
