import { useState } from "react";
import { Navigate, Link } from 'react-router-dom';
import { LoginApi } from '../services/API';
function LoginPage(){
    const initialStateErrors={
        username:{required:false},
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
        if(inputs.username==""){
            error.username.required=true;
            hasError=true;
        }
        if(inputs.password==""){
            error.password.required=true;
            hasError=true;
        }
        // if(!hasError){
        //     setLoading(true)
        //     LoginApi(inputs).then((response)=>{
        //         if (response.data.MsgType=="success"){
        //             storeUserData(response.data);
        //         }
                
        //         else if(response.data.MsgType=="warning"){
        //             setErrors({...errors,custom_error:response.data.msg})
        //         }
        //         else if(response.data.MsgType=="danger"){
        //             setErrors({...errors,custom_error:response.data.msg})
                    
        //         }
        //     }).catch((err)=>{
        //         console.log(err);
        //     }).finally(()=>{
        //         setLoading(false);
        //     })
        // }
        setErrors({...error})
    }

    const [inputs,setInputs] =useState({
        username:"",
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
                            <label htmlFor="exampleInputEmail1" className="text-uppercase">Username</label>
                            <input type="username"  className="form-control" name="username"  id="" onChange={handleInputs} placeholder="Username"  />
                            {errors.username.required?
                            (<span className="text-danger" >
                                Username is required.
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




