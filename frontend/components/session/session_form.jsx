import React from 'react';
import { Link, withRouter } from 'react-router-dom';

class SessionForm extends React.Component {
  constructor(props){
    super(props)
    this.state = {
      username: "",
      password: "",
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.demoLogin = this.demoLogin.bind(this)
  }

  handleSubmit(event){
    event.preventDefault();
    const user = this.state;
    this.props.processForm({user});
  }

  handledemoSubmit(event){
    event.preventDefault();
    this.props.login({
      username: "EAPoe",
      password: "Virginia",
    })
  }

  handleUpdateField(type){
    return (event) =>
    this.setState({[type]: event.target.value});
  }

  renderErrors() {
    return(
      <ul>
        {
          this.props.errors.map((error, idx) => (
            <li
              key={`error-${idx}`}>
              {error}
            </li>
          ))
        }
      </ul>
    );
  }

  render(){
    return(
      <div class="login-form-container">
        <form onSubmit={this.handleSubmit} className="login-form-box">
          Welcome to GoRead!
          Please {this.props.formType} or {this.navLink()}
          {this.renderErrors()}

          <div className="login-form">
            <label>Username:
              <input
                type="text"
                value={this.state.username}
                onChange={this.handleUpdateField('username')}
                className="login-input"/>
            </label>

            <label>Password:
              <input
                type="password"
                value={this.state.password}
                onChange={this.handleUpdateField('password')}
                className="login-input"/>
            </label>

            <input type="submit" value="Submit" />

          </div>
        </form>
      </div>
    );
  }
}

export default withRouter(SessionForm);
