import React from 'react';
import './App.css';
import Home from './components/Home/Home'
import { BrowserRouter as Router, Switch, Route, Link } from 'react-router-dom';  
function App() {
  return (
    <Router>
      <div>
        <Switch>
          <Route path="/" component={Home}></Route>
        </Switch>
      </div>
    </Router>
  );
}

export default App;
