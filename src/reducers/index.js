import {
    combineReducers
} from 'redux';
import HomeReducer from './home_reducer'
import TrackReducer from './track_reducer'
import ChartReducer from './chart_reducer'
export default combineReducers({
    homeState: HomeReducer,
    trackState: TrackReducer,
    chartState: ChartReducer
})
