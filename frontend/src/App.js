import RegisterPage from "./Pages/RegisterPage";
import LoginPage from './Pages/LoginPage';
import Admin_dashboard from './Pages/admin/Admin_dashboard';
import {BrowserRouter,Route,Routes} from 'react-router-dom'

function App() {
  return (
    <>
      <BrowserRouter>
        <Routes>
          <Route path="/" element={<LoginPage />}/>
          <Route path="/register" element={<RegisterPage />}/>
          <Route path="/Admin_dashboard" element={<Admin_dashboard />}/>
        </Routes>
      </BrowserRouter>
    </>
  );
}

export default App;
