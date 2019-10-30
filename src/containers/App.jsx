import React, { Component } from 'react'
import Menu from '../components/Menu/Menu'
import HomePage from './HomePage'

import {connect} from 'react-redux'

class App extends Component {
    render() {
        console.log(this.props.tracks)
        if(this.props.tracks.length >0){
        }
        return (
          <>
            <Menu></Menu>
            <HomePage></HomePage>
            
            </>
        )
    }
}
function mapStateToProps(state){
    const {tracks} = state.trackState;
    return {
        tracks
    }
}
export default connect(mapStateToProps)(App);