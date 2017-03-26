
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
    <style>
      #b{
        
            border:1px solid;
            background: blue;
            color: aliceblue;
        }
        </style>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
    function Ser(val)
    {
        var doctor = ["gynacologist", "dentist", "eye", "ear-nose-Throat", "homeopathey", "ayurvedic","dr. ramesh kumar","dr. monika nagar","dr bathra "]
        var link   = ["gynacologist", "dentist.html", "eye", "ear-nose-Throat", "homeopathey", "ayurvedic","dr. ramesh kumar","dr. monika nagar","dr bathra "]
        
        console.log(val);
        var doctorDisplay = new Array(9);
        var doctorLink = new Array(9);
        var j=0;

       //var HTML = "<table  class=\"table table-hover\">";
       HTML = "<div class=\"list-group\" >"
        for (var i = 0; i < 9; i++)
        {
            var status = doctor[i].includes(val);
            if (status)
                {
                    doctorDisplay[j]= doctor[i];
                    doctorLink[j]=link[i];

                    console.log("this is array" + doctorDisplay[i]);
                   /* HTML +="<a href='"+doctorLink[j]+"'";
                    HTML +="<tr>"+doctorDisplay[j]+"</tr>";
                    HTML += "</a></br>";*/
                    HTML +="<a href='"+doctorLink[j]+"' class=\"list-group-item\">"+doctorDisplay[j]+"</a>";
                    j++;
                }
        }
        HTML += "</div>";
        if(val.length== 0)
        {
            document.getElementById("outputDiv").innerHTML = "";

        }
        else
        {
            document.getElementById("outputDiv").innerHTML = HTML;
        }
    }
    </script>
    <script>
   function city()
    {
        //var city = ["Jaipur", "Ahemdabad", "Gurgaon", "Bhopal", "Udaipur", "Chennai","Banglore","Jamshedpur","Patna","Surat","Srinagar","Chandigarh","Panji","Kanpur","Lucknow"]
        $( "#tags" ).autocomplete({
        source: function(request, response) {
	           $.ajax({
	                url : "SearchController",
	                type : "GET",
	                data : {
	                       term : request.term,
	                       kind : "city"
	                },
	                dataType : "json",
	                success : function(data) {
	                      response(data);
	                }
	         });
	      }
        });
       // var doctor = ["gynacologist", "dentist", "eye", "ear-nose-Throat", "homeopathey", "ayurvedic","dr. ramesh kumar","dr. monika nagar","dr bathra "]
                    $("#doc").autocomplete({
                    source: function(request, response) {
         	           $.ajax({
       	                url : "SearchController",
       	                type : "GET",
       	                data : {
       	                       term : request.term,
       	                       kind : "spec"
       	                },
       	                dataType : "json",
       	                success : function(data) {
       	                      response(data);
       	                }
       	         });
       	      }
                    });
            
    }
    </script>
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
<!-- header -->
<div class="header wow zoomIn">
	<div class="container">
		<div class="header_left" data-wow-duration="2s" data-wow-delay="0.5s">
			<ul>
				<li><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>+9461899909</li>
				<li><a href="mailto:shubhamvyas525@gmail.com"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>shubhamvyas525@gmail.com</a></li>
			</ul>
		</div>
		<div class="header_right">
			<div class="login">
				<ul>
					<li><a href="#" data-toggle="modal" data-target="#myModal4"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>User Login/Register</a></li>
					<li><a href="#" data-toggle="modal" data-target="#myModal6"><span ><img src="images/doct1.png" hieght="15px" width="15px"></span>Doctor LogIn/Register</a></li>
					
						<!--<div class="search-bar">
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
					</li>-->
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<!-- //header -->
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
							<h1><a class="link link--nukun" href="index.jsp"><i></i>Medical<span>Appointment</span></a></h1>
						</div>
					</div>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
					<nav class="menu menu--horatio">
						<ul class="nav navbar-nav menu__list">
							<li class="menu__item menu__item--current"><a href="index.jsp" class="menu__link">Home</a></li>
							<li class="menu__item"><a href="about.jsp" class="menu__link">About</a></li> 
							<li class="menu__item"><a href="gallery.jsp" class="menu__link">Gallery</a></li> 
							<li class="menu__item"><a href="contact.jsp" class="menu__link">Contact</a></li>
						</ul>
					</nav>
				</div>
			</nav>
		</div>
	</div>

