/* eslint-disable default-case */
import * as types from '../constant/action_constant'

const initialState = {
    isLoading: false,
    isSearching: false,
    songs: []
}

export default function (state = initialState, action){
    switch(action.type){
        case types.START_LOADING:
            return {...state, isLoading: true}
        case types.FINISH_LOADING:
            return {...state, isLoading: false}
        case types.START_SEARCHING:
            return {...state, isSearching: true}
        case types.FINISH_SEARCHING:
            return {...state, songs: action.songs}
        default: 
            return state;
    }
}