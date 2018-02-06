import { connect } from 'react-redux';
import { createNewUser, clearErrors } from '../../actions/session_actions';
import { withRouter } from 'react-router-dom';
import Signup from './signup'

const mapStateToProps = (state) => {
  return {
    loggedIn: Boolean(state.session.currentUser),
    errors: state.session_errors,
  }
};

const mapDispatchToProps = dispatch => ({
  createNewUser: formUser => dispatch(createNewUser(formUser)),
  clearErrors: () => dispatch(clearErrors()),
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(Signup));
