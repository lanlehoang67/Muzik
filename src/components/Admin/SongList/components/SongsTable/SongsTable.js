import React, { useState } from 'react';
import clsx from 'clsx';
import PropTypes from 'prop-types';
import moment from 'moment';
import PerfectScrollbar from 'react-perfect-scrollbar';
import { makeStyles } from '@material-ui/core/styles';
import {
  Card,
  CardActions,
  CardContent,
  Avatar,
  Checkbox,
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableRow,
  Typography,
  TablePagination
} from '@material-ui/core';


const useStyles = makeStyles(theme => ({
  root: {},
  content: {
    padding: 0
  },
  inner: {
    minWidth: 1050
  },
  nameContainer: {
    display: 'flex',
    alignItems: 'center'
  },
  avatar: {
    marginRight: theme.spacing(2)
  },
  actions: {
    justifyContent: 'flex-end'
  }
}));

const SongsTable = props => {
  const { className, songs, ...rest } = props;

  const classes = useStyles();
  const [selectedSongs, setSelectedSongs] = useState([]);
  const [rowsPerPage, setRowsPerPage] = useState(10);
  const [page, setPage] = useState(0);

  const handleSelectAll = event => {
    const { songs } = props;

    let selectedSongs;

    if (event.target.checked) {
      selectedSongs = songs.map(song => song.id);
    } else {
      selectedSongs = [];
    }

    setSelectedSongs(selectedSongs);
  };

  const handleSelectOne = (event, id) => {
    const selectedIndex = selectedSongs.indexOf(id);
    let newSelectedSongs = [];

    if (selectedIndex === -1) {
      newSelectedSongs = newSelectedSongs.concat(selectedSongs, id);
    } else if (selectedIndex === 0) {
      newSelectedSongs = newSelectedSongs.concat(selectedSongs.slice(1));
    } else if (selectedIndex === selectedSongs.length - 1) {
      newSelectedSongs = newSelectedSongs.concat(selectedSongs.slice(0, -1));
    } else if (selectedIndex > 0) {
      newSelectedSongs = newSelectedSongs.concat(
        selectedSongs.slice(0, selectedIndex),
        selectedSongs.slice(selectedIndex + 1)
      );
    }

    setSelectedSongs(newSelectedSongs);
  };

  const handlePageChange = (event, page) => {
    setPage(page);
  };

  const handleRowsPerPageChange = event => {
    setRowsPerPage(event.target.value);
  };

  return (
    <Card
      {...rest}
      className={clsx(classes.root, className)}
    >
      <CardContent className={classes.content}>
        <PerfectScrollbar>
          <div className={classes.inner}>
            <Table>
              <TableHead>
                <TableRow>
                <TableCell>Picture</TableCell>
                  <TableCell>Title</TableCell>
                  <TableCell>Artist</TableCell>
                  <TableCell>Album</TableCell>
                </TableRow>
              </TableHead>
              <TableBody>
                {songs.slice(0, rowsPerPage).map(song => (
                  <TableRow
                    className={classes.tableRow}
                    hover
                    key={song.id}
                    selected={selectedSongs.indexOf(song.id) !== -1}
                  >
                <TableCell><Avatar src={song.picture}></Avatar></TableCell>
                    <TableCell>
                      <div className={classes.nameContainer}>
                     
                        <Typography variant="body1">{song.title}</Typography>
                      </div>
                    </TableCell>
                  
                    <TableCell>
                      {song.artist.name}
                    </TableCell>
                    <TableCell>
                      {song.album.name}
                    </TableCell>
                  </TableRow>
                ))}
              </TableBody>
            </Table>
          </div>
        </PerfectScrollbar>
      </CardContent>
      <CardActions className={classes.actions}>
        <TablePagination
          component="div"
          count={songs.length}
          onChangePage={handlePageChange}
          onChangeRowsPerPage={handleRowsPerPageChange}
          page={page}
          rowsPerPage={rowsPerPage}
          rowsPerPageOptions={[5, 10, 25]}
        />
      </CardActions>
    </Card>
  );
};

SongsTable.propTypes = {
  className: PropTypes.string,
  songs: PropTypes.array.isRequired
};

export default SongsTable;
