import { fetchBooks } from '../../actions/book_actions';
import { connect } from 'react-redux';
import BookIndex from './book_index';

const mapStateToProps = (state, ownProps) => ({
  books: Object.values(state.books)
});

const mapDispatchToProps = (dispatch, ownProps) => ({
  fetchBooks: () => dispatch(fetchBooks())
});

export default connect(mapStateToProps, mapDispatchToProps)(BookIndex);
