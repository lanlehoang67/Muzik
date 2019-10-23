import {
    createStore,
    applyMiddleware
} from 'redux';
import thunk from 'redux-thunk';
import _throttle from 'lodash.throttle';
import rootReducer from './reducers/index';
let middleware = [thunk];
// apply logger middleware in the development environment
const store = createStore(rootReducer, applyMiddleware(...middleware));
store.subscribe(()=>console.log(store.getState()))
export default store;


// save songs in queue to the localStorage every 1 minutes