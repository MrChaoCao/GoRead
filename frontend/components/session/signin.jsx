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


  render () {
    return (
      <div className="session-form">
        <h2>Sign In!</h2>
        <form>
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
        </form>
        <nav className="login-signup">
          <Link to="/signup">Sign up!</Link>
        </nav>
      </div>
    )
  }
}

export default Signin;
