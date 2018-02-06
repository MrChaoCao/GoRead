import React from 'react';
import { Link } from 'react-router-dom';
import Modal from 'react-modal';
import style from './modal_style'

class SignupModal extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      username: "",
      email: "",
      password: "",
      modalOpen: false,
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.clearSessionErrors = this.clearSessionErrors.bind(this);
    this.closeModal = this.closeModal.bind(this);
    this.openModal = this.openModal.bind(this);
  }

  handleInput(type){
    return (event) => {
      this.setState({ [type]: event.target.value });
    }
  }

  handleSubmit(event){
    event.preventDefault();
    this.props.createNewUser(this.state).then(() => this.props.history.push('/chirps'));
    this.clearSessionErrors();
    // home page will replace chirps
  }

  componentWillReceiveProps(nextProps) {
    if (nextProps.loggedIn) {
      this.props.history.push('/');
    }
  }

  componentWillMount(){
    this.clearSessionErrors();
  }

  componentWillUnmount(){
    this.clearSessionErrors();
  }

  clearSessionErrors(){
    this.props.clearErrors();
  }

  closeModal(){
    this.setState( {modalOpen: false} );
  }

  openModal(){
    this.setState( {modalOpen: true} );
  }

  renderErrors() {
    return(
      <ul>
        {this.props.errors.map((error, i) => (
          <li key={`error-${i}`}>
            {error}
          </li>
        ))}
      </ul>
    );
  }

  render () {
    return (
      <div>
        <p onClick={this.openModal}>Don't have an account? Sign up instead!</p>
        <Modal
          contentLabel="Modal"
          isOpen={this.state.modalOpen}
          onRequestClose={this.closeModal}
          style={style}>

          <div className="session-form">
            <h2>Sign Up!</h2>
            {this.renderErrors()}
            <form>
              <label>Username:
                <input
                  type="text"
                  value={this.state.username}
                  onChange={this.handleInput('username')}/>
              </label>

              <label>E-mail:
                <input
                  type="text"
                  value={this.state.email}
                  onChange={this.handleInput('email')}/>
              </label>


              <label>Password:
                <input
                  type="password"
                  value={this.state.password}
                  onChange={this.handleInput('password')}/>
              </label>
              <button onClick={this.handleSubmit}>Sign Up</button>
              <Link to={"/"}>close</Link>
            </form>
          </div>

        </Modal>
      </div>
    )
  }
}

export default SignupModal;
