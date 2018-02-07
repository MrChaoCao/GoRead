import { connect } from 'react-redux';
import { fetchBook } from '../../actions/book_actions';
import { withRouter } from 'react-router-dom';
import BookShowModal from './book_show_modal'

const mapStateToProps = (state, ownProps) => {
  console.log(ownProps);
  return {
    loggedIn: Boolean(state.session.currentUser),
    book: ownProps.book,
  }
};

const mapDispatchToProps = dispatch => ({
  fetchBook: id => dispatch(fetchBook(id)),
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(BookShowModal));
