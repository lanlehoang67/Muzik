import React from 'react'
import TrackList from '../TrackList/TrackList'
function Home(props) {
    console.log(props)
    return (
        <TrackList {...props}></TrackList>
    )
}

export default Home
