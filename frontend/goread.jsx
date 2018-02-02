import React from 'react';
import ReactDOM from 'react-dom';
import * as UserAPIUtil from './util/user_api_util.js';
import * as SessionAPIUtil from './util/session_api_util.js';
import * as SessionActions from './actions/session_actions';

document.addEventListener('DOMContentLoaded', () => {
  window.fetchUser = UserAPIUtil.fetchUser;
  // window.createUser = UserAPIUtil.createUser;
  window.postSession = SessionAPIUtil.postSession;
  window.deleteSession = SessionAPIUtil.deleteSession;
  window.createUser = SessionActions.createNewUser;
  window.loginUser = SessionActions.login;
  const root = document.getElementById('root');
  ReactDOM.render(<h1>Welcome to Go Read</h1>, root);
});
