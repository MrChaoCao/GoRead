import React from 'react';
import { Link } from 'react-router-dom';

const BookIndexItem = ({ book }) => (
  <div className="indexBook">
    <Link to={`/books/${book.id}`}>{book.title}</Link>
    <p>{book.author}</p>
    <img src={book.img_url}></img>
  </div>
);

export default BookIndexItem;
