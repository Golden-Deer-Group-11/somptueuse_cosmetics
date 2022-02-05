<!DOCTYPE html>
<html lang="en"><!-- Basic -->
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">   
   
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
 
     <!-- Site Metas -->
    <title>Somptueuse Cosmetics</title>  
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">    
	<!-- Site CSS -->
    <link rel="stylesheet" href="css/style.css">    
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/custom.css">

    <!-- Logo -->
    <link rel="icon" href="images/logo_circle.png">

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
	<!-- Start header -->
	<header class="top-navbar">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container">
				<div class="collapse navbar-collapse" id="navbars-P-products">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item"><a class="nav-link" href="index.php" >Home</a></li>
						<li class="nav-item"><a class="nav-link" href="menu.php">Products</a></li>
						<li class="nav-item"><a class="nav-link" href="gallery.php">Collections</a></li>
						<li class="nav-item"><a class="nav-link" href="about.php">About Us</a></li>
						<li class="nav-item"><a class="nav-link" href="review.php">Reviews</a></li>
					</ul>
				</div>
				
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbars-P-products" aria-controls="navbars-P-products" aria-expanded="false" aria-label="Toggle navigation">
				  <span class="navbar-toggler-icon"></span>
				</button>
				
				<a class="navbar-brand" href="index.php">
					<img src="images/sompcos_logo.png" height="50" alt="" />
				</a>
				
				<div class="collapse navbar-collapse" id="navbars-P-products">

					<?php
					if(isset($_SESSION['uid']))
					{
					?>
					<li class="nav-item"><a class="nav-link" href="cart.php" ><img src="images/cart.png" height="30"></a></li>
					<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="dropdown-a" data-toggle="dropdown"><img src="images/login.png" height="28"></a>
							<div class="dropdown-menu" aria-labelledby="dropdown-a">
								<a class="dropdown-item" href="logout.php">Log Out</a>
							</div>
						</li>
					
					<?php	
					}
					else
					{	
					?>
					<a class="headerbtn hdrbtn btn-circle btn-outline-header-white" href="login.php">Log In</a>&nbsp;&nbsp;&nbsp;<a class="headerbtn hdrbtn btn-circle btn-outline-new-white" href="registration.php">Register</a>
					<?php
					}
					?>	

					  </div>	  
				
			</div>
		</nav>
	</header>
	<!-- End header -->
