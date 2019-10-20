/* eslint-disable default-case */
import * as types from '../constant/action_constant'

const initialState = {
    isLoading: false
}

export default function (state = initialState, action){
    switch(action.type){
        case types.START_LOADING:
            return {...state, isLoading: true}
        case types.FINISH_LOADING:
            return {...state, isLoading: false}
        default: 
            return state;
    }
}