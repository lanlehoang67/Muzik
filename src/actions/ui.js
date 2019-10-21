import * as types from '../constant/action_constant'
export function startFading() {
    return {
        type: types.START_FADING
    }
}
export function stopFading() {
    return {
        type: types.STOP_FADING
    }
}