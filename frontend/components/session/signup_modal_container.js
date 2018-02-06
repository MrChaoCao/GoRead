import { connect } from 'react-redux';
import { createNewUser, clearErrors } from '../../actions/session_actions';
import { withRouter } from 'react-router-dom';
import SignupModal from './signup_modal'

const mapStateToProps = (state, ownProps) => {
  return {
    loggedIn: Boolean(state.session.currentUser),
    errors: state.session_errors,
    closeModal: ownProps.closeModal
  }
};

const mapDispatchToProps = dispatch => ({
  createNewUser: formUser => dispatch(createNewUser(formUser)),
  clearErrors: () => dispatch(clearErrors()),
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(SignupModal));
