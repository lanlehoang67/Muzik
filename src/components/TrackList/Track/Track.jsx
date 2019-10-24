import React from 'react'
import './Track.css'
function Track(props) {
    const {title, picture, artist} = props;
    return (
        <div className="main">
         <img src={picture} className="item-image" alt=""/>
         <i className="fas fa-play play"></i>
         <div className="item-description">
       <p className="item-title">{title}</p>
       <p className="item-artist">{artist.name}</p>
       <div className="icon-section">
       <i className="fas fa-download download"></i>
       <i className="fas fa-sync-alt reload"></i>
       </div>
       </div>
        </div>
    )
}

export default Track
