import { fetchShelves } from '../../actions/shelf_actions';
import { connect } from 'react-redux';
import ShelfIndex from '.shelf_index';

const mapStateToProps = (state, ownProps) => ({
  shelves: Object.values(state.shelves)
});

export default connect(mapStateToProps, null)(ShelfIndex);
