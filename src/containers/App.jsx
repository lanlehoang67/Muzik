import React, { Component } from 'react'
import Menu from '../components/Menu/Menu'
import HomePage from './HomePage'
import ReactJkMusicPlayer from "react-jinke-music-player";
import "react-jinke-music-player/assets/index.css";
import {connect} from 'react-redux'

class App extends Component {
    render() {
        console.log(this.props.tracks)
        const options = this.props.tracks == undefined ? null : {

            audioLists: [
              {
                name: this.props.tracks[0].title,
                singer: this.props.tracks[0].artist.name,
                cover: this.props.tracks[0].picture,
                musicSrc: this.props.tracks[0].url,
              },
            ],
              theme: 'light',
              autoPlay: false,
              showMiniModeCover: false,
          
          }
        return (
          <>
            <Menu></Menu>
            <HomePage></HomePage>
            <ReactJkMusicPlayer {...options} ></ReactJkMusicPlayer>
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