import React, { Component } from 'react'
import Track from './Track/Track'
import {Typography} from '@material-ui/core'
import {withStyles} from '@material-ui/styles'
const styles = theme => ({
    root: {
        margin: '50px'
    }
})

class TrackList extends Component {
    render() {
        const {classes} = this.props;
        return (
            <>
            <Typography className={classes.root} variant="h4" component="h2">
            Music List
            </Typography>
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
export default withStyles(styles)(TrackList);