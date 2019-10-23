import React, { Component } from 'react'
import Track from './Track/Track'

const styles = {
    title: {
        textTransform: 'uppercase',
        fontWeight: 700,
        color: 'rgb(56, 225, 234)',
        margin: '50px'
    }
}

class TrackList extends Component {
    render() {
        return (
            <>
            <h4 style={styles.title}>Music lists</h4>
            <div className="track-list" >
                
                {
                    this.props.tracks.map((track,i)=>{
                       return <Track {...track} {...this.props} key={i}></Track>
                    })
                }
               
            </div>
            </>
        )
    }
}
export default TrackList;