import {
  RECEIVE_ALL_BOOKS,
  RECEIVE_BOOK,
} from '../actions/book_actions';
import merge from 'lodash/merge';

const BooksReducer = (state = {}, action) => {
  Object.freeze(state);

  switch (action.type) {
    case RECEIVE_ALL_BOOKS:
      return merge({}, action.books);
    case RECEIVE_BOOK:
      return merge({}, oldState, {[action.book.id]: action.book});
    default:
      return state;
  }
};

export default BooksReducer;
