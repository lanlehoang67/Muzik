import React, { Component } from 'react'
import Menu from '../components/Menu/Menu'
import HomePage from './HomePage'
class App extends Component {
    render() {
        return (
          <>
            <Menu></Menu>
            <HomePage></HomePage>
            </>
        )
    }
}
export default App;