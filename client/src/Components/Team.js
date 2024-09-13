import React from "react";
import "../Team.css";

const Team = () => {
  return (
    <>
          <h1 classname="team-title" style={{marginLeft:'600px'}}> OUR TEAM</h1>
    
    <div className="team-container">
      <div className="team-main-img">
    <img 
          src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmINo9bZlBhzf2V1JMLG0KjCKmImVSGqRYaDyR_iG0toCKVmcJPrW9FT6OfijNdoIWQZU&usqp=CAU " 
          alt="team member" 
        />
        </div>
    

     
      <div className="team-images">
        <img 
          src="https://peopleofcolorintech.com/wp-content/uploads/2022/10/AdobeStock_297800292-scaled-1.jpeg" 
          alt="team member" 
        />
        <h2 className="team-name">Yara Jenkins</h2>
        <h4 className="team-role">Co-Founder</h4>
      </div>
      <div className="team-images">
        <img 
          src="https://www.stemwomen.com/wp-content/uploads/2021/03/Meet-Mark-Newland...-44-720x520.jpg" 
          alt="team member" 
        />
        <h2 className="team-name">Mark Newland</h2>
        <h4 className="team-role">CTO</h4>
      </div>
      <div className="team-images">
        <img 
          src="https://afrikanheroes.com/wp-content/uploads/2022/07/women-in-tech.jpg" 
          alt="team member" 
        />
        <h2 className="team-name">Aisha Davis</h2>
        <h4 className="team-role">Lead Developer</h4>
      </div>
      <div className="team-images">
        <img 
          src="https://imageio.forbes.com/specials-images/imageserve/65a6147061a04b75f1e7064b/0x0.jpg?format=jpg&height=900&width=1600&fit=bounds" 
          alt="team member" 
        />
        <h2 className="team-name">John Doe</h2>
        <h4 className="team-role">Project Manager</h4>
      </div>
    </div>
    </>
  );
};

export default Team;
