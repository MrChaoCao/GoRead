import {
  deleteSession,
  postSession,
} from '../util/session_api_util';

import {
  createUser,
} from '../util/user_api_util';

export const RECEIVE_CURRENT_USER = "RECEIVE_CURRENT_USER";
export const LOGOUT_CURRENT_USER = "LOGOUT_CURRENT_USER";
export const RECEIVE_SESSION_ERRORS = "RECEIVE_SESSION_ERRORS";
export const CLEAR_ERRORS = "CLEAR_ERRORS";

const receiveCurrentUser = payload => ({
  type: RECEIVE_CURRENT_USER,
  payload
});

const logoutCurrentUser = () => ({
  type: LOGOUT_CURRENT_USER,
});

export const receiveErrors = errors => ({
  type: RECEIVE_SESSION_ERRORS,
  errors
});

export const clearErrors = () => ({
  type: CLEAR_ERRORS,
});


export const createNewUser = (formUser) => dispatch => (
  createUser(formUser).then(payload => dispatch(receiveCurrentUser(payload)), err => dispatch(receiveErrors(err.responseJSON))
));

export const login = formUser => dispatch => ( postSession(formUser).then(payload => dispatch(receiveCurrentUser(payload)), err => dispatch(receiveErrors(err.responseJSON))
));

export const logout = () => dispatch => deleteSession().then( () => dispatch(logoutCurrentUser()));
