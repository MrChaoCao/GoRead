import {
  RECEIVE_ALL_SHELVES,
  RECEIVE_SHELF,
  REMOVE_SHELF,
} from '../actions/shelf_actions';
import { RECEIVE_CURRENT_USER } from '../actions/session_actions' ;
import merge from 'lodash/merge';

export default(state = {}, action) => {
  Object.freeze(state);

  switch (action.type) {
    case RECEIVE_CURRENT_USER:
      return merge({}, state, action.payload.shelves);
    case RECEIVE_ALL_SHELVES:
      return merge({}, action.shelves);
    case RECEIVE_SHELF:
      return merge({}, state, {[action.shelf.id]: action.shelf});
    case REMOVE_SHELF:
      let newState = merge({}, state );
      delete newSTate[action.shelfId];
      return newState;
    default:
      return state;
  }
};
