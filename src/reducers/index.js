import {
    combineReducers
} from 'redux';
import HomeReducer from './home_reducer'
import TrackReducer from './track_reducer'

export default combineReducers({
    homeState: HomeReducer,
    trackState: TrackReducer
})
