import React from 'react';
import { Link } from 'react-router-dom';
import BookShowModalContainer from './book_show_modal_container';

const BookIndexItem = ({ book }) => (
  <div className="index-book">

    <BookShowModalContainer book={ book }/>


  </div>
);

export default BookIndexItem;
