import React, { useState ,useEffect } from 'react';
import { makeStyles } from '@material-ui/core/styles';
import { useSelector, useDispatch } from 'react-redux'
import { AlbumsToolbar, AlbumsTable } from './components';
import getAlbums from '../../../actions/album'
const useStyles = makeStyles(theme => ({
  root: {
    padding: theme.spacing(3)
  },
  content: {
    marginTop: theme.spacing(2)
  }
}));

function AlbumList () {
  const classes = useStyles();

  const albums = useSelector(state => state.albumState.albums);
  console.log(albums)
  const dispatch = useDispatch();
  useEffect(() => {
    dispatch(getAlbums())
  }, [])
  return (
    <div className={classes.root}>
      <AlbumsToolbar />
      <div className={classes.content}>
        <AlbumsTable albums={albums} />
      </div>
    </div>
  );
};

export default AlbumList;
