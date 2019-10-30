import axios from 'axios'
import * as types from '../constant/action_constant'

export function fetchSong(title, id){
    return dispatch => {
        dispatch({type: types.START_FETCHING_SONG})
        axios.get(`http://127.0.0.1:3001/api/v1/songs/${title}/${id}`)
            .then(({data})=>{
                console.log(data)
                const newData = {
                    name: data.title,
                    singer: data.artist.name,
                    cover: data.picture,
                    musicSrc: data.url
                }
                dispatch({type: types.FETCH_SONG_SUCCESS, newData})
                dispatch({type: types.ADD_SONG_TO_QUEUE, song: newData})
            })
            .catch(err=>{
                console.log(err);
                dispatch({type: types.FETCH_SONG_FAILURE})
            })
    }
}