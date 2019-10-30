import * as types from '../constant/action_constant'
import {fetchSong} from './song'
export function addSongToQueue(song){
    const {title, id} = song;
    const newData = {
        name: song.title,
        singer: song.artist.name,
        cover: song.picture,
        musicSrc: Promise.resolve(song.url)
    }
    return (dispatch, getState ) => {
        const queue = getState().queueState.queue;
        dispatch(fetchSong(title,id)) 
    }
}