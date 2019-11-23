import * as types from '../constant/action_constant'

const initialState = {
    isLoading: false,
    errors: []
}

export default function(state = initialState, action){
    switch(action.type){
        case types.START_ADD_SONG:
            return {...state, isLoading: true}
        case types.ADD_SONG_SUCCESS:
            return {...state, isLoading: false}
        case types.ADD_SONG_FAILURE:
            return {...state, errors: action.errors}
        default: 
            return state;
    }
}