<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>ShopNow</title>
  <link rel="stylesheet" href="style.css"/>
</head>
<body>

<header>
  <div class="logo">ShopNow</div>
  <div class="cart">Cart 🛒 <span id="cart-count">0</span></div>
</header>

<section class="products" id="product-list">

  <div class="product">
    <img src="https://via.placeholder.com/150" />
    <h3>Headphones</h3>
    <p>$50</p>
    <button onclick="addToCart()">Add to Cart</button>
  </div>

  <div class="product">
    <img src="https://via.placeholder.com/150" />
    <h3>Smart Watch</h3>
    <p>$120</p>
    <button onclick="addToCart()">Add to Cart</button>
  </div>

  <div class="product">
    <img src="https://via.placeholder.com/150" />
    <h3>Shoes</h3>
    <p>$80</p>
    <button onclick="addToCart()">Add to Cart</button>
  </div>

</section>

<script src="script.js"></script>
</body>
</html>
