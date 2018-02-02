import React from 'react';
import ReactDOM from 'react-dom';
import * as UserAPIUtil from './util/user_api_util.js'

document.addEventListener('DOMContentLoaded', () => {
  window.fetchUser = UserAPIUtil.fetchUser;
  window.createUser = UserAPIUtil.createUser;
  const root = document.getElementById('root');
  ReactDOM.render(<h1>Welcome to Go Read</h1>, root);
});
