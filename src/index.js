import React from 'react';
import { render } from 'react-dom';
import { Provider } from 'react-redux';
import { BrowserRouter as Router } from 'react-router-dom';
import store from './store'
import './index.css';
import * as serviceWorker from './serviceWorker';
import 'bootstrap/dist/css/bootstrap.min.css';
import routes from './routes'
render(
    <Provider store={store}>
        <Router>{routes}</Router>
    </Provider>,
    document.getElementById('root')
)