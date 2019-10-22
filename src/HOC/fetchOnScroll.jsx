import React, { Component } from 'react'
import {connect} from 'react-redux'
import {fetchTracks} from '../actions/home'
import _throttle from 'lodash.throttle';
export default function (WrapperComponent){
class fetchOnScroll extends Component {
    constructor(props){
        super(props);
    }
    componentDidMount(){
        this.props.fetchTracks()
    }
  
    onScroll = () => {
        // delay the scroll event
  
       
         
              this.props.fetchTracks();
            
          
       
      }
    render() {
        return (
            <WrapperComponent {...this.props}></WrapperComponent>
        )
    }
}
return connect(state => (
    {
        isLoading: state.trackState.isLoading
    }
), {fetchTracks}
)(fetchOnScroll)
}