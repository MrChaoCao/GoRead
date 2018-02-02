import React from 'react';
import ReactDOM from 'react-dom';
import * as UserAPIUtil from './util/user_api_util.js';
// import { createNewUser } from './util/session_api_util.js';
import * as SessionActions from './actions/session_actions';
import configureStore from './store/store'

document.addEventListener('DOMContentLoaded', () => {
  // window.fetchUser = UserAPIUtil.fetchUser;
  // window.createUser = UserAPIUtil.createUser;
  const store = configureStore();
  // window.postSession = SessionAPIUtil.postSession;
  // window.deleteSession = SessionAPIUtil.deleteSession;
  window.getState = store.getState;
  window.dispatch = store.dispatch;

  window.createUser = SessionActions.createNewUser;
  window.loginUser = SessionActions.login;
  const root = document.getElementById('root');
  ReactDOM.render(<h1>Welcome to Go Read</h1>, root);
});
