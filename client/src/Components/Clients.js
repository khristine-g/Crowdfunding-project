import React, { useState } from 'react';
import '../Clients.css';

const Clients = () => {
  const [currentSlide, setCurrentSlide] = useState(0);
  const commentsPerSlide = 3;

  const comments = [
    { name: 'John Doe', rating: 5, comment: 'Excellent service!', image: 'https://i2-prod.birminghammail.co.uk/incoming/article18430805.ece/ALTERNATES/s615/3_Smiling-woman-working-on-a-laptop-in-her-home-office.jpg' },
    { name: 'Jane Smith', rating: 4, comment: 'Very satisfied with the project.', image: 'https://i0.wp.com/thenerdbae.com/wp-content/uploads/2023/10/pexels-photo-2422287.jpeg?resize=1068%2C837&ssl=1' },
    { name: 'Emma Wilson', rating: 5, comment: 'Highly recommend!', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQefGtVWaj1Ut-nrRsf_i_YUKb2n0Qh0OIM6g&s' },
    { name: 'Michael Brown', rating: 3, comment: 'Good experience, but room for improvement.', image: 'https://www.trainingjournal.com/wp-content/uploads/2023/12/AdobeStock_628000036.jpg' },
    { name: 'Olivia Davis', rating: 4, comment: 'Great support and communication.', image: 'https://www.therapyinbeverlyhills.com/wp-content/uploads/2018/11/Successful-Black-Woman-1920x1280.jpg' },
    { name: 'David Johnson', rating: 5, comment: 'Fantastic work!', image: 'https://www.womentech.net/sites/default/files/styles/cms_bootstrap_12_12/public/blog/images/shutterstock_1239724990.jpg?itok=cd4QksRx' },
  ];

  const totalSlides = Math.ceil(comments.length / commentsPerSlide);

  return (
    <div className="clients-container">
      <p>WHAT OUR CLIENTS ARE SAYING</p>
      <div className="client-carousel">
        {comments.slice(currentSlide * commentsPerSlide, (currentSlide + 1) * commentsPerSlide).map((comment, index) => (
          <div key={index} className="client-comment">
            <img src={comment.image} alt={comment.name} className="client-image" />
            <div className="client-details">
              <h3>{comment.name}</h3>
              <div className="client-rating">
                {'★'.repeat(comment.rating)}
              </div>
              <p>{comment.comment}</p>
            </div>
          </div>
        ))}
      </div>
      <div className="carousel-dots">
        {Array.from({ length: totalSlides }).map((_, i) => (
          <span
            key={i}
            className={`dot ${i === currentSlide ? 'active' : ''}`}
            onClick={() => setCurrentSlide(i)}
          />
        ))}
      </div>
    </div>
  );
};

export default Clients;
