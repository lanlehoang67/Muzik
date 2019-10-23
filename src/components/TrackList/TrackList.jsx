import React, { Component } from 'react'
import Track from './Track/Track'
class TrackList extends Component {
    render() {
        return (
            <div className="track-list">
                <ul>
                {
                    this.props.tracks.map((track,i)=>{
                       return <Track {...track} {...this.props} key={i}></Track>
                    })
                }
                </ul>
            </div>
        )
    }
}
export default TrackList;