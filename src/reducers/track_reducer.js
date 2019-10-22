import * as types from '../constant/action_constant'

const initialState = {
    tracks: [],
    isLoading: false
}
export default function (state = initialState, action) {
    switch (action.types) {
        case types.START_FETCHING_TRACKS:
            return {
                ...state, isLoading: true
            };
        case types.FETCH_TRACK_SUCCESS:
            return fetchTrackSuccess(state, action);
        case types.FETCH_TRACK_FAILURE:
            return {
                ...state, isLoading: false
            };
        default:
            return state;
    }
}

function compareTwoTrack(track1, track2) {
    return track1.id === track2.id
}

function fetchTrackSuccess(state, action) {
    let tracks = state.tracks;
    if (state.tracks.length > 0 && compareTwoTrack(state.tracks[0], action.tracks[0])) {
        tracks = tracks.concat(action.tracks)
    }
    return {
        ...state,
        tracks,
        isLoading: false
    }
}