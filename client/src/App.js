import React from 'react';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import Navbar from './Components/Navbar';
import Home from './Components/Home';
import ProjectList from './Components/ProjectList';
import ProjectDetail from './Components/ProjectDetail';
import ContributionForm from './Components/ContributionForm';
import Signup from './Components/Signup';
import Login from './Components/Login';
import LearnMore from './Components/LearnMore';
import SubmitProject from './Components/SubmitProject'; // Updated import path

function App() {
  return (
    <Router>
      <Navbar />
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/login" element={<Login />} />
        <Route path="/signup" element={<Signup />} />
        <Route path="/projects/:id" element={<ProjectDetail />} />
        <Route path="/projects" element={<ProjectList showAll={true} />} />
        <Route path="/projects/:id/contribute" element={<ContributionForm />} />
        <Route path="/learn-more" element={<LearnMore />} /> {/* Changed path */}
        <Route path="/submit-project" element={<SubmitProject />} />
      </Routes>
    </Router>
  );
}

export default App;
