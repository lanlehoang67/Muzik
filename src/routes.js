import React from 'react'
import {Switch, Route } from 'react-router-dom'
import * as Containers from './containers'
export default (
    <Switch>
        <Route path="/" component={Containers.App}></Route>
    </Switch>
)