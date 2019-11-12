import * as types from '../constant/action_constant'

const initialState = {
    albums: [],
    isLoading: false,
    errors: {}
}

export default function (state = initialState, action){
    switch(action.type){
        case types.GET_ALBUMS_SUCCESS:
            return {...state, albums: action.albums, isLoading: false}
        case types.GET_ALBUMS_FAILURE:
            return {...state, errors: action.errors, isLoading: false}
        case types.ADD_ALBUM:
        default:
            return state;
    }
}