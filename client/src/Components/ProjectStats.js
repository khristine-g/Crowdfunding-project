import React, { useEffect, useState } from 'react';
import CountUp from 'react-countup';
import '../ProjectStats.css';

const ProjectStats = () => {
  const [inView, setInView] = useState(false);

  useEffect(() => {
    const handleScroll = () => {
      const element = document.getElementById('stats-section');
      const position = element.getBoundingClientRect();
      
      if (position.top < window.innerHeight && position.bottom >= 0) {
        setInView(true);
      }
    };

    window.addEventListener('scroll', handleScroll);
    return () => window.removeEventListener('scroll', handleScroll);
  }, []);

  return (
    <div id="stats-section" className="project-stats-container">
      <div className="stats-box">
        
        {inView && <CountUp style={{fontSize:"50px",color:"white"}}start={0} end={700} duration={3} />}
        <h3>Completed Projects</h3>
      </div>
      <div className="stats-box">
        
        {inView && <CountUp style={{fontSize:"50px",color:"white"}} start={0} end={3200000} duration={3} prefix="$" />}
        <h3> Raised to Date</h3>
      </div>
      <div className="stats-box">
        
        {inView && <CountUp style={{fontSize:"50px",color:"white"}}start={0} end={250} duration={3} />}
        <h3>Partner Fundings</h3>
      </div>
      <div className="stats-box">
        
        {inView && <CountUp style={{fontSize:"50px",color:"white"}}start={0} end={600} duration={3} />}
        <h3>Happy Repeat Clients</h3>
      </div>
    </div>
  );
};

export default ProjectStats;
