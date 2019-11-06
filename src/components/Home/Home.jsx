import React from 'react'
import TrackList from '../TrackList/TrackList'
import ChartPage from '../../containers/ChartPage'
import './Home.css'
function Home(props) {
    return (
        <div className="main-root">
        <TrackList {...props}></TrackList>
        <ChartPage></ChartPage>
        </div>
    )
}

export default Home
