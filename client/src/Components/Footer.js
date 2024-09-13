import React from 'react';
import { FaFacebookF, FaTwitter, FaInstagram, FaLinkedin } from 'react-icons/fa';
import { IoMdMail } from 'react-icons/io';
import { RiMapPinLine } from 'react-icons/ri';
import { MdPhone } from 'react-icons/md';
import '../Footer.css'; // Import the CSS file for styling

const Footer = () => {
  return (
    <footer className="footer-container">
      <div className="footer-section">
        <h2>Empowerher</h2>
        <p>Lorem quas utamur delicata qui, vix ei prima mentitum omnesque. Duo corrumpit cotidieque ne.</p>
        <div className="social-media-icons">
          <a href="https://facebook.com" target="_blank" rel="noopener noreferrer"><FaFacebookF /></a>
          <a href="https://twitter.com" target="_blank" rel="noopener noreferrer"><FaTwitter /></a>
          <a href="https://instagram.com" target="_blank" rel="noopener noreferrer"><FaInstagram /></a>
          <a href="https://linkedin.com" target="_blank" rel="noopener noreferrer"><FaLinkedin /></a>
        </div>
      </div>
      <div className="footer-section">
        <h2>Company</h2>
        <ul>
          <li><a href="/about-us">About us</a></li>
          <li><a href="/latest-events">Latest events</a></li>
          <li><a href="/how-it-works">How It Works</a></li>
          <li><a href="/news-articles">News & articles</a></li>
          <li><a href="/contact-us">Contact us</a></li>
        </ul>
      </div>
      <div className="footer-section">
        <h2>Fundraising</h2>
        <ul>
          <li><a href="/business">Business</a></li>
          <li><a href="/design">Design</a></li>
          <li><a href="/film-video">Film & Video</a></li>
          <li><a href="/technology">Technology</a></li>
          <li><a href="/games">Games</a></li>
        </ul>
      </div>
      <div className="footer-section contact-section">
        <h2>Contact</h2>
        <p><MdPhone /> 666 888 0000</p>
        <p><IoMdMail /> needhelp@potisen.com</p>
        <p><RiMapPinLine /> 22 Brooklyn Street, New York, USA</p>
      </div>
    </footer>
  );
};

export default Footer;
