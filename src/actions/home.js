import axios from 'axios';
import * as types from '../constant/action_constant'
import {
    startFading,
    stopFading
} from '../actions/ui'
export function fetchTracks() {
    return dispatch => {
        dispatch({
            type: types.START_FETCHING_TRACKS
        })
        dispatch(startFading())

        axios.get('http://127.0.0.1:3001/api/v1/songs' )
            .then(
                data =>
              {
                console.log(data.data)
                dispatch({
                    type: types.FETCH_TRACK_SUCCESS,
                    tracks: data.data
                })
                dispatch(stopFading())
            })
            .catch(() => {
                dispatch({
                    type: types.FETCH_TRACK_FAILURE
                })
                dispatch(stopFading())
            })
    }
}