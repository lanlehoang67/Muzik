import axios from 'axios';
import * as types from '../constant/action_constant';

export function login(userData) {
//   return dispatch => {
//     dispatch({ type: types.START_PROCESSING });

//     axios.post(`http:127.0.0.1:3001/authenticate`, userData)
//     .then(({ data}) => {
//       localStorage.setItem('token', JSON.stringify(data.token));

//       dispatch({ type: types.LOG_IN_SUCCESS, user });
//       dispatch({ type: types.FINISH_PROCESSING });
//     })
//     .catch(err => {
//       dispatch({ type: types.LOG_IN_FAILURE, errors: err.response.data.errors });
//       dispatch({ type: types.FINISH_PROCESSING });
//     });
//   };
}

export function signup(userData) {
  return dispatch => {
    console.log('true')
    dispatch({ type: types.START_PROCESSING });

    axios.post('http://127.0.0.1:3001/api/v1/users', userData)
    .then(({ data: user }) => {

      dispatch({ type: types.SIGN_UP_SUCCESS, user });
      dispatch({ type: types.FINISH_PROCESSING });
    })
    .catch(err => {
      dispatch({ type: types.SIGN_UP_FAILURE, errors: err.response.data.errors });
      dispatch({ type: types.FINISH_PROCESSING });
    });
  };
}
// export const getUser = (credentials) => {
//     const request = new Request(`${API_URL}/find_user`, {
//       method: "POST",
//       headers: new Headers({
//         "Content-Type": "application/json",
//         "Authorization": `Bearer ${localStorage.token}`,
//       }),
//       body: JSON.stringify({user: credentials})
//     })
//     return fetch(request)
//       .then(response => response.json())
//       .then(userJson => {return userJson})
//       .catch(error => {
//         return error;
//       });
//   }
export function logout() {
  localStorage.removeItem('user');
  return {
    type: types.LOG_OUT,
  };
}

export function clearErrors() {
  return {
    type: types.CLEAR_ERRORS,
  };
}