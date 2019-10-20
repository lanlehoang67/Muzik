import React from 'react'
import Menu from './Menu/Menu'
import './Home.css'
import ReactJkMusicPlayer from "react-jinke-music-player";
import "react-jinke-music-player/assets/index.css";
const options = {
    audioLists: [
        {
            name: "Despacito",
            singer: "Luis Fonsi",
            cover:  'http://res.cloudinary.com/alick/image/upload/v1502689731/Despacito_uvolhp.jpg',
            musicSrc:  () => {
                return Promise.resolve(
                  'http://res.cloudinary.com/alick/video/upload/v1502689683/Luis_Fonsi_-_Despacito_ft._Daddy_Yankee_uyvqw9.mp3'
                )
            }

        }
    ],

    theme: 'dark',
    showProgressLoadBar: true,
}
function Home() {
    return (
        <div className="main">
        <Menu></Menu>
        <ReactJkMusicPlayer {...options}></ReactJkMusicPlayer>
        </div>
    )
}

export default Home
