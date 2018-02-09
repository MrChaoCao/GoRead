import React from 'react';
import { Link } from 'react-router-dom';

class Signin extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      username: "",
      password: "",
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.clearSessionErrors = this.clearSessionErrors.bind(this);
  }

  handleInput(type){
    return (event) => {
      this.setState({ [type]: event.target.value });
    }
  }

  handleSubmit(event){
    event.preventDefault();
    this.props.login(this.state).then(() => this.props.history.push('/chirps'));
      // home page will replace chirps
    this.clearSessionErrors();
  }

  demoUser(event){
    event.preventDefault();
    return (event) => {
      this.clearSessionErrors();
      this.props.login(
       {
          username: "demouser",
          password: "password",
        }
      )
    }
  }

  componentWillReceiveProps(nextProps) {
    if (nextProps.loggedIn) {
      this.props.history.push('/');
      this.clearSessionErrors();
    }
  }

  componentWillMount(){
    this.clearSessionErrors();
  }

  renderErrors() {
    return(
      <ul className="errors">
        {this.props.errors.map((error, i) => (
          <li key={`error-${i}`}>
            {error}
          </li>
        ))}
      </ul>
    );
  }

  clearSessionErrors(){
    this.props.clearErrors();
  }

  render () {
    return (
      <div className="session-form">
        {this.props.location.pathname === '/' && this.renderErrors()}

        <form >
          <label>
            <input
              type="text"
              placeholder="Username"
              value={this.state.username}
              onChange={this.handleInput('username')}/>
          </label>

          <label>
            <input
              type="password"
              placeholder="Password"
              value={this.state.password}
              onChange={this.handleInput('password')}/>
          </label>

          <button onClick={this.handleSubmit}>Sign In</button>
          <button onClick={this.demoUser(event)}>Demo</button>

        </form>
      </div>
    )
  }
}

export default Signin;
