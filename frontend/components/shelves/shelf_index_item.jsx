import React from 'react';
import { Link } from 'react-router-dom';

const ShelfIndexItem = ({ shelf }) => (
  <div className="index-shelf">
    {
      shelf.books.map(book => <BookShelfItem
        book={book}
        key={book.id}/>
      )
    }
  </div>
)
