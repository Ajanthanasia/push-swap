import { useState } from "react";
import './RegisterPage.css';
import { Navigate, Link } from 'react-router-dom';
import { RegisterAPI } from '../services/API';
import axios from "axios";

function RegisterPage() {
    const initialStateErrors = {
        username: { required: false },
        email: { required: false },
        password: { required: false },
        confirm_password: { required: false },
        custom_error: null
    }
    const [errors, setErrors] = useState(initialStateErrors)

    const [loading, setLoading] = useState(false);

    const handleSubmit = (event) => {
        event.preventDefault();
        let error = initialStateErrors;
        let hasError = false
        if (inputs.username == "") {
            error.username.required = true;
            hasError = true;
        }
        if (inputs.email == "") {
            error.email.required = true;
            hasError = true;
        }
        if (inputs.password == "") {
            error.password.required = true;
            hasError = true;
        }
        if (inputs.confirm_password == "") {
            error.confirm_password.required = true;
            hasError = true;

        }
        if (!hasError) {
            setLoading(true);
            // const url = 'http://127.0.0.1:4000/api/register';
            const url = 'http://localhost:4000/api/register';
            const regi = async (event) => {
                try {
                    const response = await axios.post(`${url}`, {
                        name: inputs.username,
                        email: inputs.email,
                        password: inputs.password,
                        confirm_password: inputs.confirm_password,
                    });
                    console.log(response);
                    // setMsg(response.data.message);
                } catch (error) {
                    console.log(error);
                }
            }
            regi();

            // RegisterAPI(inputs).then((response) => {
            //     if (response.data.MsgType == "success") {
            //         console.log("here-------------")
            //         return < Navigate to="/" />
            //     } else if (response.data.MsgType == "danger") {
            //         // setErrors({ ...errors, custom_error.response.message })
            //     }

            // }).catch((err) => {
            //     console.log(err);
            // }).finally(() => {
            //     setLoading(false);
            // })
        }
        // setErrors({ ...error })
    }

    const [inputs, setInputs] = useState({
        username: "",
        email: "",
        password: "",
        confirm_password: ""
    })

    const handleInputs = (event) => {
        setInputs({ ...inputs, [event.target.name]: event.target.value })
        // console.log(event.target.value)
    }
    return (
        <>
            <section className="register-block">
                <div className="container">
                    <div className="row">
                        <div className="col register-sec">
                            <h2 className="text-center">Register Now</h2>
                            <form className="register-form" onSubmit={handleSubmit} action="" >
                                <div className="form-group">
                                    <label htmlFor="exampleInputEmail1" className="text-uppercase">Username</label>
                                    <input type="text" className="form-control" onChange={handleInputs} name="username" />
                                    {errors.username.required ?
                                        (<span className="text-danger" >
                                            Username is required.
                                        </span>) : null
                                    }
                                </div>
                                <div className="form-group">
                                    <label htmlFor="exampleInputEmail1" className="text-uppercase">Email</label>
                                    <input type="text" className="form-control" onChange={handleInputs} name="email" />
                                    {errors.email.required ?
                                        (<span className="text-danger" >
                                            Email is required.
                                        </span>) : null
                                    }
                                </div>

                                <div className="form-group">
                                    <label htmlFor="exampleInputPassword1" className="text-uppercase">Password</label>
                                    <input className="form-control" type="password" onChange={handleInputs} name="password" />
                                    {errors.password.required ?
                                        (<span className="text-danger" >
                                            Password is required.
                                        </span>) : null
                                    }
                                </div>
                                <div className="form-group">
                                    <label htmlFor="exampleInputPassword1" className="text-uppercase">Confirm Password</label>
                                    <input className="form-control" type="password" onChange={handleInputs} name="confirm_password" />
                                    {errors.confirm_password.required ?
                                        (<span className="text-danger" >
                                            Confirm password is required.
                                        </span>) : null
                                    }
                                </div>
                                <div className="form-group">
                                    <span className="text-danger" >
                                        {/* <p>{errors.custom_error}</p> */}
                                        {errors.custom_error ?
                                            (<p>{errors.custom_error}</p>) : null
                                        }
                                    </span>
                                    {loading ?
                                        <div className="text-center">
                                            <div className="spinner-border text-primary " role="status">
                                                <span className="sr-only">Loading...</span>
                                            </div>
                                        </div> : null
                                    }


                                    <input type="submit" className="btn btn-login float-right" disabled={loading} value="Register" />
                                </div>
                                <div className="clearfix"></div>
                                <div className="form-group">
                                    Already have account ? Please <Link to="/">Login</Link>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </section>

        </>
    );
}

export default RegisterPage



