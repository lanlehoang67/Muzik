import React, { Component } from 'react'
import Menu from '../components/Menu/Menu'
import HomePage from './HomePage'
import Player from './Player'
import {connect} from 'react-redux'

class App extends Component {
    render() {
        console.log(this.props.tracks)
        if(this.props.tracks.length >0){
        }
        return (
          <>
            <Menu {...this.props}></Menu>
            <HomePage></HomePage>
            <Player></Player>
            </>
        )
    }
}
function mapStateToProps(state){
    const {tracks} = state.trackState;
    const {authenticated} = state.auth;
    return {
        tracks,
        authenticated
    }
}
export default connect(mapStateToProps)(App);