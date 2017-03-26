
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>MedicalAppointment | Contact :: w3layouts</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Infirmary Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/jquery-ui.css" />
<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="js/numscroller-1.0.js"></script>

<!-- //js -->
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>

<!-- fonts -->
<link href='//fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Viga' rel='stylesheet' type='text/css'>

	<!-- start-smoth-scrolling -->
		<script type="text/javascript" src="js/move-top.js"></script>
		<script type="text/javascript" src="js/easing.js"></script>
		<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
		</script>
	<!-- start-smoth-scrolling -->

	<script src="js/responsiveslides.min.js"></script>
</head>
<body>
<!-- header -->
<div class="header wow zoomIn">
	<div class="container">
		<div class="header_left" data-wow-duration="2s" data-wow-delay="0.5s">
			<ul>
				<li><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>+123 456 7890</li>
				<li><a href="mailto:info@example.com"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>info@example.com</a></li>
			</ul>
		</div>
		<div class="header_right">
			<div class="login">
				<ul>
					<li><a href="#" data-toggle="modal" data-target="#myModal4"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>User Login/Register</a></li>
					<li><a href="#" data-toggle="modal" data-target="#myModal6"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>Doctor Login/Register</a></li>
					<li>
						<div class="search-bar">
							<div class="search">		
								<a class="play-icon popup-with-zoom-anim" href="#small-dialog"><i class="glyphicon glyphicon-search"> </i> </a>
							</div>
							<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
								<div id="small-dialog" class="mfp-hide">
									<div class="search-top">
										<div class="login_pop">
											<form action="#" method="post">
												<input type="submit" value="">
												<input type="text" name="Type something..." value="Type something..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}">
											</form>
										</div>				
									</div>
									<script>
												$(document).ready(function() {
												$('.popup-with-zoom-anim').magnificPopup({
													type: 'inline',
													fixedContentPos: false,
													fixedBgPos: true,
													overflowY: 'auto',
													closeBtnInside: true,
													preloader: false,
													midClick: true,
													removalDelay: 300,
													mainClass: 'my-mfp-zoom-in'
												});
																												
												});
									</script>				
								</div>
						</div>
					</li>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<!-- //header -->
<div class="header-bottom">
		<div class="container">
			<nav class="navbar navbar-default">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
				  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				  </button>
					<div class="logo grid">
						<div class="grid__item color-3">
							<h1><a class="link link--nukun" href="index.jsp"><i></i>Medical<span>Appointment</span></a></h1>
						</div>
					</div>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse nav-wil links" id="bs-example-navbar-collapse-1">
					<nav class="menu menu--horatio">
						<ul class="nav navbar-nav menu__list">
							<li class="menu__item "><a href="index.jsp" class="menu__link">Home</a></li>
							<li class="menu__item"><a href="about.jsp" class="menu__link">About</a></li> 
							
							<li class="menu__item"><a href="gallery.jsp" class="menu__link">Gallery</a></li> 
							<li class="menu__item menu__item--current"><a href="contact.jsp" class="menu__link">Contact</a></li>
						</ul>
					</nav>
				</div>
				<!-- /.navbar-collapse -->
			</nav>
		</div>
	</div>

<!-- banner -->
<div class="banner page_head">

</div>
<!-- //banner -->
<div class="map_contact">
	<div class="container">
		
		<h3 class="tittle">Contact</h3>
		<div class="contact-grids">
			
			<div class="col-md-6 contact-grid ">
				<form action="#" method="post">
					<input type="text" name="Name" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required="">
					<input type="email" name="Email" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required="">
					<textarea name="Message" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message...';}" required="">Message...</textarea>
					<input type="submit" value="Send" >
				</form>
			</div>
			<div class="col-md-6 contact-left-map ">
				<p>RPS Green, # 165/5,
Krishnraju Layout, J P Nagar 4th Phase,
Bangalore - 560076</p>
				<ul class="contact-list">
					<li><span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>756 global Place, New York.</li>
					<li><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span><a href="mailto:example@mail.com">mail@example.com</a></li>
					<li><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>+123 2222 222</li>
				</ul>
			</div>						
			<div class="clearfix"> </div>
		</div>
		<h3 class="tittle">View On map</h3>
		<div class="map">
			<iframe src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d2482.432383990807!2d0.028213999961443994!3d51.52362882484525!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1423469959819" style="border:0"></iframe>
		</div>
	</div>
