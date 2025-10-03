<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Contact  Us</title>
  <!-- Favicon -->
<link rel="icon" type="image/x-icon" href="favicon.ico">
<link rel="icon" type="image/png" href="favicon.png">
  <!-- Font Awesome for icons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
  <style>
    /* Reset */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }
    body {
      font-family: Arial, sans-serif;
      line-height: 1.6;
      background: #fff;
      color: #222;
    }
    .container {
      width: 90%;
      max-width: 1200px;
      margin: auto;
    }

    /* Header */
    header {background:#000;color:#fff;padding:15px 0;position:sticky;top:0;z-index:1000;}
    .header-inner {display:flex;justify-content:space-between;align-items:center;}
    .logo {display:flex;align-items:center;gap:10px;}
    .logo img {height:50px;}
    .logo h1 {font-size:1rem;color:#d4af37;}

    nav ul {
      list-style:none;
      display:flex;
      gap:25px;
      font-size:1rem;
    }
    nav a {color:#fff;text-decoration:none;font-weight:bold;transition:color .3s;}
    nav a:hover {color:#d4af37;}

    /* Hamburger menu (hidden desktop) */
    .menu-toggle {
      display:none;
      flex-direction:column;
      gap:5px;
      cursor:pointer;
    }
    .menu-toggle span {
      width:25px;height:3px;background:#d4af37;
    }

    /* Mobile */
    @media(max-width: 768px) {
      nav ul {
        display:none; /* hide by default */
        flex-direction:column;
        background:#000;
        position:absolute;
        top:60px; right:20px;
        width:200px;
        padding:15px;
        border-radius:8px;
      }
      nav ul.show {display:flex;} /* show when toggled */
      .menu-toggle {display:flex;} /* show hamburger */
    }

    /* Hero */
    .hero{
      position:relative; min-height:50vh;
      background:url('contact/hero-contact.jpg') no-repeat center/cover;
      display:flex; justify-content:center; align-items:center; text-align:center;
      color:#fff; padding:20px;
    }
    .hero::after{content:""; position:absolute; top:0; left:0; width:100%; height:100%; background:rgba(0,0,0,0.55);}
    .hero-content{position:relative; z-index:1; max-width:700px;}
    .hero-content h2{font-size:clamp(2rem,4vw,3rem); color:#d4af37; margin-bottom:15px;}
    .hero-content p{font-size:1.2rem;}

    /* Section Titles */
    .section{padding:60px 0;}
    .section h2{text-align:center; font-size:2rem; margin-bottom:30px; color:#d4af37;}

    /* Contact Info */
    .contact-info{display:grid; grid-template-columns:repeat(auto-fit,minmax(250px,1fr)); gap:25px; margin-top:20px;}
    .info-box{
      background:#fff; border:2px solid #000; border-radius:10px;
      padding:25px; text-align:center; transition:0.3s; 
    }
    .info-box i{font-size:2rem; color:#d4af37; margin-bottom:12px;}
    .info-box p{margin:6px 0;}
    .info-box:hover{border-color:#d4af37; transform:translateY(-5px); box-shadow:0 6px 18px rgba(0,0,0,0.15);}

    /* Process */
    .process{margin-top:50px;}
    .process-steps{display:grid; grid-template-columns:repeat(auto-fit,minmax(250px,1fr)); gap:25px;}
    .step{
      background:#fff; border:2px solid #000; border-radius:10px;
      padding:25px; text-align:center; transition:0.3s;
    }
    .step i{font-size:2rem; color:#d4af37; margin-bottom:12px;}
    .step h4{margin-bottom:10px;}
    .step:hover{border-color:#d4af37; transform:translateY(-5px);}

    /* Floating WhatsApp */
    .whatsapp-float{
      position:fixed; bottom:20px; right:20px; z-index:999; 
    }
    .whatsapp-float a{
      background:#25d366; color:#000; padding:14px 18px; border-radius:50%; font-size:1.5rem; box-shadow:0 4px 6px rgba(0,0,0,0.3);
    }
    .whatsapp-float a:hover{background:#128c7e;}

    /* Footer */
    footer {
      background: #000;
      color: #fff;
    }
    .footer-top {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
      gap: 30px;
      padding: 50px 0;
      border-bottom: 1px solid #333;
    }
    .footer-top h4 {
      color: #d4af37;
      margin-bottom: 15px;
    }
    .footer-top p, 
    .footer-top li, 
    .footer-top a {
      font-size: 0.95rem;
      color: #ccc;
    }
    .footer-top ul {
      list-style: none;
      padding: 0;
    }
    .footer-top a {
      text-decoration: none;
      transition: color 0.3s;
    }
    .footer-top a:hover {
      color: #d4af37;
    }
    .social-links {
      display: flex;
      gap: 20px;
      margin-top: 10px;
      font-size: 1.5rem;
    }
    .social-links a {
      color: #d4af37;
      transition: color 0.3s ease;
    }
    .social-links a:hover {
      color: #fff;
    }
    .footer-bottom {
      text-align: center;
      padding: 15px 0;
      font-size: 0.9rem;
      color: #aaa;
    }
  </style>
</head>
<body>
  <body>
  <header>
    <div class="container header-inner">
      <div class="logo">
        <img src="logo.jpg" alt="Dave Jethro Logo" />
        <h1>Music To Experience</h1>
      </div>
      <nav>
        <div class="menu-toggle">
          <span></span><span></span><span></span>
        </div>
        <ul>
          <li><a href="/">Home</a></li>
          <li><a href="/about/">About Us</a></li>
          <li><a href="/music/">Music Career</a></li>
          <li><a href="/sound/">Sound System</a></li>
          <li><a href="/band/">Band</a></li>
          <li><a href="/merch/">Merchandise</a></li>
          <li><a href="/contact/">Contact</a></li> 
        </ul>
      </nav>
    </div>
  </header>

  <!-- Hero -->
  <section class="hero">
    <div class="hero-content">
      <h2>Contact Dave Jethro</h2>
      <p>Music • Sound • Band • Merchandise — All in one place.</p>
    </div>
  </section>

  <!-- Contact Info -->
  <section class="section">
    <div class="container">
      <h2>Contact Information</h2>
      <div class="contact-info">
        <div class="info-box">
          <i class="fas fa-phone"></i>
          <h4>Phone</h4>
          <p>+256 764 188 054</p>
        </div>
        <div class="info-box">
          <i class="fas fa-envelope"></i>
          <h4>Email</h4>
          <p>info@davejethro.com</p>
        </div>
        <div class="info-box">
          <i class="fas fa-globe"></i>
          <h4>Website</h4>
          <p>www.davejethro.com</p>
        </div>
        <div class="info-box">
          <i class="fas fa-map-marker-alt"></i>
          <h4>Location</h4>
          <p>Kampala, Uganda</p>
        </div>
      </div>
    </div>
  </section>

  <!-- How to Reach -->
  <section class="section">
    <div class="container">
      <h2>How to Get in Touch</h2>
      <div class="process-steps">
        <div class="step">
          <i class="fab fa-whatsapp"></i>
          <h4>Step 1: WhatsApp</h4>
          <p>Click the green WhatsApp button below to chat directly with Dave Jethro’s team.</p>
        </div>
        <div class="step">
          <i class="fas fa-envelope-open-text"></i>
          <h4>Step 2: Email</h4>
          <p>Send us a detailed inquiry at <b>info@davejethro.com</b> and we’ll get back to you within 24hrs.</p>
        </div>
        <div class="step">
          <i class="fas fa-calendar-check"></i>
          <h4>Step 3: Confirm Booking</h4>
          <p>Once details are clear, we’ll finalize your booking and get everything set for your event.</p>
        </div>
      </div>
    </div>
  </section>

  <!-- WhatsApp Floating Button -->
  <div class="whatsapp-float">
    <a href="https://wa.me/256764188054?text=Hello%20Dave%2C%20I%20would%20like%20to%20make%20a%20booking..." target="_blank">
      <i class="fab fa-whatsapp"></i>
    </a>
  </div>

  <!-- Footer -->
  <footer id="contact">
    <div class="container footer-top">
      <!-- Inspiration -->
      <div>
        <h4>Inspiration</h4>
        <p>"Music is not just sound – it’s the heartbeat of every moment, the language of the soul, and the bridge that connects us all."</p>
      </div>
      <!-- Quick Links -->
      <div>
        <h4>Quick Links</h4>
        <ul>
          <li><a href="/fans/">Family</a></li>
          <li><a href="/insight/">Insight</a></li>
          <li><a href="/faq/">FAQ</a></li>
        </ul>
      </div>
      <!-- Contact -->
      <div>
        <h4>Contact Us</h4>
        <p>Phone: +256 764 188 054</p>
        <p>Email: info@davejethro.com</p>
        <p>Location: Kampala, Uganda</p>
      </div>
      <!-- Follow Us -->
      <div>
        <h4>Follow Us</h4>
        <div class="social-links">
          <a href="https://www.facebook.com/share/1A6gNxgX9R/?mibextid=wwXIfr" target="_blank"><i class="fab fa-facebook-f"></i></a>
          <a href="https://www.instagram.com/dave_jethro?igsh=MW4wYjIydGh2eHQzeg%3D%3D&utm_source=qr" target="_blank"><i class="fab fa-instagram"></i></a>
          <a href="https://x.com/dave_jethro1?s=21" target="_blank"><i class="fab fa-twitter"></i></a>
          <a href="https://youtube.com/@davejethro?si=gP4CaPGCJe-LdC5k" target="_blank"><i class="fab fa-youtube"></i></a>
          <a href="https://www.tiktok.com/@dave_jethro?_t=ZM-90BcP14EUv2&_r=1" target="_blank"><i class="fab fa-tiktok"></i></a>
          <a href="#" target="_blank"><i class="fab fa-whatsapp"></i></a>
          <a href="#" target="_blank"><i class="fab fa-linkedin"></i></a>
        </div>
      </div>
    </div>
    <div class="footer-bottom">
      <p>&copy; 2025 Dave Jethro. All rights reserved. | Built and maintained by Breeford Technologies</p>
    </div>
  </footer>

  <script>
    // Toggle mobile menu
    const toggle = document.querySelector('.menu-toggle');
    const menu = document.querySelector('nav ul');
    toggle.addEventListener('click', () => menu.classList.toggle('show'));
  </script>
</body>
</html>
