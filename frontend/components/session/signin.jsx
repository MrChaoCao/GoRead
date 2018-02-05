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
  }

  demoUser(){
    return (event) => {
      this.props.login(
       {
          'username': "demouser",
          'password': "password",
        }
      )
    }
  }

  componentWillReceiveProps(nextProps) {
    if (nextProps.loggedIn) {
      this.props.history.push('/');
    }
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
      <div className="session-form">
        <p>Sign In!</p>
        {this.renderErrors()}
        <form onSubmit ={this.handleSubmit} >
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
          <button>Sign In</button>
          <button onClick={this.demoUser()}>DEMO</button>
        </form>
        <nav className="login-signup">
          <Link to="/signup">Sign up!</Link>
        </nav>
      </div>
    )
  }
}

export default Signin;
