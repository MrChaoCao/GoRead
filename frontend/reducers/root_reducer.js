import { combineReducers } from 'redux';
import sessionReducer from './session_reducer';
import sessionErrorsReducer from './session_errors_reducer'
import booksReducer from './books_reducer'
import shelvesReducer from './shelves_reducer'

export default combineReducers({
  session: sessionReducer,
  session_errors: sessionErrorsReducer,
  books: booksReducer,
  shelves: shelvesREducer,
})
