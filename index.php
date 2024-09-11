<!DOCTYPE html>
<html lang="en">
<?php
include("connection/connect.php");  
error_reporting(0);  
session_start(); 

?>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">   
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="#">
    <title>Home</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animsition.min.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" rel="stylesheet">
    <style>
    #emailButton{
        padding: 5px 10px;
        font-size: 16px;
        cursor: pointer;
        background-color: white;
    }

    .hr{
        border: 0;
        height: 2px;
        background-color: black;
        font-weight: bold;

    }
    </style>
 </head>

<body class="home"> 
        <header id="header" class="header-scroll top-header headrom">
            <nav class="navbar navbar-dark">
                <div class="container">
                    <button class="navbar-toggler hidden-lg-up" type="button" data-toggle="collapse" data-target="#mainNavbarCollapse">&#9776;</button>
                    <a class="navbar-brand" href="index.php"> Foodies Fusion <img class="img-rounded"/> <i class="fa-solid fa-utensils"></i></a>
                    <div class="collapse navbar-toggleable-md  float-lg-right" id="mainNavbarCollapse">
                        <ul class="nav navbar-nav">
                            <li class="nav-item"> <a class="nav-link active" href="index.php">Home <span class="sr-only">(current)</span></a> </li>
                            <li class="nav-item"> <a class="nav-link active" href="restaurants.php">Restaurants <span class="sr-only"></span></a> </li>  
							<?php
						if(empty($_SESSION["user_id"])) 
							{
								echo '<li class="nav-item"><a href="login.php" class="nav-link active">Login</a> </li>
							  <li class="nav-item"><a href="registration.php" class="nav-link active">Register</a> </li>';
							}
						else
							{	
									echo  '<li class="nav-item"><a href="your_orders.php" class="nav-link active">My Orders</a> </li>';
									echo  '<li class="nav-item"><a href="logoutowner.php" class="nav-link active">Logout</a> </li>';
							}
						?>						 
                        </ul>
                    </div>
                </div>
            </nav>

        </header>

        <section class="hero bg-image" data-image-src="pimg.jpg">
            <div class="hero-inner">
                <div class="container text-center hero-text font-white">
                    <h1>Order Delivery & Take-Out </h1>
                    
                    <div class="banner-form">
                        <form class="form-inline">
                          
                        </form>
                    </div>
                </div>
            </div>      
        </section>  
        <section class="popular">
            <div class="container">
                <div class="title text-xs-center m-b-30">
                    <h2>Popular Dishes of the Month</h2>
                    <p class="lead">Easiest way to order your favourite food among these top 6 dishes</p>
                </div>
                <div id="max-order"></div>
                <div class="row">                    
						<?php 					
						$query_res= mysqli_query($db,"select * from dishes LIMIT 6"); 
                                while($r=mysqli_fetch_array($query_res))
                                {                                  
                                    echo '  <div class="col-xs-12 col-sm-6 col-md-4 food-item">
                                            <div class="food-item-wrap">
                                            <div class="figure-wrap bg-image" data-image-src="admin/Res_img/dishes/'.$r['img'].'"></div>
                                                <div class="content">
                                                    <h5><a href="dishes.php?res_id='.$r['rs_id'].'">'.$r['title'].'</a></h5>
                                                    <div class="product-name">'.$r['slogan'].'</div>
                                                    <div class="price-btn-block"> <span class="price">Rs'.$r['price'].'</span> <a href="dishes.php?res_id='.$r['rs_id'].'" class="btn theme-btn-dash pull-right">Order Now</a> </div>
                                                </div>                                              
                                            </div>
                                    </div>';                                      
                                }	
						?>
                </div>
            </div>
        </section>
        <hr class="hr">  
        <footer class="footer">
            <div class="container">
                <div class="bottom-footer">
                    <div class="row">
                        <div class="col-xs-12 col-sm-3 payment-options color-gray">
                            <h5>Payment Options</h5>
                            <ul>
                                <li><a href="#"> <img src="images/paypal.png" alt="Paypal"> </a></li>
                                <li><a href="#"> <img src="images/mastercard.png" alt="Mastercard"> </a> </li>
                                <li><a href="#"> <img src="images/maestro.png" alt="Maestro"> </a></li>
                                <li> <a href="#"> <img src="images/stripe.png" alt="Stripe"> </a> </li>
                                <li> <a href="#"> <img src="images/bitcoin.png" alt="Bitcoin"> </a></li>
                            </ul>
                        </div>
                        <div class="col-xs-12 col-sm-4 address color-gray">
                                    <h5>Address</h5>
                                    <p>5/140 Ram Nagar Colony I.T.I Road , Aligarh</p>
                                    <h5>Phone: 9897813910</a></h5> </div>
                                <div class="col-xs-12 col-sm-5 additional-info color-gray">
                                    <h5>Addition informations</h5>
                                   <p>Join thousands of other restaurants who benefit from having partnered with us.</p>
                                   <div class="email">
                                        <p style = "background">If there is any problem then goto  </p>
                                        <button id="emailButton">tarunpachauri97@gmail.com</button>
                                   </div>      
                                </div>
                    </div>
                </div>         
            </div>
        </footer>
    <script src="js/jquery.min.js"></script>
    <script src="js/tether.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/animsition.min.js"></script>
    <script src="js/bootstrap-slider.min.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/headroom.js"></script>
    <script src="js/foodpicky.min.js"></script>
    <script src = "js/index.js"></script>
<script>
document.addEventListener("DOMContentLoaded", function() {
    var emailButton = document.getElementById("emailButton");
    emailButton.addEventListener("click", function() {
        alert("Navigating to email tab...");
    });
});
</script>

<script>
document.addEventListener("DOMContentLoaded", function() {
    var emailButton = document.getElementById("emailButton");
    emailButton.addEventListener("click", function() {
        window.location.href = "https://www.gmail.com";
    });
});
</script>
</body>
</html>