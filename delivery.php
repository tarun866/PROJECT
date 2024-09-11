<!DOCTYPE html>
<html lang="en">
<?php
include 'D:\xampp\htdocs\OnlineFood-PHP\connection\connect.php';
session_start();
// if(($_SESSION["adm_id" ] == true )) 
// {
// 	 header('location:indexowner.php');
// }
// else
// {
//     header('location:indexowner.php');
// }
?>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">    
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Seller Panel</title>
    <link href="n/css/lib/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="n/css/helper.css" rel="stylesheet">
    <link href="n/css/style.css" rel="stylesheet">
</head>

<body class="fix-header">

    <div class="preloader">
        <svg class="circular" viewBox="25 25 50 50">
			<circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" /> </svg>
    </div>
    
    <div id="main-wrapper">
     
        <div class="header">
            <nav class="navbar top-navbar navbar-expand-md navbar-light">

            <div class="navbar-header">
                    <a class="navbar-brand" href="indexowner.php">
                        
                        <span><img src="n/images/icn.png" alt="homepage" class="dark-logo" /></span>
                    </a>
                </div>

                <div class="navbar-collapse">
                    <ul class="navbar-nav mr-auto mt-md-0">
                    </ul>
                    
                       
                      
                      
                    <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-muted  " href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="n/images/bookingSystem/user-icn.png" alt="user" class="profile-pic" /></a>
                            <div class="dropdown-menu dropdown-menu-right animated zoomIn">
                                <ul class="dropdown-user">
                                    <li><a href="logoutowner.php"><i class="fa fa-power-off"></i> Logout</a></li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
      
        <div class="left-sidebar">
   
            <div class="scroll-sidebar">
       
                <nav class="sidebar-nav">
                    <ul id="sidebarnav">
                        
						 <li> <a href="all_orders.php"><i class="fa fa-shopping-cart" aria-hidden="true"></i><span>Orders</span></a></li>
                         
                    </ul>
                </nav>
            
            </div>
           
        </div>
    
       
    </div>
   
    <script src="n/js/lib/jquery/jquery.min.js"></script>
    <script src="n/js/lib/bootstrap/js/popper.min.js"></script>
    <script src="n/js/lib/bootstrap/js/bootstrap.min.js"></script>
    <script src="n/js/jquery.slimscroll.js"></script>
    <script src="n/js/sidebarmenu.js"></script>
    <script src="n/js/lib/sticky-kit-master/dist/sticky-kit.min.js"></script>
    <script src="n/js/custom.min.js"></script>

</body>

</html>