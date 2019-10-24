import React, { Component } from 'react'
import Menu from '../components/Menu/Menu'
import HomePage from './HomePage'
import ReactJkMusicPlayer from "react-jinke-music-player";
import "react-jinke-music-player/assets/index.css";
import {connect} from 'react-redux'
const options =  {

  audioLists: [
    
  ],
    mode: 'full',
    theme: 'light',
    autoPlay: false,
    showMiniModeCover: false,

}
class App extends Component {
    render() {
        console.log(this.props.tracks)
       
        return (
          <>
            <Menu></Menu>
            <HomePage></HomePage>
            <ReactJkMusicPlayer className="light-theme" {...options} ></ReactJkMusicPlayer>
            </>
        )
    }
}
function mapStateToProps(state){
    const {tracks} = state;
    return {
        tracks
    }
}
export default connect(mapStateToProps)(App);