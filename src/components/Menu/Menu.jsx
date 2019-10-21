import React, { Component } from 'react'
import {Navbar, Nav, FormControl, Button , Form} from 'react-bootstrap'
import './Menu.css'
class Menu extends Component {
    constructor(){
        super();
        this.state = {query: '', data: {}}
    }
    render() {
        return (
            <Navbar bg="dark" variant="dark">
            <Navbar.Brand href="#home">Jinx MP3</Navbar.Brand>
            <Nav className="mr-auto">
              <Nav.Link href="#home">Trang chủ</Nav.Link>
              <Nav.Link href="#features">Thể loại</Nav.Link>
              <Nav.Link href="#pricing">Nhạc trung quốc</Nav.Link>
            </Nav>
            <Form inline>
              <FormControl type="text" placeholder="Search" className="mr-sm-2 search" />
              <Button variant="outline-light">Search</Button>
            </Form>
          </Navbar>
        )
    }
}
export default Menu;