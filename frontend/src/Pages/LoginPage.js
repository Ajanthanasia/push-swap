import { useState } from "react";
import { Navigate, Link, useNavigate } from 'react-router-dom';
import { LoginApi } from '../services/API';
import axios from "axios";
function LoginPage() {
    const navigate = useNavigate();
    const url = 'http://127.0.0.1:4000/api/login-user';
    const [email, setEmail] = useState("");
    const [password, setPassword] = useState("");

    const initialStateErrors = {
        email: { required: false },
        password: { required: false },
        custom_error: null
    }
    const [errors, setErrors] = useState(initialStateErrors)

    const [loading, setLoading] = useState(false);
    const [userdetails, setUserDetails] = useState("");
    const handleSubmit = async (event) => {
        event.preventDefault();
        let error = initialStateErrors;
        let hasError = false
        if (inputs.email == "") {
            error.email.required = true;
            hasError = true;
        }
        if (inputs.password == "") {
            error.password.required = true;
            hasError = true;
        }
        if (!hasError) {
            setLoading(true);
            try {
                const response = await axios.post(`${url}`, {
                    email: inputs.email,
                    password: inputs.password,
                });
                console.log(response);
            } catch (error) {
                console.log(error);
            }
        }
        setErrors({ ...error })
    }

    const [inputs, setInputs] = useState({
        email: "",
        password: ""
    })

    const handleInputs = (event) => {
        setInputs({ ...inputs, [event.target.name]: event.target.value })
    }

    return (
        <>
            <section className="login-block">
                <div className="container">
                    <div className="row ">
                        <div className="col login-sec">
                            <h2 className="text-center">Login Now</h2>
                            <form className="login-form" onSubmit={handleSubmit} action="">
                                <div className="form-group">
                                    <label htmlFor="exampleInputEmail1" className="text-uppercase">email</label>
                                    <input type="email" className="form-control" name="email" onChange={handleInputs} placeholder="email" />
                                    {errors.email.required ?
                                        (<span className="text-danger" >
                                            email is required.
                                        </span>) : null
                                    }
                                </div>
                                <div className="form-group">
                                    <label htmlFor="exampleInputPassword1" className="text-uppercase">Password</label>
                                    <input className="form-control" type="password" name="password" placeholder="password" onChange={handleInputs} />
                                    {errors.password.required ?
                                        (<span className="text-danger" >
                                            Password is required.
                                        </span>) : null
                                    }
                                </div>
                                <div className="form-group">
                                    {loading ?
                                        <div className="text-center">
                                            <div className="spinner-border text-primary " role="status">
                                                <span className="sr-only">Loading...</span>
                                            </div>
                                        </div> : null
                                    }
                                    {errors.custom_error ?
                                        <span className="text-danger" >
                                            <p>{errors.custom_error}</p>
                                        </span> : null
                                    }
                                    <input type="submit" className="btn btn-login float-right" disabled={loading} value="Login" />
                                </div>
                                <div className="clearfix"></div>
                                <div className="form-group">
                                    Create new account ? Please <Link to="/register">Register</Link>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </section>

        </>
    );
}
export default LoginPage




