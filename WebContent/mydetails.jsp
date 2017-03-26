<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.medical.model.Patient"%>

<!DOCTYPE html>
<html>
<head>
<link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/bootstrap-social.css" rel="stylesheet">
    <title>Medical Appointment</title>
    
  
<title>MedicalAppointment</title>
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
     <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
  <script type="text/javascript" src="js/jquery.autocomplete.min.js"></script>
  <script type="text/javascript" src="js/currency-autocomplete.js"></script>    

<!-- //js -->


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

<!--start-date-piker-->
	<script src="js/jquery-ui.js"></script>
		<script>
			$(function() {
				$( "#datepicker,#datepicker1" ).datepicker();
			});
		</script>
<!--/End-date-piker-->
	<script src="js/responsiveslides.min.js"></script>
			<!--animate-->
<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="js/wow.min.js"></script>
	<script>
		 new WOW().init();
	</script>
<!--//end-animate-->
</head>
<body>
    <div class="header wow zoomIn">
        <div class="container">
            <div class="header_right">
                <div class="login">
                <ul> 
                   <li><a href="#"><span aria-hidden="true"><img src="icon/user.png" width="30px" height="40px">
                    <% Patient pat = (Patient) session.getAttribute("currentSessionPatient");%>
			
             <%= pat.getName()  %></span></a></li>
                    <li><a href="LogoutServlet"><span aria-hidden="true" >Logout</span></a></li>
                
                </ul>
                </div>    
                     
            </div>
        </div>
    </div>
    <div class="header-bottom ">
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
							<h1><a class="link link--nukun" href="patient.jsp"><i></i>Medical<span>Appointment</span></a></h1>
						</div>
					</div>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
					<nav class="menu menu--horatio">
						<ul class="nav navbar-nav menu__list">
							<li class="menu__item"><a href="patient.jsp" class="menu__link">Book</a></li>
							<li class="menu__item"><a href="PatientAppointmentServlet" class="menu__link">My Appointment</a></li> 
							
							<li class="menu__item"><a href="MedicalHistoryServlet" class="menu__link">Medical History</a></li> 
							
							<li class="menu__item menu__item--current"><a href="mydetails.jsp" class="menu__link">My Details</a></li>
							 <li class="menu__item  "><a href="feedback.jsp" class="menu__link">Feedback</a></li> 
						</ul>
					</nav>
				</div>
			</nav>
		</div>
	</div>
   <p style="padding:40px;"></p>
     <div class="Container">
        <div class="row row-content">
            <div class="col-xs-12 col-sm-4 col-sm-offset-5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src=icon/patient.png width="100px" height="100px">
            </div>
         </div>
    </div>
    <p style="padding:20px;"></p>
    <div class="Container">
        <div class="row row-content">
            <div class="col-xs-12  col-sm-4 col-sm-offset-5">
                <h4><strong>&nbsp;&nbsp;&nbsp;&nbsp;Patient Name</strong></h4>
                </div>
            </div>
        </div>
        <p style="padding:00px;"></p>
            <div class="Container">
        <div class="row row-content">
            <div class="col-xs-12 col-sm-8 col-sm-offset-5">Email<img src=icon/email.png width="20px" height="20px">&nbsp;&nbsp;&nbsp;&nbsp;patient1234@email.com
            </div>
         </div>
    </div>
    <p style="padding:5px;"></p>
      <div class="Container">
        <div class="row row-content">
            <div class="col-xs-12 col-sm-8 col-sm-offset-5">Phone<img src=icon/phone.jpg width="15px" height="15px">&nbsp;&nbsp;&nbsp;&nbsp;0141-52525
            </div>
         </div>
    </div>
    <p style="padding:20px;"></p>
          <div class="Container">
        <div class="row row-content">
            
            <div class="col-xs-12 col-sm-4">&nbsp;
            </div>
            <div class="col-xs-12 col-sm-3"><input type="button" class="button btn-info" value="change password" >
            </div>
             <div class="col-xs-12 col-sm-3"><input type="button" class="button btn-info" value="Edit Account" >
            </div>
         </div>
    </div>
        <p style="padding:80px;"></p>
    <div class="contact">
	<div class="container">
		
		<div class="col-md-6 contact-right wow fadeIn animated animated" data-wow-delay="0.1s" data-wow-duration="2s">
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
		<div class="col-md-6 contact-left wow fadeIn animated animated" data-wow-delay="0.1s" data-wow-duration="2s">
			<h2>Information</h2>
			<div class="strip"></div>
			<p class="para">At vero eos et accusamus et iusto odio dignissimos
			ducimus qui blanditiis praesentium voluptatum deleniti at
			que corrupti quos dolores et quas molestias excepturi sint
			occaecati cupiditate non provident, similique sunt.</p>
			<p class="copy-right">Â© 2016 Infirmary. All rights reserved | Design by <a href="http://w3layouts.com/">W3layouts</a></p>
		</div>
        
		<div class="clearfix"></div>
	</div>
</div>            

    </body>
</html>