import { useState } from "react";
import { Navigate, Link,useNavigate } from 'react-router-dom';
import { LoginApi } from '../services/API';
function LoginPage(){
    const navigate = useNavigate();

    const initialStateErrors={
        email:{required:false},
        password:{required:false},
        custom_error:null
    }
    const [errors,setErrors]=useState(initialStateErrors)

    const[loading,setLoading]=useState(false);
    const [userdetails,setUserDetails]=useState("");
    const handleSubmit = (event) =>{
        event.preventDefault();
        let error = initialStateErrors;
        let hasError=false
        if(inputs.email==""){
            error.email.required=true;
            hasError=true;
        }
        if(inputs.password==""){
            error.password.required=true;
            hasError=true;
        }
        if(!hasError){
            setLoading(true)
            LoginApi(inputs).then((response)=>{
                if (response.data.status==true){
                    navigate('/Admin_dashboard');
                }
                
                else{
                    error.custom_error=response.data.msg
                }
            }).catch((err)=>{
                console.log(err);
            }).finally(()=>{
                setLoading(false);
            })
        }
        setErrors({...error})
    }

    const [inputs,setInputs] =useState({
        email:"",
        password:""
    })

    const handleInputs = (event) =>{
        setInputs({...inputs,[event.target.name]:event.target.value})
    }

    return(
    <>
        <section className="login-block">
            <div className="container">
                <div className="row ">
                    <div className="col login-sec">
                        <h2 className="text-center">Login Now</h2>
                        <form className="login-form" onSubmit={handleSubmit} action="">
                        <div className="form-group">
                            <label htmlFor="exampleInputEmail1" className="text-uppercase">email</label>
                            <input type="email"  className="form-control" name="email"  id="" onChange={handleInputs} placeholder="email"  />
                            {errors.email.required?
                            (<span className="text-danger" >
                                email is required.
                            </span>):null
                            }
                        </div>
                        <div className="form-group">
                            <label htmlFor="exampleInputPassword1" className="text-uppercase">Password</label>
                            <input  className="form-control" type="password"  name="password" placeholder="password" onChange={handleInputs} id="" />
                            {errors.password.required?
                            (<span className="text-danger" >
                                Password is required.
                            </span>):null
                            }
                        </div>
                        <div className="form-group">
                            {loading?
                            <div  className="text-center">
                                <div className="spinner-border text-primary " role="status">
                                <span className="sr-only">Loading...</span>
                                </div>
                            </div>:null
                            }
                            {errors.custom_error?
                            <span className="text-danger" >
                            <p>{errors.custom_error}</p>
                            </span>:null
                            }
                            <input  type="submit" className="btn btn-login float-right" disabled={loading} value="Login"/>
                        </div>
                        <div className="clearfix"></div>
                        <div className="form-group">
                        Create new account ? Please <Link  to="/register">Register</Link>
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




