import { fetchShelves } from '../../actions/shelf_actions';
import { connect } from 'react-redux';
import ShelfIndex from '.shelf_index';

const mapStateToProps = (state, ownProps) => ({
  shelves: Object.values(state.shelves)
});

const mapDispatchToProps = (state, ownProps) => ({
  fetchShelves: () => dispatch(fetchShelves()),
  fetchShelf: (id) => dispatch(fetchShelf(id)),
  createShelf: shelf => dispatch(createShelf(shelf)),
  updateShelf: shelf => dispatch(updateShelf(shelf)),
  deleteShelf: shelfId => dispatch(deleteShelf(shelfId))
})

export default connect(mapStateToProps, mapDispatchToProps)(ShelfIndex);
