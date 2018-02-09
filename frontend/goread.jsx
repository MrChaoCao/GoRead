//utils
import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store'
import Modal from 'react-modal';
//root component
import Root from './components/root';
import * as ShelfActionCreators from './actions/shelf_actions';

document.addEventListener('DOMContentLoaded', () => {
  let store;
  if (window.currentUser) {
    const preloadedState = { session: { currentUser: window.currentUser } };
    store = configureStore(preloadedState);
    delete window.currentUser;
  } else {
    store = configureStore();
  }

  //Testing
  window.getState = store.getState;
  window.dispatch = store.dispatch;
  window.ShelfActionCreators = ShelfActionCreators;
  //Testing

  const root = document.getElementById('root');
  Modal.setAppElement('#root');
  ReactDOM.render(<Root store={store}/>, root);
});
