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
				<li><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>+123 456 7890</li>
				<li><a href="mailto:info@example.com"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>info@example.com</a></li>
			</ul>
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
	 <p style="padding:80px"></p>
	<div class="container">
	
			 <div class="login-right">
										<h3>${error_msg}</h3>
										<form  action="DoctorLoginServlet" method="post">
												<div  class="row row-content">
			 								<div class="col-sm-4">&nbsp;</div>
			 								<div class="col-sm-4">
												<h4>UserName :</h4>
												<input type="text" name="id" value="Type here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Type here';}" required="">	
											</div>
												<div class="col-sm-4">&nbsp;</div>
												</div>
												<div  class="row row-content">
			 								<div class="col-sm-4">&nbsp;</div>
			 								<div class="col-sm-4">
												<h4>Password :</h4>
												<input type="password" name="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="">
			 								</div>
												<div class="col-sm-4">&nbsp;</div>
												</div>
											<div  class="row row-content">
											<div class="col-sm-4">&nbsp;</div>
											<div class="col-sm-4">
												<a href="#">Forgot password?</a>
												</div>
												<div class="col-sm-4">&nbsp;</div>
											</div>
												<div  class="row row-content">
											<div class="col-sm-4">&nbsp;</div>
											<div class="col-sm-4">
												<div class="single-bottom">
												<input type="checkbox"  id="brand" value="">
												<label for="brand"><span></span>Remember Me.</label>
											</div>
												</div>
												<div class="col-sm-4">&nbsp;</div>
											</div>
											<div  class="row row-content">
											<div class="col-sm-4">&nbsp;</div>
											<div class="col-sm-4">
												<% String login_msg=(String)request.getAttribute("error"); 
												if(login_msg!=null)
												out.println("<font color=red size=4px>"+login_msg+"</font>");%><br> 
												</div>
												<div class="col-sm-4">&nbsp;</div>
											</div>
												<div  class="row row-content">
											<div class="col-sm-4">&nbsp;</div>
											<div class="col-sm-4">
												<div class="sign-in">
												<input type="submit" value="SIGNIN" onclick="pa">
											</div>
												</div>
												<div class="col-sm-4">&nbsp;</div>
											</div>
											
										</form>
				
			</div>
	
	</div>
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
			<p class="para"></p>
			<p class="copy-right">© 2016 Infirmary. All rights reserved | </p>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
	</body>
