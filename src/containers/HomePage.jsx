import React, { Component } from 'react'
import { connect } from 'react-redux';
import Home from '../components/Home/Home'
import {fetchTracks} from '../actions/home'
import store from '../store'
import { addSongToQueue } from '../actions/queue'
class HomePage extends Component {
    componentDidMount(){
        this.props.fetchTracks()
    }
    render() {
        return (
            <>
            <Home {...this.props}></Home>
            </>
        )
    }
}

function mapStateToProps(state){
    const {isLoading, tracks} = state.trackState;
    const {queue}= state.queueState;
    return {
        isLoading,
        tracks,
        queue
    }
}

export default connect(mapStateToProps, {fetchTracks, addSongToQueue})(HomePage);