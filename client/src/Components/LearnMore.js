import React from 'react';
import { useNavigate } from 'react-router-dom';
import '../LearnMore.css'; // Import the CSS file for styling

const LearnMore = () => {
  const navigate = useNavigate();

  const handleLearnMoreClick = () => {
    navigate('/submit-project');
  };

  return (
    <div className="learnmore-container">
      <div className="carousel-slide">
        <img
          src=" https://t3.ftcdn.net/jpg/04/22/96/52/360_F_422965230_WnyQ93M3iTjgpS0AiWlhBoL3dGqGC0IZ.jpg"
          alt="Creative Project"
          className="learnmore-image"
        />
        <div className="learnmore-content">
        <p className="learnmore-paragraph">
            The world is full of creativity
          </p>
          <h2 className="learnmore-title">Bring your creative project to life</h2>
          
          <button className="submitproject-button" onClick={handleLearnMoreClick}>
            Submit a Project
          </button>
        </div>
      </div>
    </div>
  );
};

export default LearnMore;