<!-- banner -->
<div class="banner">

				<script>
						// You can also use "$(window).load(function() {"
						$(function () {
						 // Slideshow 4
						$("#slider3").responsiveSlides({
							auto: true,
							pager: true,
							nav: false,
							speed: 500,
							namespace: "callbacks",
							before: function () {
						$('.events').append("<li>before event fired.</li>");
						},
						after: function () {
							$('.events').append("<li>after event fired.</li>");
							}
							});
						});
				</script>
		<div  id="top" class="callbacks_container">
			<ul class="rslides" id="slider3">
				<li>
					<div class="banner1">
						<div class="container">
							<div class="banner-info">
								<h3>Providing<span> Appropriate Health Care </span> For Adult, Seniors and children</h3>
								<p>'Appropriate care' is healthcare in line with best practice based on the latest medical evidence. MedicalAppointment CareTrack projects are helping deliver better quality care to more patients.</p>
								<a href="#book" class="hvr-outline-out button2 scroll">Book an appointment</a>
							</div>
						</div>
					</div>
				</li> 
				<li>
					<div class="banner2">
						<div class="container">
							<div class="banner-info2 text-center">
								<h3>Providing Eye Care <span>Treatments & Surgeries For All Problems</span></h3>
								<p>NA comprehensive dilated eye exam is a painless procedure in which an eye care professional examines your eyes to look for common vision problems and eye diseases, many of which have no early warning signs. Regular comprehensive eye exams can help you protect your sight and make sure that you are seeing your best.</p>
								<a href="#book" class="hvr-outline-out button2 scroll">Book an appointment</a>
							</div>
						</div>
					</div>
				</li>
				<li>
					<div class="banner1">
						<div class="container">
							<div class="banner-info">
								<h3>Providing<span> Appropriate Health Care </span> For Adult, Seniors and children</h3>
								<p>'Appropriate care' is healthcare in line with best practice based on the latest medical evidence. MedicalAppointment CareTrack projects are helping deliver better quality care to more patients.</p>
								<a href="#book" class="hvr-outline-out button2 scroll">Book an appointment</a>
							</div>
						</div>
					</div>
				</li> 
				<li>
					<div class="banner2">
						<div class="container">
							<div class="banner-info2 text-center">
								<h3>Providing Eye Care <span>Treatments & Surgeries For All Problems</span></h3>
								<p>NA comprehensive dilated eye exam is a painless procedure in which an eye care professional examines your eyes to look for common vision problems and eye diseases, many of which have no early warning signs. Regular comprehensive eye exams can help you protect your sight and make sure that you are seeing your best.</p>
								<a href="#book" class="hvr-outline-out button2 scroll">Book an appointment</a>
							</div>
						</div>
					</div>
				</li>
			</ul>
		</div>
		<div class="clearfix"></div>
</div>
<!-- //banner -->
<!-- content -->
<div class="content">
	<div class="container">
		<div class="col-md-4 content_right wow flipInY" data-wow-duration="1.5s" data-wow-delay="0.1s">
			<img class="img-responsive" src="images/pic1.jpg" alt=" " />
		</div>
		<div class="col-md-4 content_left wow flipInY" data-wow-duration="1.5s" data-wow-delay="0.2s">
			<div class="welcome">
				<h3>Welcome To MedicalAppointment</h3>
				<ul>
                    <li><a href="#"><h4>3 Steps to book Doctor Appointment</h4></a></li>
					<li><a href="#">Search for Doctor</a></li>
					<li><a href="#">Select the doctor</a></li>
					<li><a href="#">Book An Appointment</a></li>
				</ul>
			</div>
		</div>
		<div id="book" class="col-md-4 content_middle wow flipInY" data-wow-duration="1.5s" data-wow-delay="0.3s">
			
		</div>
		<div class="clearfix"></div>
	</div>
</div>
    <p style="padding:40px"></p>
    <div class="container">
        <div class="col-sm-5 col-sm-offset-5">
            <h3>Book An Appointment</h3>
    </div>
    </div> <form action="DoctorSeachServlet1" method="post">  
         <p style="padding:40px"></p>
			     <div class="container">
                <div class="row row-conent" >
               
                
                <div class="col-xs-12 col-sm-3">
                   
                    <input type="text" id="tags"   placeholder="City" name="location" class="bigbox uisearch" onkeyup="city()">
                    
                </div>
                  
         
                <div class="col-xs-12 col-sm-6 col-offset-1" >
                <input type="text" id="doc" name="spec" placeholder="Specilization,Doctor,Hospital,Clinic" class="bigbox uisearch" onkeyup="city()">
                </div>
                <div class="col-xs-12 col-sm-3">
                <input type="submit"  id="b"  value="Search" class="box"  >
                </div>
                    
                     <div class="col-sm-6" style="margin-left:405px; margin-top:0px" id="outputDiv">

                    </div>
                
                </div>
                     <p style="padding:80px;"></p>
                </div>
                </form>
                

