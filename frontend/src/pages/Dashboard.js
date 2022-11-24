//import hook react
import React, { useState, useEffect } from 'react';

//import hook useHitory from react router dom
import { useHistory } from 'react-router';

import '../index.css';

import Container from 'react-bootstrap/Container';
import Nav from 'react-bootstrap/Nav';
import Navbar from 'react-bootstrap/Navbar';
import NavDropdown from 'react-bootstrap/NavDropdown';
import Image from 'react-bootstrap/Image';

//import axios
import axios from 'axios';
import { Button, Row, Modal, Form } from 'react-bootstrap';



function Dashboard() {


    //state user
    const [user, setUser] = useState({});

    //state product
    const [product, setProduct] = useState({});
    const [validation, setValidation] = useState({});
    // state form input
    const [image, setImage] = useState({});
    const [name, setName] = useState({});
    //state store data
    const [open, setOpen] = useState(false);

    //open close modal store data
    const handleExit = () => setOpen(false);
    const handleOpen = () => setOpen(true);

    const storePost = async (e) => {
        //send data to server
        e.preventDefault();

        //initialize formData
        const formData = new FormData();

        //append data to formData
        formData.append('image', image);
        formData.append('name', name);

        //send data to server
        await axios.post('http://localhost:8000/api/product', formData)
        .then(() => {

        })
        .catch((error) => {
            //assign error to state "validation"
            setValidation(error.response.data);
        })
    };

    //define history
    const history = useHistory();

    //token
    const token = localStorage.getItem("token");

    //function "fetchData"
    const fetchData = async () => {

        //set axios header dengan type Authorization + Bearer token
        axios.defaults.headers.common['Authorization'] = `Bearer ${token}`
        //fetch user from Rest API
        await axios.get('http://localhost:8000/api/user')
        .then((response) => {
            console.log('user');
            //set response user to state
            setUser(response.data);
        })
    }

    const fetchProducts = async () => {
        try {
            const { data } = await axios.get('http://localhost:8000/api/product');
            setProduct(data.data);
            console.log('product');
        } catch (error) {
            console.log('Something Wrong');
        }
    }
    //hook useEffect
    const deleteTrigger = async (id) => {
        await axios.delete(`http://localhost:8000/api/product/${id}`);
    }
    useEffect(() => {
        //check token empty
        if(!token) {
            //redirect login page
            history.push('/');
        }

        //call function "fetchData"
        fetchData();
        fetchProducts();
    },[product]);

    //function logout
    const logoutHanlder = async () => {
        //set axios header dengan type Authorization + Bearer token
        axios.defaults.headers.common['Authorization'] = `Bearer ${token}`
        //fetch Rest API
        await axios.post('http://localhost:8000/api/logout')
        .then(() => {

            //remove token from localStorage
            localStorage.removeItem("token");

            //redirect halaman login
            history.push('/');
        });
    };


    return (
        <div>
            <Navbar bg="light" expand="lg">
                <Container>
                    <Navbar.Brand href="#home">React-Bootstrap</Navbar.Brand>
                    <Navbar.Toggle />
                    <Navbar.Collapse className='justify-content-end'>
                    <Nav>
                        <NavDropdown title="Settings" className='justify-content-end' id="basic-nav-dropdown">
                        <NavDropdown.Item href="#action/3.3">Profile {user.name}</NavDropdown.Item>
                        <NavDropdown.Divider />
                        <NavDropdown.Item>
                            <button onClick={logoutHanlder} className='btn btn-sm'>Logout</button>
                        </NavDropdown.Item>
                        </NavDropdown>
                    </Nav>
                    </Navbar.Collapse>
                </Container>
            </Navbar>

            <Container>
                <Row>
                    <div className="col-12 mt-5">
                        <div className="card border-0 rounded shadow-sm">
                            <div className='card-header bg-light border-0'>
                                <p className='mt-2 ms-2'>User Information</p>
                            </div>
                            <div className="card-body">
                                <button onClick={handleOpen} className='btn btn-md btn-success mb-3 ms-2'>Create Item</button>
                                <table className='table'>
                                    <thead>
                                        <tr>
                                            <th scope="col">#</th>
                                            <th scope="col">Image</th>
                                            <th scope="col">Name</th>
                                            <th scope="col">Action</th>
                                        </tr>
                                    </thead>
                                    {product.length ?
                                    <tbody>
                                        { product.map((products, index) => (
                                            <tr>
                                                <td>{ index + 1 }</td>
                                                <td><Image className='img-foto' src={products.image} alt="cover"></Image></td>
                                                <td>{ products.name }</td>
                                                <td><button className='btn btn-primary btn-sm'>Edit</button></td>
                                                <td><button onClick={() => deleteTrigger(products.id)} className='btn btn-danger btn-sm'>Delete</button></td>
                                            </tr>
                                        )) }
                                    </tbody> :
                                    <tbody>
                                        <div>No items</div>
                                    </tbody>
                                    }
                                </table>
                            </div>
                        </div>

                        <Modal show={open} onHide={handleExit} className='mt-5 p-5'>
                            <Modal.Header closeButton>
                                <Modal.Title>Form Create Product </Modal.Title>
                            </Modal.Header>
                            <Modal.Body>
                            <Form onSubmit={storePost}>
                                <Form.Label>Image</Form.Label>
                                <Form.Control type="file" onChange={(e) => setImage(e.target.files[0])} />
                                <Form.Label className='mt-4'>Full name</Form.Label>
                                <Form.Control type="text" onChange={(e) => setName(e.target.value)} placeholder="Masukkan Username" />
                                <Button variant="primary" type="submit" className='mt-3'>
                                    Submit
                                </Button>
                            </Form>
                            </Modal.Body>
                        </Modal>
                    </div>
                </Row>
            </Container>
        </div>
    )

}

export default Dashboard;
