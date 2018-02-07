import * as BookApiUtil from '../util/book_api_util';

export const RECEIVE_ALL_BOOKS = "RECEIVE_ALL_BOOKS";
export const RECEIVE_BOOK = "RECEIVE_BOOK";

export const receiveAllBooks = (books) => ({
  type: RECEIVE_ALL_BOOKS,
  books
});

const receiveBook = book => ({
  type: RECEIVE_BOOK,
  book
});

export const fetchBooks = () => dispatch => (
  BookApiUtil.fetchBooks().then(serverBooks => dispatch(receiveAllBooks(serverBooks)))
);

export const fetchBook = (id) => dispatch => (
  BookApiUtil.fetchBook(id).then(serverBook => dispatch(receiveBook(serverBook)))
);
