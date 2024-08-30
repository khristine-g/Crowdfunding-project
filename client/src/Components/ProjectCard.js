// src/components/ProjectCard.js
import React from 'react';
import { useNavigate } from 'react-router-dom';
import '../ProjectCard.css';

const ProjectCard = ({ project }) => {
  const navigate = useNavigate();

  const handleClick = () => {
    navigate(`/projects/${project.id}`);
  };

  return (
    <div className="project-card" onClick={handleClick}>
      <img src={project.image_url} alt={project.title} />
      <h3>{project.title}</h3>
      <p>{project.short_description}</p>
      <p>Raised: ${project.amount_raised} / ${project.goal_amount}</p>
    </div>
  );
};

export default ProjectCard;
