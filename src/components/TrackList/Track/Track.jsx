import React, { Component } from 'react'
import './Track.css'
import {Link} from 'react-router-dom';
export default class Track extends Component {
    constructor(props){
        super(...arguments);
    }
    render() {
        const {picture, artist, id, title, addSongToQueue} = this.props
        return (
            <div className="main">
         <img src={picture} onClick={()=> addSongToQueue({id, title, artist, picture})}  className='item-image' alt="" />
         <i className="fas fa-play play"></i>
         <div className="item-description">
       <Link to={`/songs/${id}`} className="item-title">{title}</Link>
       <p className="item-artist">{artist.name}</p>
       <div className="icon-section">
       <i className="fas fa-download download"></i>
       <i className="fas fa-sync-alt reload"></i>
       </div>
       </div>
        </div>
              
        )
    }
}
