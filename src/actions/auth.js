import axios from 'axios';
import * as types from '../constant/action_constant';

export function login(userData) {
  return dispatch => {
    dispatch({ type: types.START_PROCESSING });

    axios.post('http://127.0.0.1:3001/api/v1/authenticate', userData)
    .then(({ data}) => {
      localStorage.setItem('token', JSON.stringify(data.auth_token));

      dispatch({ type: types.LOG_IN_SUCCESS, userData });
      dispatch({ type: types.FINISH_PROCESSING });
    })
    .catch(err => {
      dispatch({ type: types.LOG_IN_FAILURE, errors: err.response.data.errors });
      dispatch({ type: types.FINISH_PROCESSING });
    });
  };
}

export function signup(userData) {
  return dispatch => {
    dispatch({ type: types.START_PROCESSING });

    axios.post('http://127.0.0.1:3001/api/v1/users', userData)
    .then(data => {
      dispatch({ type: types.SIGN_UP_SUCCESS, data });
      dispatch({ type: types.FINISH_PROCESSING });
      
    })
    .catch(err => {
      dispatch({ type: types.SIGN_UP_FAILURE, errors: err.response.data.errors });
      dispatch({ type: types.FINISH_PROCESSING });
    });
  };
}
export function logout() {
  localStorage.clear();
  return {
    type: types.LOG_OUT,
  };
}

export function clearErrors() {
  return {
    type: types.CLEAR_ERRORS,
  };
}