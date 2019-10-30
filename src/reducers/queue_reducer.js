import * as types from '../constant/action_constant'

const initialState = {
    queue: [],
    ids: []
}

export default function(state = initialState, action){
    switch(action.type){
        case types.ADD_SONG_TO_QUEUE:
            return addSongToQueue(state, action);
        default:
            return state;
    }
}

function addSongToQueue(state, action){
    const element = state.ids.find(id => id == action.song.id);
    console.log(element)
    if(typeof element == 'undefined'){
        return {queue: [...state.queue, action.song], ids: [...state.ids, action.id]}
    }
    return state;
}