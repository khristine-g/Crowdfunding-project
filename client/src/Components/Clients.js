// src/components/Clients.js
import React, { useState } from 'react';
import '../Clients.css';

const Clients = () => {
  const [showMore, setShowMore] = useState(false);

  const comments = [
    { name: 'John Doe', rating: 5, comment: 'Excellent service!', image: 'john.jpg' },
    { name: 'Jane Smith', rating: 4, comment: 'Very satisfied with the project.', image: 'jane.jpg' },
    { name: 'Emma Wilson', rating: 5, comment: 'Highly recommend!', image: 'emma.jpg' },
    { name: 'Michael Brown', rating: 3, comment: 'Good experience, but room for improvement.', image: 'michael.jpg' },
    { name: 'Olivia Davis', rating: 4, comment: 'Great support and communication.', image: 'olivia.jpg' },
    // Add more comments as needed
  ];

  return (
    <div className="clients-container">
      {comments.slice(0, showMore ? comments.length : 3).map((comment, index) => (
        <div key={index} className="client-comment">
          <img src={`path/to/images/${comment.image}`} alt={comment.name} className="client-image" />
          <div className="client-details">
            <h3>{comment.name}</h3>
            <div className="client-rating">
              {Array(comment.rating).fill().map((_, i) => (
                <span key={i} className="star">★</span>
              ))}
            </div>
            <p>{comment.comment}</p>
          </div>
        </div>
      ))}
      <button className="show-more" onClick={() => setShowMore(!showMore)}>
        {showMore ? 'Show Less' : 'Show More'}
      </button>
    </div>
  );
};

export default Clients;