</div>
<!-- //contact -->
<!-- contact -->
<div class="contact">
	<div class="container">
		
		<div class="col-md-6 contact-right wow fadeInLeft animated animated" data-wow-delay="0.4s">
			<h3>Contact Us</h3>
			<div class="strip"></div>
			<ul class="con-icons">
				<li><span class="glyphicon glyphicon-phone" aria-hidden="true"></span>+123 456 7890</li>
				<li><a href="mailto:info@example.com"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>info@example.com</a></li>
			</ul>
			<ul class="fb_icons">
				<li class="hvr-rectangle-out"><a class="fb" href="#"></a></li>
				<li class="hvr-rectangle-out"><a class="twit" href="#"></a></li>
				<li class="hvr-rectangle-out"><a class="goog" href="#"></a></li>
				<li class="hvr-rectangle-out"><a class="pin" href="#"></a></li>
				<li class="hvr-rectangle-out"><a class="drib" href="#"></a></li>
			</ul>
			<h3>Newsletter Sign up</h3>
			<div class="strip"></div>
			<form action="#" method="post">
				<input type="text" name="Name" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required="">
				<input type="email" name="Email" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required="">
				<input type="submit" value="Submit">
			</form>
		</div>
		<div class="col-md-6 contact-left wow fadeInRight animated animated" data-wow-delay="0.4s">
			<h2>Information</h2>
			
		<div class="clearfix"></div>
	</div>
</div>
<!-- //contact -->
<!-- login -->
			<div class="modal fade" id="myModal4" tabindex="-1" role="dialog" >
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body modal-spa">
							<div class="login-grids">
									
									<div class="login-right">
										<h3>Sign in with your account</h3>
										<form  action="PatientLoginServlet" method="post">
											<div class="sign-in">
												<h4>UserName :</h4>
												<input type="text" name="id" value="Type here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Type here';}" required="">	
											</div>
											<div class="sign-in">
												<h4>Password :</h4>
												<input type="password" name="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="">
												<a href="#">Forgot password?</a>
											</div>
											<div class="single-bottom">
												<input type="checkbox"  id="brand" value="">
												<label for="brand"><span></span>Remember Me.</label>
											</div>
											<% String login_msg=(String)request.getAttribute("error"); 
												if(login_msg!=null)
												out.println("<font color=red size=4px>"+login_msg+"</font>");%><br> 
											<div class="sign-in">
												<input type="submit" value="SIGNIN" onclick="pa">
											</div>
										</form>
                                        <form action="#">
                                            <p style="padding:1px;"></p>
                                            <div class="sign-in">
                                                   <a href="#" data-toggle="modal" data-target="#myModal5"><input type="submit" value="SIGNUP" onclick="pa"></a>
											</div>
                                        </form>
									</div>
                                 
									
								<p>By logging in you agree to our <a href="#">Terms and Conditions</a> and <a href="#">Privacy Policy</a></p>
							</div>
						</div>
					</div>
				</div>
			</div>
<!-- //login -->
<!-- login -->
			<div class="modal fade" id="myModal5" tabindex="-1" role="dialog" >
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body modal-spa">
							<div class="login-grids">
									<div class="login-bottom">
										<h3>Sign up for free</h3>
										<form action="PatSignupServlet" method="post">
											 <div class="sign-up">
												<h4>UserName :</h4>
												<input type="text" name="id" value="UserName" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required="">	
											</div>
                                            <div class="sign-up">
												<h4>Name :</h4>
												<input type="text" name="name" value="Type here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required="">	
											</div>
                                            <div class="sign-up">
												<h4>Gender :</h4>
												<input type="text" name="gender" value="gender" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required="">	
											</div>
                                             <div class="sign-up">
												<h4>Age :</h4>
												<input type="text" name="age" value="age" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'date';}" required=""><br><br>	
											</div>
                                            
											<div class="sign-up">
												<h4>Email  :</h4>
												<input type="text" name="email_id" value="Type here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Type here';}" required="">	
											</div>
											<div class="sign-up">
												<h4>Phone  :</h4>
												<input type="text" name="phone_no" value="Type here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Type here';}" required="">	
											</div>
											<div class="sign-up">
												<h4>Address  :</h4>
												<input type="text" name="address" value="Type here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Type here';}" required="">	
											</div>

											<div class="sign-up">
												<h4>Password :</h4>
												<input type="password" name="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="">
												
											</div>
											<div class="sign-up">
												<h4>Re-type Password :</h4>
												<input type="password" name="confirm_password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="">
												
											</div>
											<%
