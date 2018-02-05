import { connect } from 'react-redux';
import { createNewUser } from '../../actions/session_actions';
import Signup from './signup'

const mapStateToProps = (state) => {
  return {
    loggedIn: Boolean(state.session.currentUser),
    errors: state.session_errors,
  }
};

const mapDispatchToProps = dispatch => ({
  createNewUser: formUser => dispatch(createNewUser(formUser)),
});

export default connect(mapStateToProps, mapDispatchToProps)(Signup);
