import * as types from '../constant/action_constant'
import {fetchSong} from './song'
export function addSongToQueue(song){
    const {title, id} = song;
    
    return (dispatch ) => {
       
        dispatch(fetchSong(title,id)) 
    }
}