import React from 'react';
import BookIndexItem from './book_index_item';

class BookIndex extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.fetchBooks();
  }

  render () {

    return (
      <div>
        <ul>
          {
            this.props.books.map(book => <BookIndexItem
              book={book}
              key={book.id}/>
            )
          }
        </ul>
      </div>
    );
  }
}

export default BookIndex;
