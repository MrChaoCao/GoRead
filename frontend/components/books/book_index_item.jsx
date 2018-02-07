import React from 'react';
import { Link } from 'react-router-dom';

const BookIndexItem = ({ book }) => (
  <div className="index-book">
    <Link to={`/books/${book.id}`}>{book.title}</Link>
    <p>{book.author}</p>
    <img className="book-cover" src={book.img_url}></img>
  </div>
);

export default BookIndexItem;
