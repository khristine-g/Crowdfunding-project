import React, { useState, useEffect, useCallback } from 'react';
import { useNavigate } from 'react-router-dom';
import '../ProjectList.css';

const ProjectList = ({ showAll }) => {
  const [projects, setProjects] = useState([]);
  const [categories, setCategories] = useState([]);
  const [selectedCategoryId, setSelectedCategoryId] = useState('');
  const [currentIndex, setCurrentIndex] = useState(0);
  const navigate = useNavigate();

  // Fetch categories
  useEffect(() => {
    fetch('http://localhost:3000/categories')
      .then(response => response.json())
      .then(data => setCategories(data))
      .catch(error => console.error('Error fetching categories:', error));
  }, []);

  // Fetch projects based on selected category
  useEffect(() => {
    const fetchProjects = async () => {
      try {
        const response = await fetch(`http://localhost:3000/projects?category_id=${selectedCategoryId}`);
        const data = await response.json();
        setProjects(data);
      } catch (error) {
        console.error('Error fetching projects:', error);
      }
    };
    fetchProjects();
  }, [selectedCategoryId]);

  // Handle project click to navigate to details page
  const handleClick = (id) => navigate(`/projects/${id}`);

  // Handle next project slide
  const handleNext = useCallback(() => {
    setCurrentIndex((prevIndex) => (prevIndex < projects.length - 4 ? prevIndex + 1 : 0));
  }, [projects.length]);

  // Handle previous project slide
  const handlePrev = useCallback(() => {
    setCurrentIndex((prevIndex) => (prevIndex > 0 ? prevIndex - 1 : projects.length - 4));
  }, [projects.length]);

  // Auto-slide every 3 seconds
  useEffect(() => {
    const intervalId = setInterval(() => handleNext(), 3000);
    return () => clearInterval(intervalId);
  }, [handleNext]);

  return (
    <div className="project-list-container">
      <h1>FEATURED PROJECTS</h1>
      <p>Browse our featured projects</p>
      {showAll && (
        <div className="filter-container">
          <label htmlFor="category-filter">Show by Category:</label>
          <select
            id="category-filter"
            value={selectedCategoryId}
            onChange={(e) => setSelectedCategoryId(e.target.value)}
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

      <div className="carousel-container">
        <button className="prev-btn" onClick={handlePrev}>&lt;</button>
        <div className="carousel-slide">
          <div className="carousel-track" style={{ transform: `translateX(-${currentIndex * 25}%)` }}>
            {projects.map(project => {
              const progress = (project.amount_raised / project.goal_amount) * 100;
              return (
                <div
                  key={project.id}
                  className="project-card"
                  onClick={() => handleClick(project.id)}
                >
                  <div className="project-image" style={{ backgroundImage: `url(${project.image})` }}></div>
                  <div className="project-info">
                    <h4>{project.title}</h4>
                    <p>${project.amount_raised} raised of ${project.goal_amount}</p>

                    {/* Progress Bar */}
                    <div className="progress-bar">
                      <div className="progress" style={{ width: `${progress}%` }}></div>
                    </div>

                    <p>{Math.round(progress)}% of goal reached</p>
                  </div>
                </div>
              );
            })}
          </div>
        </div>
        <button className="next-btn" onClick={handleNext}>&gt;</button>
      </div>

      {!showAll && (
        <button className="view-all-button" onClick={() => navigate('/projects')}>
          View All Projects
        </button>
      )}
    </div>
  );
};

export default ProjectList;

 