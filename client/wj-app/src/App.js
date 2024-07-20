import { useState } from "react"
import Register from './pages/Register';
import {BrowserRouter, Route, Routes} from 'react-router-dom';
import HomePage from "./pages/HomePage";


function App() {
  return (
    <>
      <BrowserRouter>
        <Routes>
          <Route path="/register" element={<Register />}/>
          <Route path="/homepage" element={<HomePage />}/>
        </Routes>
      </BrowserRouter>
    </>
  );
}

export default App;
