import axios from "axios";

// axios.defaults.baseURL = 'http://127.0.0.1:8000/';


const REGISTER_URL= 'register url';
const LOGIN_URL='login url';

export const RegisterAPI = (inputs) => {
    let data= { 
        name:inputs.username,
        email:inputs.email,
        password:inputs.password,
        confirm_password:inputs.confirm_password,
        // role_id:inputs.role_id
    }
    console.log(data,'-----------')
    // return axios.post(REGISTER_URL,data)
    return data;
};


export const LoginApi =(inputs) =>{
    let data={
        username:inputs.username,
        password:inputs.password,
    }
    // console.log(data)
    // return axios.post(LOGIN_URL,data)
};