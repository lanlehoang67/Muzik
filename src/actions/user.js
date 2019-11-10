import * as types from '../constant/action_constant'
import axios from 'axios'

export default function getUsers(){
    return dispatch => {
        dispatch({type: types.START_GET_USERS});
        axios.get("http://127.0.0.1:3001/api/v1/users")
            .then(data=>{
                dispatch({type: types.GET_USERS_SUCCESS, users: data.users});
                dispatch({type: types.FINISH_GET_USERS});
            })
            .catch(err=>{
                dispatch({type: types.GET_USERS_FAILURE, errors: err.response.data.errors})
                dispatch({type: types.FINISH_GET_USERS});
            })
    }
}