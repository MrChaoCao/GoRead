import React from 'react';
import { Link } from 'react-router-dom';

class Signup extends React.Component {
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
        <h2>Sign Up!</h2>
        {this.renderErrors()}
        <form>
          <label>Username:
            <input
              type="text"
              value={this.state.username}
              onChange={this.handleInput('username')}/>
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
    )
  }
}

export default Signup;
