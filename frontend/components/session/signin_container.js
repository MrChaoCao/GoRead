import { connect } from 'react-redux';
import { login } from '../../actions/session_actions';
import { withRouter } from 'react-router-dom';
import Signin from './signin'

const mapStateToProps = (state) => {
  return {
    loggedIn: Boolean(state.session.currentUser),
    errors: state.session_errors,
  }
};

const mapDispatchToProps = dispatch => ({
  login: formUser => dispatch(login(formUser)),
  signup: formUser => dispatch(createNewUser(formUser)),
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(Signin));
