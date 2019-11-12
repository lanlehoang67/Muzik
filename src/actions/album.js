import * as types from '../constant/action_constant'
import axios from 'axios'

export default function getAlbums(){
    return dispatch => {
        dispatch({type: types.START_GET_ALBUMS});
        axios.get("http://127.0.0.1:3001/api/v1/albums")
            .then(data=>{
                console.log(data.data)
                dispatch({type: types.GET_ALBUMS_SUCCESS, albums: data.data});
                dispatch({type: types.FINISH_GET_ALBUMS});
            })
            .catch(err=>{
                console.log(err)
                dispatch({type: types.GET_ALBUMS_FAILURE, errors: err.response.data.errors})
                dispatch({type: types.FINISH_GET_ALBUMS});
            })
    }
}
function addAlbum(){
    return dispatch => {
        axios.post("http://127.0.0.1:3001/api/v1/albums")
        .then(data=>{
            console.log(data)
        })
        .catch(err=>{
            console.log(err)
            
        })
    }
}