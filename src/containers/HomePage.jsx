import React, { Component } from 'react'
import { connect } from 'react-redux';
import Home from '../components/Home/Home'
import {fetchTracks} from '../actions/home'
import store from '../store'
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
    return {
        isLoading,
        tracks
    }
}

export default connect(mapStateToProps, {fetchTracks})(HomePage);