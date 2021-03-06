import { connect } from 'react-redux';

import { logout } from '../../actions/session_actions';
import Navbar from './navbar';
import { withRouter } from 'react-router-dom';

const mapStateToProps = ({ session }) => ({
  currentUser: session.currentUser
});

const mapDispatchToProps = (dispatch, ownProps) => ({
  logout: () => dispatch(logout())
});

export default withRouter(connect(
  mapStateToProps,
  mapDispatchToProps,
)(Navbar));
