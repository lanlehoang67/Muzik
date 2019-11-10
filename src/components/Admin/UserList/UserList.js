import React, { useState ,useEffect } from 'react';
import { makeStyles } from '@material-ui/core/styles';
import { useSelector, useDispatch } from 'react-redux'
import { UsersToolbar, UsersTable } from './components';
import getUsers from '../../../actions/user'
const useStyles = makeStyles(theme => ({
  root: {
    padding: theme.spacing(3)
  },
  content: {
    marginTop: theme.spacing(2)
  }
}));

function UserList () {
  const classes = useStyles();

  const users = useSelector(state => state.userState.users);
  const dispatch = useDispatch();
  useEffect(() => {
    dispatch(getUsers())
  }, [])
  return (
    <div className={classes.root}>
      <UsersToolbar />
      <div className={classes.content}>
        <UsersTable users={users} />
      </div>
    </div>
  );
};

export default UserList;
