import React, {useState} from "react";
import TextField from "@material-ui/core/TextField";
import { makeStyles } from "@material-ui/core/styles";
import InputLabel from "@material-ui/core/InputLabel";
import MenuItem from "@material-ui/core/MenuItem";
import Select from "@material-ui/core/Select";
import FormControl from "@material-ui/core/FormControl";
import { Button } from "@material-ui/core";
import { withRouter } from 'react-router-dom'
import { addSong } from '../../../actions/song'
import { useSelector, useDispatch } from 'react-redux'
const useStyles = makeStyles(theme => ({
  container: {
    display: "flex",
    flexWrap: "wrap"
  },
  textField: {
    marginLeft: theme.spacing(4),
    marginRight: theme.spacing(2),
    width: 800
  },
  button: {
    display: "block",
    marginTop: theme.spacing(2),
  },
  formControl: {
    marginLeft: theme.spacing(4),
    marginRight: theme.spacing(2),
    minWidth: 800
  },
  submitButton: {
      width: 800,
      marginLeft: theme.spacing(4)
  }
}));

const SongForm = props => {
  const { history } = props;
  const classes = useStyles();
  const [value, setValue] = React.useState("");
  const [open, setOpen] = React.useState(false);
  const dispatch = useDispatch();
  const [formState, setFormState] = useState({
    isValid: false,
    values: {},
    touched: {},
    errors: {}
  });

  const handleChange = event => {
    event.persist();

    setFormState(formState => ({
      ...formState,
      values: {
        ...formState.values,
        [event.target.name]:
          event.target.type === 'checkbox'
            ? event.target.checked
            : event.target.value
      },
      touched: {
        ...formState.touched,
        [event.target.name]: true
      }
    }));
  };
  const handleClose = () => {
    setOpen(false);
  };

  const handleOpen = () => {
    setOpen(true);
  };
  const onSubmit= event =>{
    event.preventDefault()
    dispatch(addSong(formState.values)).then(()=>{
        props.history.push("/admin/songs")
    })
  }
  

  return (
    <form onSubmit={onSubmit} className={classes.container} noValidate autoComplete="off">
      <div>
        <TextField
          required
          id="outlined-required"
          name="title"
          label="Name Of Song"
          className={classes.textField}
          onChange={handleChange}
          margin="normal"
          variant="outlined"
        />
        <TextField
          id="outlined-password-input"
          label="Url Of Song"
          name="url"
          className={classes.textField}
          onChange={handleChange}
          autoComplete="current-password"
          margin="normal"
          variant="outlined"
        />
        <TextField
          id="outlined-read-only-input"
          label="Url of Image"
          name="picture"
          className={classes.textField}
          onChange={handleChange}
          margin="normal"
          variant="outlined"
        />
        <FormControl className={classes.formControl}>
          <InputLabel id="demo-controlled-open-select-label">Choose A Category</InputLabel>
          <Select

            labelId="demo-controlled-open-select-label"
            id="demo-controlled-open-select"
            open={open}
            onClose={handleClose}
            onOpen={handleOpen}
            onChange={handleChange}
          >
            <MenuItem value={1}>Jpop</MenuItem>
            <MenuItem value={2}>Cpop</MenuItem>
            <MenuItem value={3}>Vpop</MenuItem>
          </Select>
        </FormControl>
        <TextField
          id="outlined-helperText"
          label="Artist Id"
          name="artist_id"
          className={classes.textField}
          onChange={handleChange}
          margin="normal"
          variant="outlined"
        />
        <TextField
          id="outlined-helperText"
          label="User Id"
          name="user_id"
          className={classes.textField}
          onChange={handleChange}
          margin="normal"
          variant="outlined"
        />
        <TextField
          id="outlined-helperText"
          label="Album Id"
          name="album_id"
          className={classes.textField}
          onChange={handleChange}
          margin="normal"
          variant="outlined"
        />
        <Button
                  className={classes.submitButton}
                  color="primary"
                  fullWidth
                  size="large"
                  type="submit"
                  variant="contained"
                  onClick={onSubmit}
                >
                  Submit
                </Button>
      </div>
    </form>
  );
}

export default withRouter(SongForm);