<!-- //content -->
<!-- services -->
<div class="services">
	<div class="container">
		<div class="col-md-4 services_left wow bounceInDown" data-wow-duration="1.5s" data-wow-delay="0s">
			<h3>Our Best Services</h3>
			<p class="ser-para" >MedicalAppointment is a patient focused, unbiased, independent medical website with over 100,000 doctor profiles from across India and Singapore. Patients can book confirmed appointments with doctors listed on Practo’s website. This is a free service for both the patient and the doctor. We had booked over 28,000 appointments for the month of June 2014. </p>
			<a href="about.html" class="hvr-outline-out button2">See More About Us</a>
				<script>
						// You can also use "$(window).load(function() {"
						$(function () {
						 // Slideshow 4
						$("#slider4").responsiveSlides({
							auto: true,
							pager: true,
							nav: false,
							speed: 500,
							namespace: "callbacks",
							before: function () {
						$('.events').append("<li>before event fired.</li>");
						},
						after: function () {
							$('.events').append("<li>after event fired.</li>");
							}
							});
						});
				</script>
			<div  class="callbacks_container">
				<ul class="rslides" id="slider4">
					<li>
						<div class="ser-bottom">
							<h5>For any Kind of user children, Senior Citizen and Adults </h5>
							<p>- Alia Smith</p>
						</div>
					</li>
					<li>
						<div class="ser-bottom">
							<h5>VWe do not suggest, endorse or comment on any medical procedures, conditions or treatments of any kind.</h5>
							<p>- Thompson</p>
						</div>
					</li>
					<li>
						<div class="ser-bottom">
							<h5>Patients are to use their own judgment / volition to assess, choose and connect to Doctors/Clinics /hospitals listed on Practo.com. </h5>
							<p>- Federic</p>
						</div>
					</li>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="col-md-8 services_right ">
			<div class="list-left text-center wow bounceInDown" data-wow-duration="1.5s" data-wow-delay="0.1s">
				<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
				<h4>Quote</h4>
				<p>It is not the healthy who need a doctor, but the sick.</p>
			</div>
			<div class="list-left text-center wow bounceInDown" data-wow-duration="1.5s" data-wow-delay="0.2s">
				<span class="glyphicon glyphicon-scissors" aria-hidden="true"></span>
				<h4>Operation</h4>
				<p>Alcohol is the anesthesia by which we endure the operation of life. </p>
			</div>
			<div class="list-left text-center no_marg wow bounceInDown" data-wow-duration="1.5s" data-wow-delay="0.3s">
				<span class="glyphicon glyphicon-apple" aria-hidden="true"></span>
				<h4>Health Tip</h4>
				<p>A fit, healthy body-- that is the best fashion statement</p>
			</div>
			<div class="list-left text-center no_marg wow bounceInDown" data-wow-duration="1.5s" data-wow-delay="0.4s">
				<span class="glyphicon glyphicon-education" aria-hidden="true"></span>
				<h4>Scholar</h4>
				<p>Let food be thy medicine and medicine be thy food</p>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<!-- //services -->
<!-- team -->
<div class="ind-team">
	<div class="container">
		<h3>Meet Our Team</h3>
		<div class="col-md-2 ind-gds text-center wow zoomIn" data-wow-duration="1.5s" data-wow-delay="0.1s">
			<div class="team-img">
				<img class="img-responsive" src="images/vyas.jpg" alt=" "/>
				
			</div>
			<h4>Shubham Vyas</h4>
			<p>Product Owner</p>
		</div>
			<div class="col-md-2 ind-gds text-center wow zoomIn" data-wow-duration="1.5s" data-wow-delay="0.1s">
			<div class="team-img">
				<img class="img-responsive" src="images/tariq.jpg" alt=" "/>
				
			</div>
			<h4>Mohd Tariq.</h4>
			<p>Database Management</p>
		</div>
			
		
			<div class="col-md-2 ind-gds text-center wow zoomIn" data-wow-duration="1.5s" data-wow-delay="0.1s">
			<div class="team-img">
				<img class="img-responsive" src="images/rohan.jpg" alt=" "/>
				
			</div>
			<h4>Rohan Kulshreshtha</h4>
			<p>Back-end Developer</p>
		</div>
			<div class="col-md-2 ind-gds text-center wow zoomIn" data-wow-duration="1.5s" data-wow-delay="0.1s">
			<div class="team-img">
				<img class="img-responsive" src="images/manish.jpg" alt=" "/>
				
			</div>
			<h4>Manish Jain</h4>
			<p>Front-end Developer</p>
		</div>
			<div class="col-md-2 ind-gds text-center wow zoomIn" data-wow-duration="1.5s" data-wow-delay="0.1s">
			<div class="team-img">
				<img class="img-responsive" src="images/rahul.jpg" alt=" "/>
				
			</div>
			<h4>Rahul Vyas</h4>
			<p>Software Tester and Back-end Developer</p>
		</div>
		<div class="col-md-2 ind-gds text-center wow zoomIn" data-wow-duration="1.5s" data-wow-delay="0.1s">
			<div class="team-img">
				<img class="img-responsive" src="images/vedant.jpg" alt=" "/>
				
			</div>
			<h4>Vedant Yadav</h4>
			<p>Deployer</p>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<!-- team -->
