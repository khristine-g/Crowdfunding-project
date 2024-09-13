import React, { useState, useEffect, useCallback } from 'react';
import { useNavigate } from 'react-router-dom';
import '../ProjectList.css';

const ProjectList = ({ showAll }) => {
  const [projects, setProjects] = useState([]);
  const [categories, setCategories] = useState([]);
  const [selectedCategoryId, setSelectedCategoryId] = useState('');
  const [currentIndex, setCurrentIndex] = useState(0);
  const navigate = useNavigate();

  useEffect(() => {
    fetch('http://localhost:3000/categories')
      .then(response => response.json())
      .then(data => setCategories(data))
      .catch(error => console.error('Error fetching categories:', error));
  }, []);

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

  const handleClick = (id) => {
    navigate(`/projects/${id}`);
  };

  const handleCategoryChange = (event) => {
    setSelectedCategoryId(event.target.value);
  };

  // Go to the next project, and wrap around to the beginning
  const handleNext = useCallback(() => {
    setCurrentIndex((prevIndex) => (prevIndex + 1) % projects.length);
  }, [projects.length]);

  // Go to the previous project, and wrap around to the end
  const handlePrev = () => {
    setCurrentIndex((prevIndex) => (prevIndex - 1 + projects.length) % projects.length);
  };

  // Automatically slide to the next project every 3 seconds
  useEffect(() => {
    const interval = setInterval(() => {
      handleNext();
    }, 3000); // Change slide every 3 seconds

    return () => clearInterval(interval);
  }, [handleNext]);

  // Show 4 projects at a time, starting from the current index
  const displayedProjects = projects.slice(currentIndex, currentIndex + 4);

  // Wrap around the displayed projects if fewer than 4 are at the end of the list
  if (displayedProjects.length < 4) {
    displayedProjects.push(...projects.slice(0, 4 - displayedProjects.length));
  }

  const handleViewAll = () => {
    navigate('/projects');
  };

  return (
    <>
      <h1 className="project-list-title">FEATURED PROJECTS</h1>
      <div className="project-list-container">
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

        <div className="carousel-container">
          <button className="carousel-button prev-button" onClick={handlePrev}>
            &lt;
          </button>

          <div className="carousel-slide">
            {displayedProjects.map((project, index) => {
              const progress = (project.amount_raised / project.goal_amount) * 100;
              return (
                <div
                  key={project.id}
                  className="project-card"
                  style={{ backgroundImage: `url(${project.image})`, transition: 'transform 0.5s ease' }}
                  onClick={() => handleClick(project.id)}
                >
                                    
                  <div className="project-info">
  
                    <h4>{project.title}</h4>
                    <p>{Math.round(progress)}% of ${project.goal_amount} Raised</p>
                    <div className="progress-bar">
            <div className="progress" style={{ width: `${progress}%` }}></div>
          </div>
                    
                  </div>
                </div>
              );
            })}
          </div>

          <button className="carousel-button next-button" onClick={handleNext}>
            &gt;
          </button>
        </div>

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



// import React, { useState, useEffect } from 'react';
// import { useNavigate } from 'react-router-dom';
// import '../ProjectList.css';

// const ProjectList = ({ showAll }) => {
//   const [projects, setProjects] = useState([]);
//   const [categories, setCategories] = useState([]);
//   const [selectedCategoryId, setSelectedCategoryId] = useState('');
//   const navigate = useNavigate();

//   useEffect(() => {
//     fetch('http://localhost:3000/categories')
//       .then(response => {
//         if (!response.ok) {
//           throw new Error('Network response was not ok');
//         }
//         return response.json();
//       })
//       .then(data => {
//         setCategories(data);
//       })
//       .catch(error => console.error('Error fetching categories:', error));
//   }, []);

//   useEffect(() => {
//     const fetchProjects = async () => {
//       try {
//         const response = await fetch(`http://localhost:3000/projects?category_id=${selectedCategoryId}`);
//         if (!response.ok) {
//           throw new Error('Network response was not ok');
//         }
//         const data = await response.json();
//         setProjects(data);
//       } catch (error) {
//         console.error('Error fetching projects:', error);
//       }
//     };

//     fetchProjects();
//   }, [selectedCategoryId]);

//   const handleClick = (id) => {
//     navigate(`/projects/${id}`);
//   };

//   const handleViewAll = () => {
//     navigate('/projects');
//   };

//   const handleCategoryChange = (event) => {
//     const selected = event.target.value;
//     setSelectedCategoryId(selected);
//   };

//   const displayedProjects = showAll ? projects : projects.slice(0, 4);

//   return (
    
//     <>
//       <h1 className='project-list-title'>Browse our featured projects</h1>
//     <div className='project-list-container'>
    
//       {showAll && (
//         <div className="filter-container">
//           <label htmlFor="category-filter">Show by Category:</label>
//           <select
//             id="category-filter"
//             value={selectedCategoryId}
//             onChange={handleCategoryChange}
//           >
//             <option value="">All</option>
        
//             {categories.map(category => (
//               <option key={category.id} value={category.id}>
//                 {category.name}
//               </option>
//             ))}
       

          
//           </select>
//         </div>
     
//       )}
   
//       <div className="project-list">
//         {displayedProjects.map(project => {
//           const progress = (project.amount_raised / project.goal_amount) * 100;
//           return (
//             <div
//               key={project.id}
//               className="project-card"
//               style={{ backgroundImage: `url(${project.image})` }}
//               onClick={() => handleClick(project.id)}
//             >
//               <div className="project-info">
//                 <h4>{project.title}</h4>
//                 <p>{Math.round(progress)}% of ${project.goal_amount} Raised</p>
                
//               </div>
              
//             </div>
//           );
//         })}
//         {!showAll && (
//           <button className="view-all-button" onClick={handleViewAll}>
//             View All Projects
//           </button>
//         )}
//       </div>
//       </div>

//     </>
//   );
// };

// export default ProjectList;
