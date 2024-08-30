import React, { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import '../ProjectList.css';

const ProjectList = ({ showAll }) => {
  const [projects, setProjects] = useState([]);
  const [categories, setCategories] = useState([]);
  const [selectedCategoryId, setSelectedCategoryId] = useState('');
  const navigate = useNavigate();

  useEffect(() => {
    // Fetch categories from the backend
    fetch('http://localhost:3000/categories')
      .then(response => {
        if (!response.ok) {
          throw new Error('Network response was not ok');
        }
        return response.json();
      })
      .then(data => {
        console.log('Categories data:', data); // Log categories data
        setCategories(data);
      })
      .catch(error => console.error('Error fetching categories:', error));
  }, []);

  useEffect(() => {
    // Fetch projects from the backend with optional category filter
    const fetchProjects = async () => {
      try {
        const response = await fetch(`http://localhost:3000/projects?category_id=${selectedCategoryId}`);
        if (!response.ok) {
          throw new Error('Network response was not ok');
        }
        const data = await response.json();
        console.log('Projects data:', data); // Log projects data
        setProjects(data);
      } catch (error) {
        console.error('Error fetching projects:', error);
      }
    };

    fetchProjects();
  }, [selectedCategoryId]);

  const handleClick = (id) => {
    navigate(`/projects/${id}`);
  };

  const handleViewAll = () => {
    navigate('/projects');
  };

  const handleCategoryChange = (event) => {
    const selected = event.target.value;
    setSelectedCategoryId(selected);
    console.log('Selected category ID:', selected); // Debugging
  };

  // Conditionally limit the projects shown if showAll is false
  const displayedProjects = showAll ? projects : projects.slice(0, 4);

  return (
    <>
      <h1 className='project-list-title'>Browse our featured projects</h1>
      {showAll && (
        <div className="filter-container">
          <label htmlFor="category-filter">Show by Category:</label>
          <select
            id="category-filter"
            value={selectedCategoryId}
            onChange={handleCategoryChange}
          >
            <option value="">All</option>
            {categories.map(category => (
              <option key={category.id} value={category.id}>
                {category.name}
              </option>
            ))}
          </select>
        </div>
      )}
      <div className="project-list">
        {displayedProjects.map(project => {
          const progress = (project.amount_raised / project.goal_amount) * 100;
          return (
            <div key={project.id} className="project-card" onClick={() => handleClick(project.id)}>
              <img src={project.image} alt={project.title} />
              <h4>{project.title}</h4>
              <p className="amount-raised" style={{ color: 'blue', margin: '20px', fontSize: '15px' }}>
                {Math.round(progress)}% of ${project.goal_amount} Raised
              </p>
            </div>
          );
        })}
        {!showAll && (
          <button className="view-all-button" onClick={handleViewAll}>
            View All Projects
          </button>
        )}
      </div>
    </>
  );
};

export default ProjectList;
