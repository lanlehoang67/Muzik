import * as types from '../constant/action_constant'

const initialState = {
    users: [],
    isLoading: false,
    current_user_id: 0,
    errors: {}
}

export default function (state = initialState, action){
    switch(action.type){
        case types.START_GET_USERS:
            return {...state, isLoading: true}
        case types.GET_USERS_SUCCESS:
            return {...state, users: action.users, isLoading: false}
        case types.GET_USERS_FAILURE:
            return {...state, errors: action.errors, isLoading: false}
        default:
            return state;
    }
}