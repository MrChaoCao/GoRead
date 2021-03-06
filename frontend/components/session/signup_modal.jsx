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
    this.props.createNewUser(this.state).then(() => this.clearSessionErrors());
  }

  clearSessionErrors(){
    this.props.clearErrors();
  }

  closeModal(){
    this.setState( {modalOpen: false} );
    this.clearSessionErrors();
  }

  openModal(){
    this.setState( {modalOpen: true} );
    this.clearSessionErrors();
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
      <div className="signup-button">
        <p onClick={this.openModal}>Don't have an account? Sign up instead!</p>
        <Modal
          contentLabel="Modal"
          isOpen={this.state.modalOpen}
          onRequestClose={this.closeModal}
          style={style}>

          <div className="signup-form">
            <h2>Sign Up!</h2>
            {this.renderErrors()}
            <br/>
            <form>
              <p>Username:</p>
                <input
                  type="text"
                  value={this.state.username}
                  onChange={this.handleInput('username')}/>
              <br/>
              <p>Email:</p>
                <input
                  type="text"
                  value={this.state.email}
                  onChange={this.handleInput('email')}/>

              <br/>
              <p>Password:</p>
                <input
                  type="password"
                  value={this.state.password}
                  onChange={this.handleInput('password')}/>

              <br/>
              <button onClick={this.handleSubmit}>Sign Up</button>
            </form>
          </div>

        </Modal>
      </div>
    )
  }
}

export default SignupModal;
