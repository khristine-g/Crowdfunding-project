import React from 'react';
import { Link } from 'react-router-dom';
import '../Home.css';
import ProjectList from "./ProjectList";
import LearnMore from './LearnMore';

const Home = () => {
  return (
    <>
      <div className="home-container">
        <div className="image-and-content">
          <div className="image-container">
            <img 
              className="home-img" 
              src=" https://o-yeshomeloans.co.za/wp-content/uploads/2022/08/How-to-clear-your-credit-score-if-you-want-to-buy-a-house.jpg" 
              alt="career woman" 
            />
          </div>
          <div className="content-container">
        

            <h1 className="content-heading">Support Our Community Projects</h1>
            <p className="content-text">
              We are dedicated to supporting innovative and impactful projects in our community. Explore our projects and find out how you can contribute.
            </p>
        <Link to='/projects'> 
           
              <button className="search-button">Browse Projects</button>
              </Link >

            </div>
          </div>
        </div>
      
      <ProjectList />
      <LearnMore />
    </>
  );
};

export default Home;
