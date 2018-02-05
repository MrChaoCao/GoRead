import { connect } from 'react-redux';

import { logout } from '../../actions/session_actions';
import Navbar from './navbar';

const mapStateToProps = ({ session }) => ({
  currentUser: session.currentUser
});

const mapDispatchToProps = (dispatch, ownProps) => ({
  logout: () => dispatch(logout())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps,
)(Navbar);
