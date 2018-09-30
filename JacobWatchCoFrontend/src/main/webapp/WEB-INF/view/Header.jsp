<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-expand-md bg-dark navbar-dark">
  <a class="navbar-brand" href="carousel">JWC</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="Home">Home</a>
      </li>
  
      <li class="nav-item">
        <a class="nav-link" href="Wrist Diaries">Wrist Diaries</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Contact Us">Contact Us</a>
      </li>
      <li class="nav-item">
     </li>
     <li class="nav-item">
        <a class="nav-link" href="Admin">Admin</a>
      </li>
      
      <security:authorize access="isAnonymous()">
      <li class="nav-item">
        <a class="nav-link" href="loginIn">Login</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Signup">SignUp</a>
      </li>
      </security:authorize>
      <security:authorize access="isAuthenticated()">
      <li class="nav-item">
        <a class="nav-link" href="loginIn">Logout</a>
      </li>
      </security:authorize>
      <div class="dropdown">
  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Add Category/Product
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item" href="Category">Add Category</a>
    <a class="dropdown-item" href="Product">Add Product</a>
  </div>
</div>
     <li>
   
      </li>     
    </ul>
  </div>  
</nav>


