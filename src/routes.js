import React from 'react'
import { Route } from 'react-router-dom'
import * as Containers from './containers'
export default (
    <Route path="/" component={Containers.App}>
        <Route path="home" component={Containers.HomePage}></Route>
    </Route>
)