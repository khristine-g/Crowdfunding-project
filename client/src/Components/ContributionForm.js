import React, { useState } from 'react';
import { useNavigate, useParams } from 'react-router-dom';
import '../ContributionForm.css';

const ContributionForm = () => {
  const { id } = useParams(); 
  const [amount, setAmount] = useState(''); 
  const [phoneNumber, setPhoneNumber] = useState(''); 
  const navigate = useNavigate(); 

  // Function to send SMS
  const sendSMS = (phoneNumber) => {
   
    console.log("working")
    const token = localStorage.getItem('authToken'); 

    
    const message = `Thank you for your contribution of $${amount} to Project ${id}!`;

    
    fetch('http://localhost:3000/send_sms', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'Authorization': `Bearer ${token}`, 
      },
      body: JSON.stringify({ phone_number: phoneNumber, message }), 
    })
    .then(response => {
      if (!response.ok) {
        throw new Error(`Failed to send SMS: ${response.status}`);
      }
      return response.json();
    })
    .then(() => {
      alert('A confirmation SMS has been sent.'); 
    })
    .catch(error => console.error('Error sending SMS:', error)); 
  };

  // Handles form submission
  const handleSubmit = (event) => {
    event.preventDefault();

    // Validate the contribution amount
    const parsedAmount = parseFloat(amount);
    if (isNaN(parsedAmount) || parsedAmount <= 0) {
      alert('Please enter a valid positive amount.');
      return;
    }

    
    const token = localStorage.getItem('authToken'); 

    
    fetch(`http://localhost:3000/projects/${id}/contributions`, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'Authorization': `Bearer ${token}`, 
      },
      body: JSON.stringify({ contribution: { amount: parsedAmount, phone_number: phoneNumber } }), 
    })
    .then(response => {
      if (!response.ok) {
        throw new Error(`HTTP error! status: ${response.status}`);
      }
      return response.json();
    })
    .then(() => {
      alert('Thank you for your contribution!'); 
      sendSMS(phoneNumber); 
      navigate(`/projects/${id}`); 
    })
    .catch(error => console.error('Error submitting contribution:', error)); 
  };

  return (
    <div className="contribution-form">
      <h2>Contribute to Project</h2>
      <form onSubmit={handleSubmit}>
        <label htmlFor="amount">Contribution Amount (USD):</label>
        <input
          type="number"
          id="amount"
          value={amount}
          onChange={(e) => setAmount(e.target.value)}
          min="0"
          step="1"
          required
        />
        <label htmlFor="phone-number">Phone Number:</label>
        <input
          type="tel"
          id="phone-number"
          value={phoneNumber}
          onChange={(e) => setPhoneNumber(e.target.value)}
          required
        />
        <button 
          type="submit"
          onClick={() => sendSMS(phoneNumber)} 
        >
          Submit Contribution
        </button>
      </form>
    </div>
  );
};

export default ContributionForm;



