import React, { Component } from 'react'
import ReactJkMusicPlayer from "react-jinke-music-player";
import "react-jinke-music-player/assets/index.css";
import {connect} from 'react-redux'

class Player extends Component {
    render() {
      console.log('player')
      console.log(this.props)

      const options =  {

          audioLists: this.props.queue,
          mode: 'full',
          theme: 'light',
          autoPlay: true,
          showMiniModeCover: false,
      
      }
        return (
            <ReactJkMusicPlayer className="dark-theme" {...options} ></ReactJkMusicPlayer>

        )
    }
}
const mapStateToProps = state => {
  return state.queueState;
}
export default connect(mapStateToProps)(Player);