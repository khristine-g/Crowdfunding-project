import React from 'react';
import { useNavigate } from 'react-router-dom';
import { Carousel } from 'react-responsive-carousel';
import 'react-responsive-carousel/lib/styles/carousel.min.css';
import '../LearnMore.css'; // Import the CSS file for styling

const LearnMore = () => {
  const navigate = useNavigate();

  const handleLearnMoreClick = () => {
    navigate('/submit-project');
  };

  return (
    <div className="learnmore-container">
      <Carousel
        autoPlay
        infiniteLoop
        showThumbs={false}
        showStatus={false}
        interval={5000}
        className="learnmore-carousel"
      >
        <div className="carousel-slide">
          <img src="https://st4.depositphotos.com/4218696/41396/i/450/depositphotos_413967714-stock-photo-online-life-concept-gorgeous-black.jpg" alt="Creative Project 1" />
          <div className="learnmore-content">
            <h2 className="learnmore-title">Bring your creative project to life</h2>
            <p className="learnmore-paragraph">
              The followup to Cities of Magick #1, a fantasy-western tale set in the post-post-post-apocalypse! Combines issues #2 & #3 into one book!
            </p>
            <button className="submitproject-button" onClick={handleLearnMoreClick}>Submit Project</button>
          </div>
        </div>
        <div className="carousel-slide">
          <img src="https://www.digitalsupercluster.ca/wp-content/uploads/2023/10/AdobeStock_487770902-1680x1120.jpeg" alt="Creative Project 2" />
          <div className="learnmore-content">
            <h2 className="learnmore-title">Innovate and Inspire</h2>
            <p className="learnmore-paragraph">
              Create and share your groundbreaking ideas with a community that supports innovation and creativity.
            </p>
            <button className="submitproject-button" onClick={handleLearnMoreClick}>Submit Project</button>
          </div>
        </div>
        <div className="carousel-slide">
          <img src="https://i2-prod.birminghammail.co.uk/incoming/article18430805.ece/ALTERNATES/s1200d/3_Smiling-woman-working-on-a-laptop-in-her-home-office.jpg" alt="Creative Project 3" />
          <div className="learnmore-content">
            <h2 className="learnmore-title">Join a Thriving Community</h2>
            <p className="learnmore-paragraph">
              Connect with like-minded individuals and turn your vision into reality through collaboration and support.
            </p>
            <button className="submitproject-button" onClick={handleLearnMoreClick}>Submit Project</button>
          </div>
        </div>
      </Carousel>
    </div>
  );
};

export default LearnMore;
