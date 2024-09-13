import React, { useEffect, useState } from 'react';
import { Link } from 'react-router-dom';
import '../Home.css';
import ProjectList from "./ProjectList";
import LearnMore from './LearnMore';
import Clients from './Clients';
import Team from './Team';

const Home = () => {
  const [activeIndex, setActiveIndex] = useState(0);
  const images = [
    "https://www.essence.com/wp-content/uploads/2018/11/GettyImages-906798272.jpg",
    "https://www.bankrate.com/2023/03/13104907/grants-for-black-women.jpeg?auto=webp&optimize=high&crop=16:9",
    "https://o-yeshomeloans.co.za/wp-content/uploads/2022/08/How-to-clear-your-credit-score-if-you-want-to-buy-a-house.jpg"
  ];

  useEffect(() => {
    const interval = setInterval(() => {
      setActiveIndex(prevIndex => (prevIndex + 1) % images.length);
    }, 10000); // Change image every 10 seconds

    return () => clearInterval(interval);
  }, [images.length]);

  return (
    <div className="home-container">
      <div className="carousel">
        <div className="carousel-images">
          {images.map((image, index) => (
            <img
              key={index}
              className={`carousel-image ${index === activeIndex ? 'active' : ''}`}
              src={image}
              alt={`carousel ${index}`}
            />
          ))}
        </div>
        <div className="carousel-content">
          <h1 className="content-heading">Support Our Community Projects</h1>
          <p className="content-text">
            We are dedicated to supporting innovative and impactful projects in our community. Explore our projects and find out how you can contribute.
          </p>
          <Link to='/projects'> 
            <button className="search-button">Browse Projects</button>
          </Link>
        </div>
      </div>
      <div className="project-list">
        <ProjectList />
      </div>
      <div className="learn-more">
        <LearnMore />
      </div>
      <div className="team">
        <Team />
      </div>
      <div className="clients">
        <Clients />
      </div>
      
    </div>
  );
};

export default Home;
