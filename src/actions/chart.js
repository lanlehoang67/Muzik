import * as types from '../constant/action_constant'
import Axios from 'axios'

const chartTypes = {
    vpop: "vpop",
    cpop: "cpop",
    jpop: "jpop"
}

export function fetchChart(typeOfChart){
    return dispatch => {
        Axios.get(`http://127.0.0.1:3001/api/v1/genres/${typeOfChart}/songs`)
              .then(data => {
                  switch(typeOfChart){
                      case chartTypes.vpop: 
                      console.log(data)
                        return dispatch({type: types.FETCH_VPOP_CHART, vpop: data.data.songs});
                      case chartTypes.jpop:
                        return dispatch({type: types.FETCH_JPOP_CHART, jpop: data.data.songs})
                      case chartTypes.cpop:
                        return dispatch({type: types.FETCH_CPOP_CHART, cpop: data.data.songs})
                      default:
                        break;
                  }
              })
              .catch(err => {throw err;})
    }
}

export function changeChart(nextChart){
    return (dispatch, getState) => {
        const state = getState();
        const currentChart = state.chartState.activeChart
        if(nextChart != currentChart ){
            dispatch({type: types.CHANGE_ACTIVE_CHART, activeChart: nextChart})
        }
    }
}