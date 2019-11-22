import React from 'react'
import {Switch, Route } from 'react-router-dom'
import * as Containers from './containers'
import fetchOnScroll from './HOC/fetchOnScroll'
import Player from './containers/Player'
import LoadingBar from 'react-redux-loading-bar'
import RouteWithLayout from "./components/RouteWithLayout/RouteWithLayout";
import UserList from "./components/Admin/UserList/UserList";
import Admin from "./containers/Admin";
import Dashboard from "./components/Admin/Dashboard/Dashboard";
import SongList from './components/Admin/SongList'
import AlbumList from './components/Admin/AlbumList'
import SongForm from './components/Admin/SongForm/SongForm'
export default (
    <Switch>
        <Route>
        <LoadingBar></LoadingBar>
        <Route exact path="/" component={Containers.App}></Route>
        <Route exact path="/songs/:id" component={Containers.DetailPage}></Route>
        <Route exact path="/login" component={Containers.SignIn}></Route>
        <Route exact path="/register" component={Containers.SignUp}></Route>
        
       
        <Route exact path="/admin" component={Containers.Admin}></Route>
        <RouteWithLayout component={UserList} exact layout={Admin} path="/admin/users"></RouteWithLayout>
       <RouteWithLayout component={SongList} exact layout={Admin} path="/admin/songs"></RouteWithLayout>
       <RouteWithLayout component={SongList} exact layout={Admin} path="/admin/songs"></RouteWithLayout>
       <RouteWithLayout component={SongForm} exact layout={Admin} path="/admin/songs/new"></RouteWithLayout>
      <RouteWithLayout component={AlbumList} exact layout={Admin} path="/admin/albums"></RouteWithLayout>
        <RouteWithLayout component={Dashboard} exact layout={Admin} path="/admin/dashboard"></RouteWithLayout>
        </Route>
       
    </Switch>
)