<!-- capabilities -->
<div class="capacity">
	<div class="container">
		<h3>Capabilities</h3>
		<div class="col-md-3 capabil_grid1 wow fadeInDownBig animated animated text-center" data-wow-delay="0.4s">
			<div class="capil_text">
				<div class='numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='5700' data-delay='.5' data-increment="100">5700</div>
				<p>Happy Patients</p>	
			</div>
		</div>
		<div class="col-md-3 capabil_grid2 wow fadeInUpBig animated animated text-center" data-wow-delay="0.4s">
			<div class="capil_text">
				<div class='numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='1700' data-delay='.5' data-increment="5">1700</div>
				<p>Our Staff</p>	
			</div>
		</div>
		<div class="col-md-3 capabil_grid3 wow fadeInDownBig animated animated text-center" data-wow-delay="0.4s">
			<div class="capil_text">
				<div class='numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='0021' data-delay='.5' data-increment="100">0021</div>				
				<p>Foundation</p>
			</div>
		</div>
		<div class="col-md-3 capabil_grid4 wow fadeInUpBig animated animated text-center" data-wow-delay="0.4s">
			<div class="capil_text">
				<div class='numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='2500' data-delay='.5' data-increment="1">2500</div>
				<p>Clients</p>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<!-- //capabilities -->
<!-- contact -->
<div class="contact">
	<div class="container">
		
		<div class="col-md-6 contact-right wow fadeIn animated animated" data-wow-delay="0.1s" data-wow-duration="2s">
			<h3>Contact Us</h3>
			<div class="strip"></div>
			<ul class="con-icons">
				<li><span class="glyphicon glyphicon-phone" aria-hidden="true"></span>9461899909</li>
				<li><a href="mailto:shubhamvyas525@gmail.com"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>shubhamvyas525@gmail.com</a></li>
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
			<p class="para"></p>
			<p class="copy-right">© 2016 Infirmary. All rights reserved | </p>
		</div>
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
												<input type="radio" name="gender" value="male" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required="">	Male &nbsp;
												<input type="radio" name="gender" value="female" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required="">	Female &nbsp;
											</div><br><br>
                                             <div class="sign-up">
                             
												<h4>Age :</h4>
												<input type="number" min="15" max="150" name="age" value="age" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'date';}" required=""><br><br>	
											</div>
                                            
											<div class="sign-up">
												<h4>Email  :</h4>
												<input type="email" name="email_id" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required=""><br><br>
											</div>
											 
											<div class="sign-up">
												<h4>Phone  :</h4>
												<input type="text" name="phone_no"  value="Type here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Type here';}" required="">	
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
												<input type="number" min="25" max="150" name="age" value="Type here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required="">	<br><br>
											</div>
											<div class="sign-up"> 
									
												<h4>Email :</h4>
												<input type="email" name="email_id" value="Type here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Type here';}" required="">	<br/><br/>
											
											</div>
											<div class="sign-up">
												<h4>Phone</h4>
												<input type="text"  name="phone_no" value="Type here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required="">	<br/>
											</div>
											
											 <div class="sign-up">
												<h4>Location</h4>
												<input type="text" name="location" value="Type here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required="">	
											</div>
											
                                            <div class="sign-up">
                                                <h4> Specilization :</h4>
                                                <input type="text" name="spec" value="Specilization" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Specilization';}" required="">
                                            
                                            </div>
                                            <div class="sign-up">
												<h4>Experiance :</h4>
												<input type="number" name="exp" value="Year Of Experiance" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Experiance';}" required="">	
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
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
</body>
</html>

