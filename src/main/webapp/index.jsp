<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>AJIO · shopping reimagined</title>
  <!-- Font Awesome for icons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Inter', system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
    }

    body {
      background: #f8f6f2;
      color: #1e1e1e;
    }

    /* ---------- HEADER / NAVBAR ---------- */
    .navbar {
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      padding: 0.8rem 4%;
      background: white;
      box-shadow: 0 2px 12px rgba(0, 0, 0, 0.02);
      border-bottom: 1px solid #eee;
      position: sticky;
      top: 0;
      z-index: 100;
    }

    .nav-left {
      display: flex;
      align-items: center;
      gap: 2rem;
    }

    .logo {
      font-size: 1.9rem;
      font-weight: 700;
      letter-spacing: -0.5px;
      background: linear-gradient(135deg, #ff3f6c, #ff6f9f);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
      cursor: default;
    }
    .logo i {
      -webkit-text-fill-color: #ff3f6c;
      margin-right: 4px;
    }

    .nav-links {
      display: flex;
      gap: 1.8rem;
      font-weight: 500;
      font-size: 0.95rem;
      color: #2c2c2c;
    }
    .nav-links span {
      cursor: pointer;
      transition: color 0.2s;
    }
    .nav-links span:hover {
      color: #ff3f6c;
    }

    .nav-right {
      display: flex;
      align-items: center;
      gap: 1.5rem;
    }

    .search-bar {
      display: flex;
      align-items: center;
      background: #f0efeb;
      padding: 0.4rem 1rem;
      border-radius: 30px;
      gap: 8px;
      transition: 0.2s;
      border: 1px solid transparent;
    }
    .search-bar:hover,
    .search-bar:focus-within {
      background: white;
      border-color: #ddd;
    }
    .search-bar i {
      color: #777;
      font-size: 0.95rem;
    }
    .search-bar input {
      border: none;
      background: transparent;
      padding: 0.4rem 0;
      font-size: 0.9rem;
      outline: none;
      width: 160px;
    }
    .search-bar input::placeholder {
      color: #aaa;
      font-weight: 300;
    }

    .nav-icons {
      display: flex;
      gap: 1.4rem;
      font-size: 1.2rem;
      color: #2c2c2c;
    }
    .nav-icons i {
      cursor: pointer;
      transition: color 0.2s;
    }
    .nav-icons i:hover {
      color: #ff3f6c;
    }

    /* ---------- HERO BANNER ---------- */
    .hero {
      margin: 1.5rem 4% 2rem;
      background: linear-gradient(145deg, #fceaea, #fff5f0);
      border-radius: 32px;
      padding: 2.2rem 3rem;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      box-shadow: 0 8px 20px rgba(255, 63, 108, 0.06);
    }

    .hero-text {
      max-width: 480px;
    }
    .hero-text h1 {
      font-size: 2.6rem;
      font-weight: 700;
      letter-spacing: -1px;
      line-height: 1.2;
      margin-bottom: 0.5rem;
    }
    .hero-text h1 span {
      background: linear-gradient(135deg, #ff3f6c, #ff8a9e);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
    }
    .hero-text p {
      font-size: 1.05rem;
      color: #3d3d3d;
      margin-bottom: 1.8rem;
      opacity: 0.8;
      font-weight: 400;
    }
    .shop-now-btn {
      background: #ff3f6c;
      border: none;
      color: white;
      font-weight: 600;
      padding: 0.8rem 2.5rem;
      border-radius: 40px;
      font-size: 1rem;
      cursor: pointer;
      transition: 0.2s;
      box-shadow: 0 6px 14px rgba(255, 63, 108, 0.3);
    }
    .shop-now-btn:hover {
      background: #e5325b;
      transform: scale(1.02);
      box-shadow: 0 8px 18px rgba(255, 63, 108, 0.4);
    }

    .hero-image {
      background: rgba(255, 255, 255, 0.3);
      backdrop-filter: blur(2px);
      padding: 0.8rem 2rem 0.8rem 0;
      border-radius: 60px;
    }
    .hero-image i {
      font-size: 5.5rem;
      color: #ff3f6c;
      filter: drop-shadow(0 8px 12px rgba(255, 63, 108, 0.2));
    }

    /* ---------- CATEGORY PILLS ---------- */
    .category-strip {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      gap: 1rem 1.8rem;
      margin: 0 4% 2.2rem;
    }
    .category-pill {
      background: white;
      padding: 0.5rem 1.4rem;
      border-radius: 40px;
      font-weight: 500;
      font-size: 0.9rem;
      box-shadow: 0 2px 8px rgba(0, 0, 0, 0.02);
      border: 1px solid #eaeaea;
      cursor: pointer;
      transition: 0.15s;
      display: flex;
      align-items: center;
      gap: 8px;
    }
    .category-pill i {
      color: #ff3f6c;
      font-size: 0.9rem;
    }
    .category-pill:hover {
      border-color: #ff3f6c;
      background: #fff4f7;
      transform: translateY(-2px);
    }

    /* ---------- PRODUCT GRID ---------- */
    .section-title {
      display: flex;
      justify-content: space-between;
      align-items: baseline;
      margin: 0 4% 1.2rem;
    }
    .section-title h2 {
      font-weight: 700;
      font-size: 1.8rem;
      letter-spacing: -0.5px;
    }
    .section-title a {
      color: #ff3f6c;
      font-weight: 500;
      text-decoration: none;
      font-size: 0.95rem;
      border-bottom: 1.5px solid transparent;
      transition: 0.2s;
    }
    .section-title a:hover {
      border-bottom-color: #ff3f6c;
    }

    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
      gap: 1.8rem;
      margin: 0 4% 3rem;
    }

    .product-card {
      background: white;
      border-radius: 24px;
      padding: 1.2rem 0.8rem 1rem;
      box-shadow: 0 4px 16px rgba(0, 0, 0, 0.02);
      transition: 0.25s ease;
      border: 1px solid #f0f0f0;
      text-align: center;
      display: flex;
      flex-direction: column;
      align-items: center;
    }
    .product-card:hover {
      transform: translateY(-8px);
      box-shadow: 0 18px 32px rgba(0, 0, 0, 0.04);
      border-color: #e6e6e6;
    }

    .product-img {
      background: #f4f2ec;
      width: 100%;
      aspect-ratio: 1 / 1;
      border-radius: 20px;
      display: flex;
      align-items: center;
      justify-content: center;
      margin-bottom: 0.8rem;
      font-size: 3rem;
      color: #2c2c2c;
      transition: 0.2s;
    }
    .product-card:hover .product-img {
      background: #f0ede5;
    }

    .product-name {
      font-weight: 600;
      font-size: 0.95rem;
      margin: 0.2rem 0 0.15rem;
    }
    .product-brand {
      font-size: 0.75rem;
      color: #777;
      letter-spacing: 0.3px;
      text-transform: uppercase;
      font-weight: 500;
    }
    .product-price {
      margin-top: 0.3rem;
      font-weight: 700;
      font-size: 1.1rem;
    }
    .product-price small {
      font-weight: 400;
      color: #888;
      font-size: 0.75rem;
      text-decoration: line-through;
      margin-left: 6px;
    }
    .product-rating {
      margin-top: 0.2rem;
      font-size: 0.8rem;
      color: #f5b342;
      letter-spacing: 2px;
    }
    .product-rating span {
      color: #444;
      margin-left: 4px;
      font-weight: 400;
    }
    .add-to-cart {
      margin-top: 0.8rem;
      background: transparent;
      border: 1.5px solid #ddd;
      border-radius: 40px;
      padding: 0.3rem 1.4rem;
      font-weight: 500;
      font-size: 0.8rem;
      color: #1e1e1e;
      cursor: pointer;
      transition: 0.15s;
      display: inline-flex;
      align-items: center;
      gap: 8px;
    }
    .add-to-cart i {
      font-size: 0.8rem;
    }
    .add-to-cart:hover {
      background: #ff3f6c;
      border-color: #ff3f6c;
      color: white;
    }

    /* ---------- FOOTER / BANNER BOTTOM ---------- */
    .footer-banner {
      margin: 1.5rem 4% 0;
      background: #1e1e1e;
      border-radius: 32px 32px 0 0;
      padding: 2.5rem 3rem;
      color: #f0f0f0;
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      align-items: center;
    }
    .footer-banner h3 {
      font-weight: 500;
      font-size: 1.3rem;
      letter-spacing: -0.3px;
    }
    .footer-banner h3 i {
      color: #ff3f6c;
      margin-right: 10px;
    }
    .footer-banner p {
      opacity: 0.6;
      font-size: 0.9rem;
      margin-top: 4px;
    }
    .footer-banner .app-badge {
      display: flex;
      gap: 1rem;
    }
    .app-badge i {
      font-size: 2.2rem;
      opacity: 0.7;
      transition: 0.2s;
      cursor: pointer;
    }
    .app-badge i:hover {
      opacity: 1;
      color: #ff3f6c;
    }

    .footer-bottom {
      background: #1e1e1e;
      padding: 0.8rem 4% 2rem;
      color: #aaa;
      font-size: 0.8rem;
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      border-top: 1px solid #2e2e2e;
    }
    .footer-bottom span {
      cursor: default;
    }

    /* ---------- RESPONSIVE ---------- */
    @media (max-width: 768px) {
      .nav-links {
        display: none;
      }
      .search-bar input {
        width: 100px;
      }
      .hero {
        flex-direction: column;
        text-align: center;
        padding: 2rem 1.5rem;
      }
      .hero-text h1 {
        font-size: 2rem;
      }
      .hero-image i {
        font-size: 3.8rem;
        margin-top: 1rem;
      }
      .product-grid {
        grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
        gap: 1rem;
      }
      .footer-banner {
        flex-direction: column;
        gap: 1.2rem;
        text-align: center;
      }
    }
    @media (max-width: 480px) {
      .nav-right {
        gap: 0.8rem;
      }
      .search-bar input {
        width: 70px;
      }
      .hero-text h1 {
        font-size: 1.6rem;
      }
      .section-title h2 {
        font-size: 1.4rem;
      }
    }
  </style>
</head>
<body>
  <!-- NAVIGATION -->
  <header class="navbar">
    <div class="nav-left">
      <div class="logo"><i class="fas fa-crown"></i> AJIO</div>
      <div class="nav-links">
        <span>Men</span>
        <span>Women</span>
        <span>Kids</span>
        <span>Home</span>
        <span>Sale</span>
      </div>
    </div>
    <div class="nav-right">
      <div class="search-bar">
        <i class="fas fa-search"></i>
        <input type="text" placeholder="Search AJIO..." />
      </div>
      <div class="nav-icons">
        <i class="far fa-heart"></i>
        <i class="far fa-user"></i>
        <i class="fas fa-shopping-bag"></i>
      </div>
    </div>
  </header>

  <!-- HERO BANNER -->
  <div class="hero">
    <div class="hero-text">
      <h1>Style that <span>speaks</span></h1>
      <p>Discover the freshest drops from 1000+ brands · curated for you.</p>
      <button class="shop-now-btn"><i class="fas fa-arrow-right" style="margin-right: 10px;"></i>Shop now</button>
    </div>
    <div class="hero-image">
      <i class="fas fa-tshirt"></i>
      <i class="fas fa-shoe-prints" style="margin-left: 12px; font-size: 4.2rem;"></i>
    </div>
  </div>

  <!-- CATEGORY PILLS -->
  <div class="category-strip">
    <div class="category-pill"><i class="fas fa-fire"></i> Trending</div>
    <div class="category-pill"><i class="fas fa-tags"></i> Under ₹999</div>
    <div class="category-pill"><i class="fas fa-star"></i> AJIO Luxe</div>
    <div class="category-pill"><i class="fas fa-gem"></i> Indian wear</div>
    <div class="category-pill"><i class="fas fa-running"></i> Active</div>
    <div class="category-pill"><i class="fas fa-sun"></i> Summer edit</div>
  </div>

  <!-- PRODUCT SECTION -->
  <div class="section-title">
    <h2>Handpicked for you</h2>
    <a href="#">View all <i class="fas fa-chevron-right" style="font-size: 0.7rem;"></i></a>
  </div>

  <div class="product-grid">
    <!-- card 1 -->
    <div class="product-card">
      <div class="product-img"><i class="fas fa-tshirt"></i></div>
      <div class="product-name">Printed Oversized Tee</div>
      <div class="product-brand">HRX</div>
      <div class="product-price">₹699 <small>₹999</small></div>
      <div class="product-rating">★★★★☆ <span>4.2</span></div>
      <button class="add-to-cart"><i class="fas fa-plus"></i> Add</button>
    </div>
    <!-- card 2 -->
    <div class="product-card">
      <div class="product-img"><i class="fas fa-shoe-prints"></i></div>
      <div class="product-name">Slip-on Sneakers</div>
      <div class="product-brand">Puma</div>
      <div class="product-price">₹2,199 <small>₹3,499</small></div>
      <div class="product-rating">★★★★★ <span>4.8</span></div>
      <button class="add-to-cart"><i class="fas fa-plus"></i> Add</button>
    </div>
    <!-- card 3 -->
    <div class="product-card">
      <div class="product-img"><i class="fas fa-tshirt"></i></div>
      <div class="product-name">Slim Fit Jeans</div>
      <div class="product-brand">Levi's</div>
      <div class="product-price">₹1,899 <small>₹2,499</small></div>
      <div class="product-rating">★★★★☆ <span>4.4</span></div>
      <button class="add-to-cart"><i class="fas fa-plus"></i> Add</button>
    </div>
    <!-- card 4 -->
    <div class="product-card">
      <div class="product-img"><i class="fas fa-sun"></i></div>
      <div class="product-name">Aviator Sunglasses</div>
      <div class="product-brand">Ray-Ban</div>
      <div class="product-price">₹3,450 <small>₹5,999</small></div>
      <div class="product-rating">★★★★☆ <span>4.6</span></div>
      <button class="add-to-cart"><i class="fas fa-plus"></i> Add</button>
    </div>
    <!-- card 5 -->
    <div class="product-card">
      <div class="product-img"><i class="fas fa-gem"></i></div>
      <div class="product-name">Embroidered Kurta</div>
      <div class="product-brand">Manyavar</div>
      <div class="product-price">₹1,249 <small>₹2,299</small></div>
      <div class="product-rating">★★★★☆ <span>4.3</span></div>
      <button class="add-to-cart"><i class="fas fa-plus"></i> Add</button>
    </div>
    <!-- card 6 -->
    <div class="product-card">
      <div class="product-img"><i class="fas fa-bag-shopping"></i></div>
      <div class="product-name">Sling Bag</div>
      <div class="product-brand">Fossil</div>
      <div class="product-price">₹1,995 <small>₹2,999</small></div>
      <div class="product-rating">★★★★☆ <span>4.0</span></div>
      <button class="add-to-cart"><i class="fas fa-plus"></i> Add</button>
    </div>
  </div>

  <!-- FOOTER / BANNER -->
  <div class="footer-banner">
    <div>
      <h3><i class="fas fa-mobile-alt"></i> Download the AJIO app</h3>
      <p>Get 15% off your first order · exclusive app-only drops</p>
    </div>
    <div class="app-badge">
      <i class="fab fa-apple"></i>
      <i class="fab fa-google-play"></i>
    </div>
  </div>
  <div class="footer-bottom">
    <span>© 2026 AJIO · All rights reserved</span>
    <span><i class="far fa-heart" style="color: #ff3f6c;"></i>  made with style</span>
  </div>

  <!-- small interactive touch (not required) -->
  <script>
    (function() {
      // simple "add to cart" feedback (for demo)
      const addBtns = document.querySelectorAll('.add-to-cart');
      addBtns.forEach(btn => {
        btn.addEventListener('click', function(e) {
          e.preventDefault();
          const original = this.innerHTML;
          this.innerHTML = '<i class="fas fa-check"></i> Added';
          this.style.background = '#22a65e';
          this.style.borderColor = '#22a65e';
          this.style.color = 'white';
          setTimeout(() => {
            this.innerHTML = original;
            this.style.background = 'transparent';
            this.style.borderColor = '#ddd';
            this.style.color = '#1e1e1e';
          }, 1500);
        });
      });
    })();
  </script>
</body>
</html>