String signup_msg1=(String)request.getAttribute("error");  
if(signup_msg1!=null)
out.println("<font color=red size=4px>"+signup_msg1+"</font>");
%><br>
											<div class="sign-up">
												<input type="submit" value="REGISTER NOW" >
											</div>
											
										</form>
									</div>
								<p>By logging in you agree to our <a href="#">Terms and Conditions</a> and <a href="#">Privacy Policy</a></p>
							</div>
						</div>
					</div>
				</div>
			</div>
    <div class="modal fade" id="myModal6" tabindex="-1" role="dialog" >
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body modal-spa">
							<div class="login-grids">
									
									<div class="login-right">
										<h3>Sign in with your account</h3>
										<form action="DoctorLoginServlet" method="post">
											<div class="sign-in">
												<h4>UserName :</h4>
												<input type="text" name="id" value="Type here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Type here';}" required="">	
											</div>
											<div class="sign-in">
												<h4>Password :</h4>
												<input type="password" name="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="">
												<a href="#">Forgot password?</a>
											</div>
											<div class="single-bottom">
												<input type="checkbox"  id="brand" value="">
												<label for="brand"><span></span>Remember Me.</label>
											</div>
											<%
											String login_msg1=(String)request.getAttribute("error");  
											if(login_msg1!=null)
											out.println("<font color=red size=4px>"+login_msg1+"</font>");
											%><br> 
											<div class="sign-in">
												<input type="submit" value="SIGNIN" onclick="pa">
											</div>

										</form>
                                        <form action="#">
                                            <p style="padding:1px;"></p>
                                            <div class="sign-in">
                                                   <a href="#" data-toggle="modal" data-target="#myModal7"><input type="submit" value="SIGNUP" onclick="pa"></a>
											</div>
                                        </form>
									</div>
                                 
									
								<p>By logging in you agree to our <a href="#">Terms and Conditions</a> and <a href="#">Privacy Policy</a></p>
							</div>
						</div>
					</div>
				</div>
			</div>
    <div class="modal fade" id="myModal7" tabindex="-1" role="dialog" >
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body modal-spa">
							<div class="login-grids">
									<div class="login-bottom">
										<h3>Sign up for free</h3>
										<form  action="DocSignupServlet" method="post">
										 <div class="sign-up">
												<h4>Username</h4>
												<input type="text" name="id" value="Type here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required="">	
											</div>
                                            <div class="sign-up">
												<h4>Name : Dr. </h4>
												<input type="text" name="name" value="Type here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required="">	
											</div>
                               				<div class="sign-up">
												<h4>Age :</h4>
												<input type="text" name="age" value="Type here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required="">	
											</div>
											<div class="sign-up">
												<h4>Email :</h4>
												<input type="text" name="email_id" value="Type here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Type here';}" required="">	
											</div>
											<div class="sign-up">
												<h4>Phone</h4>
												<input type="text" name="phone_no" value="Type here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required="">	
											</div>
											
                                            <div class="sign-up">
                                                <h4> Specilization :</h4>
                                                <input type="text" name="spec" value="Specilization" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Specilization';}" required="">
                                            
                                            </div>
                                            <div class="sign-up">
												<h4>Experiance :</h4>
												<input type="text" name="exp" value="Year Of Experiance" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Experiance';}" required="">	
											</div>
											<div class="sign-up">
												<h4>Hospital/Clinic Name:</h4>
												<input type="text" name="hosp_name" value="Working Location" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Experiance';}" required="">	
											</div>
                                            <div class="sign-up">
												<h4> Description :</h4>
												<input type="text" name="description" value="Description" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Degree';}" required="">	
											</div>
                                            
                                            <div class="sign-up">
												<h4>Password :</h4>
												<input type="password" name="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="">
												
											</div>
											<div class="sign-up">
												<h4>Re-type Password :</h4>
												<input type="password" name="confirm_password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="">
												
											</div>
											<%
String signup_msg=(String)request.getAttribute("error");  
if(signup_msg!=null)
out.println("<font color=red size=4px>"+signup_msg+"</font>");
%><br>
											<div class="sign-up">
												<input type="submit" value="REGISTER NOW" >
											</div>
											
										</form>
									</div>
								<p>By logging in you agree to our <a href="#">Terms and Conditions</a> and <a href="#">Privacy Policy</a></p>
							</div>
						</div>
					</div>
				</div>
			</div>
<!-- //login -->

</body>
</html>

