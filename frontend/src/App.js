//import react
import React from 'react';

//import react router dom
import { Switch, Route } from "react-router-dom";

//import component Register
import Register from './pages/Register';

//import component Login
import Login from './pages/Login';

//import component dashboard
import Dashboard from './pages/Dashboard';

//import component edit
import Edit from './pages/Edit';

function App() {
  return (
    <div>
      <Switch>
        <Route exact path="/" component={Login} />
        <Route exact path="/register" component={Register} />
        <Route exact path="/dashboard" component={Dashboard} />
        <Route exact path='/product/${id}/edit' component={Edit} />
      </Switch>
    </div>
  );
}

export default App;
