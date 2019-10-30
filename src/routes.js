import React from 'react'
import {Switch, Route } from 'react-router-dom'
import * as Containers from './containers'
import fetchOnScroll from './HOC/fetchOnScroll'
import Player from './containers/Player'
import LoadingBar from 'react-redux-loading-bar'

export default (
    <Switch>
        <Route>
        <LoadingBar></LoadingBar>
        <Route exact path="/" component={Containers.App}></Route>
        <Route exact path="/songs/:id" component={Containers.DetailPage}></Route>
        <Player></Player>
        </Route>
    </Switch>
)