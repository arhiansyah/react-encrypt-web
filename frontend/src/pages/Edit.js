//import hook react
import React, { useState, useEffect } from 'react';
import { Container, Nav, Navbar, NavDropdown } from 'react-bootstrap';

function Edit(id) {
    <Navbar bg="light" expand="lg">
                <Container>
                    <Navbar.Brand href="#home">React-Bootstrap</Navbar.Brand>
                    <Navbar.Toggle />
                    <Navbar.Collapse className='justify-content-end'>
                    <Nav>
                        <NavDropdown title="Settings" className='justify-content-end' id="basic-nav-dropdown">
                        <NavDropdown.Item href="#action/3.3">Profile</NavDropdown.Item>
                        <NavDropdown.Divider />
                        <NavDropdown.Item>
                            <button className='btn btn-sm'>Logout</button>
                        </NavDropdown.Item>
                        </NavDropdown>
                    </Nav>
                    </Navbar.Collapse>
                </Container>
            </Navbar>
}
export default Edit;
