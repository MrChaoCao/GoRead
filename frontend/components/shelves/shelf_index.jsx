import React from 'react';
import ShelfIndexItem from './shelf_index_item';

class ShelfIndex extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.fetchShelves();
  }

  render () {

    return (
      <div>
        <ul className="shelf-tableau">
          {
            this.props.shelves.map(shelf => <ShelfIndexItem
              shelf={shelf}
              key={shelf.id}/>
            )
          }
        </ul>
      </div>
    );
  }
}

export default ShelfIndex;
