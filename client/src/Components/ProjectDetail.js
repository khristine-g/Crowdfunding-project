import React, { useState, useEffect } from 'react';
import { useParams, Link } from 'react-router-dom';
import '../ProjectDetail.css';

const ProjectDetail = () => {
  const { id } = useParams();
  const [project, setProject] = useState({ comments: [] });
  const [newComment, setNewComment] = useState('');
  const [error, setError] = useState('');

  useEffect(() => {
    fetch(`http://localhost:3000/projects/${id}`)
      .then(response => {
        if (!response.ok) {
          throw new Error(`HTTP error! status: ${response.status}`);
        }
        return response.json();
      })
      .then(data => {
        setProject({
          ...data,
          comments: data.comments || [],
        });
      })
      .catch(error => console.error('Error fetching project details:', error));
  }, [id]);

  const progress = (project.amount_raised / project.goal_amount) * 100;

  const handleCommentSubmit = (e) => {
    e.preventDefault();

    if (!newComment.trim()) {
      setError('Comment cannot be empty');
      return;
    }

    const token = localStorage.getItem('authToken');

    if (!token) {
      setError('You must be logged in to submit a comment');
      return;
    }

    fetch(`http://localhost:3000/projects/${id}/comments`, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'Authorization': `Bearer ${token}`,
      },
      body: JSON.stringify({ content: newComment }),
    })
      .then(response => {
        if (!response.ok) {
          throw new Error(`HTTP error! status: ${response.status}`);
        }
        return response.json();
      })
      .then(data => {
        setProject(prevProject => ({
          ...prevProject,
          comments: Array.isArray(prevProject.comments) ? [...prevProject.comments, data] : [data],
        }));
        setNewComment('');
        setError('');
      })
      .catch(error => {
        setError('Failed to submit comment');
        console.error('Error submitting comment:', error);
      });
  };

  const handleCommentDelete = (commentId) => {
    const token = localStorage.getItem('authToken');

    if (!token) {
      setError('You must be logged in to delete a comment');
      return;
    }

    fetch(`http://localhost:3000/projects/${id}/comments/${commentId}`, {
      method: 'DELETE',
      headers: {
        'Authorization': `Bearer ${token}`,
      },
    })
      .then(response => {
        if (!response.ok) {
          throw new Error(`HTTP error! status: ${response.status}`);
        }
        setProject(prevProject => ({
          ...prevProject,
          comments: prevProject.comments.filter(comment => comment.id !== commentId),
        }));
      })
      .catch(error => {
        setError('Failed to delete comment');
        console.error('Error deleting comment:', error);
      });
  };

  return (
    <div className="project-detail">
      <div className="left-section">
        <h2>{project.title}</h2>
        <img src={project.image} alt={project.title} />
        <h1>About this project...</h1>
        <p>{project.detailed_description}</p>
        <h1>Why we’ve come to Empowerher…</h1>
        <p>{project.small_description}</p>
      </div>

      <div className="right-section">
        <div>
          <div className="progress-bar">
            <div className="progress" style={{ width: `${progress}%` }}></div>
          </div>
          <p className="progress-text">{Math.round(progress)}% of ${project.goal_amount} raised</p>

          <div className="owner-section">
            <img src={project.owner_avatar} alt={project.owner} />
            <h4>Project Owner: {project.owner}</h4>
          </div>

          <p className='amount-raised'>Raised: ${project.amount_raised} / ${project.goal_amount}</p>

          <Link to={`/projects/${id}/contribute`} className="contribute-button">
            Contribute Now
          </Link>
        </div>

        <div className='project-comment'>
          <h4>Comments:</h4>
          <ul>
            {project.comments?.map(comment => (
              <li key={comment.id}>
                <strong>{comment.contributor_name}</strong>: {comment.content}
                {localStorage.getItem('authToken') && comment.contributor_name === localStorage.getItem('username') && (
                  <button onClick={() => handleCommentDelete(comment.id)}>Delete</button>
                )}
              </li>
            )) || <li>No comments yet</li>}
          </ul>
          {/* Comment submission form */}
          <form onSubmit={handleCommentSubmit}>
            {error && <p style={{ color: 'red' }}>{error}</p>}
            <textarea
              value={newComment}
              onChange={(e) => setNewComment(e.target.value)}
              placeholder="Write your comment here..."
            />
            <button type="submit">Submit Comment</button>
          </form>
        </div>
      </div>
    </div>
  );
};

export default ProjectDetail;
