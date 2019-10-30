import React, { Component } from 'react'
import { connect } from 'react-redux'
import Pages from '../components/Pages/index'
import {fetchChart, changeChart} from '../actions/chart'
class ChartPage extends Component {
    componentDidMount(){
        this.props.fetchChart("jpop")
        this.props.fetchChart("cpop")
        this.props.fetchChart("vpop")
    }
    render() {
        return (
            <Pages.ChartPage
             cpop={this.props.cpop}
             jpop={this.props.jpop}
             vpop={this.props.vpop}
            ></Pages.ChartPage>
        )
    }
}

const mapStateToProps = (state) => state.chartState;

export default connect(mapStateToProps, {fetchChart, changeChart})(ChartPage)
