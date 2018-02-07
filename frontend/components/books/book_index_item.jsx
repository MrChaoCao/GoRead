import React from 'react';
import { Link } from 'react-router-dom';
import BookShowModalContainer from './book_show_modal_container';

const BookIndexItem = ({ book }) => (
  <div className="index-book">
    <Link to={`/books/${book.id}`}>{book.title}</Link>

    <p>{book.author}</p>

    <BookShowModalContainer book={ book }/>

  </div>
);

export default BookIndexItem;
