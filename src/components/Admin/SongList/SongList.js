import React, { useState ,useEffect } from 'react';
import { makeStyles } from '@material-ui/core/styles';
import { useSelector, useDispatch } from 'react-redux'
import { SongsToolbar, SongsTable } from './components';
import {fetchTracks} from '../../../actions/home'
const useStyles = makeStyles(theme => ({
  root: {
    padding: theme.spacing(3)
  },
  content: {
    marginTop: theme.spacing(2)
  }
}));

function SongList () {
  const classes = useStyles();

  const songs = useSelector(state => state.trackState.tracks);
  const dispatch = useDispatch();
  useEffect(() => {
    dispatch(fetchTracks())
  }, [])
  return (
    <div className={classes.root}>
      <SongsToolbar />
      <div className={classes.content}>
        <SongsTable songs={songs} />
      </div>
    </div>
  );
};

export default SongList;
