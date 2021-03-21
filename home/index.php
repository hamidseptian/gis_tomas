<?php 
session_start();
include "../assets/koneksi.php";

 ?>


 <!DOCTYPE html>
<html lang="zxx">
<head>
	<title>GIS Tokoh Masyarakat</title>
	<meta charset="UTF-8">
	<meta name="description" content=" Divisima | eCommerce Template">
	<meta name="keywords" content="divisima, eCommerce, creative, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Favicon -->
	<link href="img/favicon.ico" rel="shortcut icon"/>

	<!-- Google Font -->
	<link href="https://fonts.googleapis.com/css?family=Josefin+Sans:300,300i,400,400i,700,700i" rel="stylesheet">


	<!-- Stylesheets -->


	<link rel="stylesheet" href="../assets/divisima/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="../assets/divisima/css/font-awesome.min.css"/>
	<link rel="stylesheet" href="../assets/divisima/css/flaticon.css"/>
	<link rel="stylesheet" href="../assets/divisima/css/slicknav.min.css"/>
	<link rel="stylesheet" href="../assets/divisima/css/jquery-ui.min.css"/>
	<link rel="stylesheet" href="../assets/divisima/css/owl.carousel.min.css"/>
	<link rel="stylesheet" href="../assets/divisima/css/animate.css"/>
	<link rel="stylesheet" href="../assets/divisima/css/style.css"/>
	<script src="../assets/divisima/js/jquery-3.2.1.min.js"></script>
	<script src="../assets/adminlte/js/jquery.js"></script>


	<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>
<body>
	<!-- Page Preloder -->


	<!-- Header section -->
	<header class="header-section">
		<div class="header-top">
			<div class="container">
				<div class="row">
					<div class="col-lg-1 text-center text-lg-left">
						<!-- logo -->
						<a href="./index.html" class="site-logo">
							<img src="gambar/logo_binmas.jpeg" alt=""  width="100px" style="margin-right: 10px">
							
						</a>
					</div>
					<div class="col-lg-7">
						<h4 style="margin-top:20px">GIS Tokoh Masyarakat</h4>
					</div>
					<div class="col-lg-4">
						<div class="user-panel pull-right">
							<div class="up-item">
								<a href="login/admin/" class="btn btn-info" style="float: right;">Login</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<nav class="main-navbar">
			<div class="container">
				<!-- menu -->
				<ul class="main-menu">
					
					<li><a href="index.php">Home</a></li>
					<li><a href="?m=visimisi">Visi Misi</a></li>
					<li><a href="?m=tugas">Tugas</a></li>
					<li><a href="#">Data</a>
						<ul class="sub-menu">
							<li><a href="?m=data_polsek">Polsek Pesisir Selatan</a></li>
							<li><a href="?m=data_tomas">Tokoh Masyarakat</a></li>
						</ul>
					</li>
					<li><a href="?m=pengaduan">Pengaduan</a></li>
					<li><a href="?m=kegiatan">Kegiatan</a></li>
					<li><a href="?m=maps">Peta Pesisir Selatan</a></li>
					<!-- <li><a href="?m=about">Tentang Binmas Pessel</a></li> -->
				
				</ul>
			</div>
		</nav>
	</header>



	<?php if (isset($_GET['m'])) { ?>
		 



	<section class="contact-section" style="margin-bottom: 20px">
		<div class="container">
			<div class="row">
				<?php include "template/konten.php" ?>
			</div>
		</div>

	</section>
	<?php } 
	else {
		include "form/home/home.php";
	}?>





	<section class="footer-section">
		<div class="container">
			
			<div class="row">
				<div class="col-lg-12 col-sm-12">
					<div class="footer-widget about-widget">
						
						
					</div>
				</div>
		
				
			</div>
		</div>
		<div class="social-links-warp">
			<div class="container">
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --> 
<p class="text-white text-center mt-5">Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a></p>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->

			</div>
		</div>
	</section>
	<!-- Footer section end -->



	<!--====== Javascripts & Jquery ======-->
	<script src="../assets/divisima/js/jquery-3.2.1.min.js"></script>
	<script src="../assets/divisima/js/bootstrap.min.js"></script>
	<script src="../assets/divisima/js/jquery.slicknav.min.js"></script>
	<script src="../assets/divisima/js/owl.carousel.min.js"></script>
	<script src="../assets/divisima/js/jquery.nicescroll.min.js"></script>
	<script src="../assets/divisima/js/jquery.zoom.min.js"></script>
	<script src="../assets/divisima/js/jquery-ui.min.js"></script>
	<script src="../assets/divisima/js/main.js"></script>


<script type="text/javascript">
    $jj =jQuery.noConflict();
    $ju =jQuery.noConflict();
    function getkey(e)
            {
            if (window.event)
               return window.event.keyCode;
            else if (e)
               return e.which;
            else
               return null;
            }
            
        function goodchars(e, goods, field)
            {
                var key, keychar;
                key = getkey(e);
                if (key == null) return true;
                 
                keychar = String.fromCharCode(key);
                keychar = keychar.toLowerCase();
                goods = goods.toLowerCase();
                 
                // check goodkeys
                if (goods.indexOf(keychar) != -1)
                    return true;
                // control keys
                if ( key==null || key==0 || key==8 || key==9 || key==27 )
                   return true;
                    
                if (key == 13) {
                    var i;
                    for (i = 0; i < field.form.elements.length; i++)
                        if (field == field.form.elements[i])
                            break;
                    i = (i + 1) % field.form.elements.length;
                    field.form.elements[i].focus();
                    return false;
                    };
                // else return false
                return false;
            }
</script>


	</body>
</html>
