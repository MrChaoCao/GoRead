import React from 'react';
import SignupContainer from './session/signup_container';

export default () => (
  <div>
    <Route path="/signup" component={SignupContainer} />
  </div>
);
