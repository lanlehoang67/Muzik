import * as types from '../constant/action_constant'
const initialState = {
    jpop: [],
    cpop: [],
    vpop: [],
    activeChart: 'jpop'
}
export default function(state = initialState, action){
    switch(action.type){
        case types.FETCH_JPOP_CHART:
            return {...state, jpop: action.jpop, activeChart: 'jpop'}
        case types.FETCH_CPOP_CHART:
            return {...state, cpop: action.cpop, activeChart: 'cpop'}
        case types.FETCH_VPOP_CHART: 
            return {...state, vpop: action.vpop, activeChart: 'vpop'}
        default: 
            return state;
    }
}