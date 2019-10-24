import React, { Component } from "react";
import Paper from "@material-ui/core/Paper";
import Tabs from "@material-ui/core/Tabs";
import Chart from './Chart'
import Tab from "@material-ui/core/Tab";
import Typography from '@material-ui/core/Typography'
import Box from '@material-ui/core/Box'
import {withStyles} from '@material-ui/styles'
const styles = theme => ({
    root: {
        position: 'absolute',
        right: '100px',
        top: '200px',
      
      width: '26%'
    }
    }
);
function TabPanel(props) {
    const { children, value, index, ...other } = props;
  
    return (
      <Typography
        component="div"
        role="tabpanel"
        hidden={value !== index}
        id={`simple-tabpanel-${index}`}
        aria-labelledby={`simple-tab-${index}`}
        {...other}
      >
        <Box p={3}>{children}</Box>
      </Typography>
    );
  }
class ChartPage extends Component {
  constructor(props){
      super(...arguments);
      this.state = {
          value: 0
      }
  }
  handleChange = (event, newValue) => {
      this.setState({value: newValue})
  }
  render() {
    const { classes, vpop, jpop, cpop } = this.props;
    return (
      <Paper className={classes.root}>
        <Tabs
          value={this.state.value}
          onChange={this.handleChange}
          indicatorColor="primary"
          textColor="primary"
          centered
        >
          <Tab label="Nhạc nhật" />
          <Tab label="Nhạc trung" />
          <Tab label="Nhạc việt" />
        </Tabs>
        <TabPanel value={this.state.value} index={0}>
        <Chart chart={jpop}></Chart>
      </TabPanel>
      <TabPanel value={this.state.value} index={1}>
      <Chart chart={cpop}></Chart>
      </TabPanel>
      <TabPanel value={this.state.value} index={2}>
      <Chart chart={vpop}></Chart>
      </TabPanel>
      </Paper>
    );
  }
}
export default withStyles(styles)(ChartPage);
