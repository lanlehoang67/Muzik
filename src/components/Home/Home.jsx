import React from 'react'
import TrackList from '../TrackList/TrackList'
import ChartPage from '../../containers/ChartPage'
function Home(props) {
    return (
        <>
        <TrackList {...props}></TrackList>
        <ChartPage></ChartPage>
        </>
    )
}

export default Home
