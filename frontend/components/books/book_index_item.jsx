import React from 'react';
import { Link } from 'react-router-dom';

const BookIndexItem = ({ book }) => (
  <div>
    <Link to={`/books/${book.id}`}>{book.title}</Link>
  </div>
);

export default BookIndexItem;
