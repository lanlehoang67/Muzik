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

const AlbumsTable = props => {
  const { className, albums, ...rest } = props;

  const classes = useStyles();

  const [selectedAlbums, setSelectedAlbums] = useState([]);
  const [rowsPerPage, setRowsPerPage] = useState(10);
  const [page, setPage] = useState(0);

  const handleSelectAll = event => {
    const { albums } = props;

    let selectedAlbums;

    if (event.target.checked) {
      selectedAlbums = albums.map(album => album.id);
    } else {
      selectedAlbums = [];
    }

    setSelectedAlbums(selectedAlbums);
  };

  const handleSelectOne = (event, id) => {
    const selectedIndex = selectedAlbums.indexOf(id);
    let newSelectedAlbums = [];

    if (selectedIndex === -1) {
      newSelectedAlbums = newSelectedAlbums.concat(selectedAlbums, id);
    } else if (selectedIndex === 0) {
      newSelectedAlbums = newSelectedAlbums.concat(selectedAlbums.slice(1));
    } else if (selectedIndex === selectedAlbums.length - 1) {
      newSelectedAlbums = newSelectedAlbums.concat(selectedAlbums.slice(0, -1));
    } else if (selectedIndex > 0) {
      newSelectedAlbums = newSelectedAlbums.concat(
        selectedAlbums.slice(0, selectedIndex),
        selectedAlbums.slice(selectedIndex + 1)
      );
    }

    setSelectedAlbums(newSelectedAlbums);
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
                  <TableCell>Album</TableCell>
                  <TableCell>Artist</TableCell>
                  <TableCell>Created date</TableCell>
                </TableRow>
              </TableHead>
              <TableBody>
                {albums.slice(0, rowsPerPage).map(album => (
                  <TableRow
                    className={classes.tableRow}
                    hover
                    key={album.id}
                    selected={selectedAlbums.indexOf(album.id) !== -1}
                  >
                   <TableCell><Avatar src={album.picture}></Avatar></TableCell>
                    <TableCell>
                      <div className={classes.nameContainer}>
                     
                        <Typography variant="body1">{album.name}</Typography>
                      </div>
                    </TableCell>
                    <TableCell>{album.artist.name}</TableCell>
                    <TableCell>
                      {album.address}
                    </TableCell>
                    <TableCell>
                      {moment(album.createdAt).format('DD/MM/YYYY')}
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
          count={albums.length}
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

AlbumsTable.propTypes = {
  className: PropTypes.string,
  albums: PropTypes.array.isRequired
};

export default AlbumsTable;
