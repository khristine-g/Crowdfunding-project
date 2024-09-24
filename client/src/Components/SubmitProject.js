import React, { useState } from 'react';
import '../SubmitProject.css'; // Import CSS file for styling

const SubmitProject = () => {
  const [formData, setFormData] = useState({
    projectName: '',
    projectDescription: '',
    contactEmail: ''
  });

  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData({
      ...formData,
      [name]: value
    });
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    
    try {
      const response = await fetch('http://localhost:3000/submit_projects', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json'
        },
        body: JSON.stringify({
          submit_project: {
            name: formData.projectName,
            description: formData.projectDescription,
            contact_email: formData.contactEmail
          }
        })
      });
  
      const result = await response.json();
  
      if (response.ok) {
        alert('Project submitted successfully:', result);
        // Optionally reset the form or show a success message
      } else {
        console.error('Error submitting project:', result.errors);
      }
    } catch (error) {
      console.error('An error occurred:', error);
    }
  };
  

  return (
    <div className="submit-project-container">
      <h2 className="submit-project-title">Submit Your Project</h2>
      <form className="submit-project-form" onSubmit={handleSubmit}>
        <label htmlFor="projectName">Project Name:</label>
        <input
          type="text"
          id="projectName"
          name="projectName"
          value={formData.projectName}
          onChange={handleChange}
          required
        />
        <label htmlFor="projectDescription">Project Description:</label>
        <textarea
          id="projectDescription"
          name="projectDescription"
          value={formData.projectDescription}
          onChange={handleChange}
          required
        />
        <label htmlFor="contactEmail">Contact Email:</label>
        <input
          type="email"
          id="contactEmail"
          name="contactEmail"
          value={formData.contactEmail}
          onChange={handleChange}
          required
        />
        <button type="submit" className="submit-project-button">Submit</button>
      </form>
    </div>
  );
};

export default SubmitProject;
