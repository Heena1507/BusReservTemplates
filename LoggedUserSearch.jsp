<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
            <%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>TicketToRide With Us...</title>
	
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<meta name="keywords" content="In Travel Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/themes/base/jquery-ui.css" type="text/css" media="all">
	<link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/themes/base/jquery-ui.css" type="text/css" media="all">
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	
	<script type="text/javascript">
	var dateToday = new Date();
	var dates = $("#datepicker, #datepicker1").datepicker({
	    defaultDate: "+1w",
	    changeMonth: true,
	    numberOfMonths: 3,
	    minDate: dateToday,
	    onSelect: function(selectedDate) {
	        var option = this.id == "datepicker" ? "minDate" : "maxDate",
	            instance = $(this).data("datepicker"),
	            date = $.datepicker.parseDate(instance.settings.dateFormat || $.datepicker._defaults.dateFormat, selectedDate, instance.settings);
	        dates.not(this).datepicker("option", option, date);
	    }
	});
	</script>

	<!-- pop up box -->
	<link href="${pageContext.request.contextPath}/resources/css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
	<!-- //pop up box -->


	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery.desoslide.css">

	<!-- css files -->
	<link rel="stylesheet"  href="${pageContext.request.contextPath}/resources/css/bootstrap.css"> <!-- Bootstrap-Core-CSS -->
	<link rel="stylesheet"  href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css" media="all" /> <!-- Style-CSS --> 
	<link rel="stylesheet"  href="${pageContext.request.contextPath}/resources/css/font-awesome.css"> <!-- Font-Awesome-Icons-CSS -->
	<!-- //css files -->

	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery-ui.css" />
	<!-- web-fonts -->
	<link href="//fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext" rel="stylesheet">
	<!-- //web-fonts -->
	
</head>

<body>

<!--Header-->
<header>
	<div class="container agile-banner_nav">
		<div class="row header-top">
			<div class="col-md-5 top-left p-0">
				<p><i class="fa fa-phone" aria-hidden="true"></i> Call us : +02536542651 </p>
			</div>
			<div class="col-md-7 top-right p-0">
				<p><i class="fa fa-map-marker" aria-hidden="true"></i> LTI Travels...
			</div>
		</div>
	
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			
			<h1><a class="navbar-brand" href="index.html">Ticket2Ride..</a></h1>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse justify-content-center" id="navbarSupportedContent">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active">
						<a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span>
						</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="">Bus Tickets</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="about.jsp">About Us</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="contact.jsp">Contact Us</a>
					</li>
					
					<li class="nav-item">
					<% if (session.getAttribute("username") == null) { %>
                   	<li class="nav-item">
                     <a class="nav-link"  href="HomePage">SignIn/Up</a>
                 	</li>
                    
                  
                
                   <% } else {%>
                      
                    
               	<li class="nav-item">
                   <a class="nav-link"  href="Logout">Logout</a>
                      	</li>
                    
                    <% } %>
					
			</ul>
			</div>
		  	
		</nav>
	</div>
		
</header>
<!--Header-->
	

		<!-- banner-text -->
		<div class="slider">
			<div class="callbacks_container">
				<ul class="rslides callbacks callbacks1" id="slider4">
					<li>
						<div class="banner-top">
						<div class="layer">
							
						</div>
						</div>
					</li>
					<li>
						<div class="banner-top1">
						<div class="layer">
							
						</div>
						</div>
					</li>
					<li>
						<div class="banner-top2">
						<div class="layer">
							
						</div>
						</div>
					</li>
					<li>
						<div class="banner-top3">
						<div class="layer">
							
						</div>
						</div>
					</li>
				</ul>
			</div>
			<div class="clearfix"> </div>

			
		<!-- Social Icons -->
		<div class="w3_agileits_social_media">
			<ul>
				<li><a href="#" class="wthree_facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
				<li><a href="#" class="wthree_twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
				<li><a href="#" class="wthree_dribbble"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
				<li><a href="#" class="wthree_behance"><i class="fa fa-behance" aria-hidden="true"></i></a></li>
			</ul>
		</div>
		<!-- //Social Icons -->
		
			<p class="ab">connect with us</p>
			
		<!-- To bottom button-->
		<div class="thim-click-to-bottom">
			<div class="rotate">
				<a href="#booking" class="scroll">
					<i class="fa fa-ellipsis-v"></i>
				</a>
			</div>
		</div>
		<!-- //To bottom button-->
		</div>
		<!--//Slider-->
		
     
<!-- booking form -->
<section class="booking py-5" id="booking">
	<h3 class="text-center mb-4">Search Your Tour</h3>
	<div class="container">
		<div class="book-form">
		   <sf:form method="post" action="SearchBus" >
			<div class="row">
				<div class="col-md-3 col-sm-6 col-6 px-2 form-date-w3-agileits editContent">
					<label class="editContent"><span class="fa fa-map-marker" aria-hidden="true"></span> 
						Source</label>
					<select class="form-control" id="source" name="source">
						<option value="">Source</option>
						<option value="mumbai">Mumbai</option>
						<option value="nashik">Nashik</option>
						<option value="kanpur">Kanpur</option>
						<option value="delhi">Delhi</option>
						<option value="punjab">Punjab</option>
					</select>
			</div>
				<div class="col-md-3 col-sm-6 col-6 px-2 form-date-w3-agileits editContent">
						<label class="editContent"><span class="fa fa-map-marker" aria-hidden="true"></span>
							 Destination</label>
						<select class="form-control" id="destination" name="destination">
							<option value="">Destination</option>
							<option value="bangalore">Bangalore</option>
							<option value="chennai">Chennai</option>
							<option value="goa">Goa</option>
							<option value="hyderabad">Hyderabad</option>
							<option value="nashik">Nashik</option>
						</select>
				</div>
				<div class="col-md-2 col-sm-4 col-6 px-2 form-left-agileits-w3layouts editContent">
						<label class="editContent"><span class="fa fa-bus" aria-hidden="true"></span> Trip in</label>
					<div class="agileits_w3layouts_main_gridl">
						<input class="date has Datepicker" id="datepicker" name="journeyDate" type="text" value="Start Date" required>
					</div>
				</div>
				<div class="col-md-2 col-sm-4 col-6 px-2 form-left-agileits-w3layouts editContent">
						<label class="editContent"><span class="fa fa-bus" aria-hidden="true"></span> Trip out</label>
					<div class="agileits_w3layouts_main_gridl">
						<input class="date has Datepicker" id="datepicker1" name="returnDate" type="text" value="Return Date" required>
					</div>
				</div>
				<div class="col-md-2 px-2 col-sm-4 col-6 form-left-agileits-submit editContent">
					  <input type="submit" value="Search">
				</div>
				</div>
			</sf:form>
		</div>
	</div>
</section>
<!-- //booking form -->

<!-- booking bottom -->	
<section class="bottom py-5">
	<div class="container">
		<div class="row bottom-grids">
			<div class="col-md-6 grid1">
				<h4 class="mb-4">Discount 10-35% off</h4>
				<h3 class="mb-4">Travel the world with us</h3>
				<a href="#">Read More</a>
			</div>
			<div class="col-md-3 video-play">
				<!-- video -->
				<div class="video-grid1 mt-4">
					<div class="demo-bg1">
						<div class="pop-bg position-relative">
							<div class="arrow-container animated fadeInDown">
								<a href="#small-dialog1" class="arrow-2 popup-with-zoom-anim">
									<i class="fa fa-play"></i>
								</a>
								<div class="arrow-1 animated hinge infinite zoomIn"></div>
							</div>
							<h4 class="mt-3">Watch video</h4>
							<!--  video-button-popup -->
							<div id="small-dialog1" class="mfp-hide">
								<div class="agileits_modal_body">
									<iframe src="https://player.vimeo.com/video/162413069"></iframe>
								</div>
							</div>
						
							<!-- // video-button-popup -->
						</div>
					</div>
				</div>

			</div>
			<div class="col-md-3 mt-md-0 mt-4">
			
			<%-- <spring:url value="/resources/images" var="images" />
    <img src="${images}/back.png"/> --%>
			
				<img src="${pageContext.request.contextPath}/resources/off.jpg" alt="" class="img-fluid" />
			</div>
		</div>
	</div>
</section>
<!-- //booking bottom -->	

<!-- welcome -->
<section class="welcome py-5">
	<div class="container py-3">
	<h3 class="heading text-center mb-md-5 mb-4"> About Us </h3>
		<div class="row welcome-grids">
			<div class="col-lg-6">
				<h4 class="mb-3">welcome to the travel world</h4>
				<h3>Remember that happiness is a way of travel, not a destination.</h3>
				<p class="my-4">Aliquam consequat rhoncus ipsum et hendrerit. Proin sed nibhila rin iaculis, aliquet nunc nec, ornare nulla. Duis maximus faucibus ipsum consectetur. Donec elementum hendrerit arcu id rhoncus initis. lot Suspendisse ut elementum nunc. Aenean aliquam porta sem ins tincidunt congue. Phasellus dictum viverra sem id vehicula. Fus cenec elementum sapien.</p>
				<a href="#">Read More</a>
			</div>
			<div class="col-lg-6 mt-lg-0 mt-5 welcome-grid3">
				<div class="position">
					<img src="${pageContext.request.contextPath}/resources/banner1.jpg" alt="" class="img-fluid" />
				</div>
			</div>
		</div>
	</div>
</section>
<!-- //welcome -->

<!-- /services -->
<section class="featured_services py-5">
	<div class="container py-3">
		<h3 class="heading text-center mb-5">Our Services</h3>
		<div class="row agile_inner_info">
			<div class="col-lg-4 col-md-6 w3_agile_services_grid">
				<div class="agile_services_grid">
					<div class="hover06 column">
						<div>
							<figure><img src="${pageContext.request.contextPath}/resources/s1.jpg" alt=" " class="img-responsive"></figure>
						</div>
					</div>
					<div class="agile_services_grid_pos">
						<i class="fa fa-globe" aria-hidden="true"></i>
					</div>
				</div>
				<h4>Tempus eu turpis</h4>
				<p>Lorem ipsum dolor sit amet, do eiusmod tempor incididunt .Aliquam lacus turpis.</p>
			</div>
			<div class="col-lg-4 col-md-6 mt-md-0 mt-5 w3_agile_services_grid">
				<div class="agile_services_grid">
					<div class="hover06 column">
						<div>
							<figure><img src="${pageContext.request.contextPath}/resources/s2.jpg" alt=" " class="img-responsive"></figure>
						</div>
					</div>
					<div class="agile_services_grid_pos">
						<i class="fa fa-suitcase" aria-hidden="true"></i>
					</div>
				</div>
				<h4>Lobortis quis dolor</h4>
				<p>Lorem ipsum dolor sit amet, do eiusmod tempor incididunt .Aliquam lacus turpis.</p>
			</div>
			<div class="col-lg-4 col-md-6 mt-lg-0 mt-5 w3_agile_services_grid">
				<div class="agile_services_grid">
					<div class="hover06 column">
						<div>
							<figure><img src="${pageContext.request.contextPath}/resources/s3.jpg" alt=" " class="img-responsive"></figure>
						</div>
					</div>
					<div class="agile_services_grid_pos">
						<i class="fa fa-bed" aria-hidden="true"></i>
					</div>
				</div>
				<h4>Dignissim rhoncus</h4>
				<p>Lorem ipsum dolor sit amet, do eiusmod tempor incididunt .Aliquam lacus turpis.</p>
			</div>
			<div class="mx-auto mt-lg-4 mt-5 text-center">
				<a href="services.html">Explore all Services</a>
			</div>
		</div>
	</div>
</section>
<!-- //services -->

<!--/middle-->
<section class="middle-sec-agileinfo-w3ls py-5">
	<div class="container py-3">
		<h3 class="heading text-center mb-5"> Latest Tour Blog </h3>
			<div class="row inner-sec">
				<div class="col-lg-4 col-md-6 news-left">
					<ul id="demo1_thumbs" class="list-inline">
						<li>
							<a href="${pageContext.request.contextPath}/resources/banner1.jpg">
								<img src="${pageContext.request.contextPath}/resources/b1.jpg" alt="" data-desoslide-caption="<h3>Latest Post 1</h3>">
								<div class="mid-text-info">
									<h4>Maecenas aliqua Aenean aliquam porta sem ins.</h4>
									<p class="font-italic">posted 2 days ago </p>
								</div>
							</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath}/resources/images/banner2.jpg">
								<img src="${pageContext.request.contextPath}/resources/images/b2.jpg" alt="" data-desoslide-caption="<h3>Latest Post 2</h3>">
								<div class="mid-text-info">
									<h4>Maecenas aliqua Aenean aliquam porta sem ins.</h4>
									<p class="font-italic">posted 2 days ago </p>
								</div>
							</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath}/resources/images/banner5.jpg">
								<img src="${pageContext.request.contextPath}/resources/images/b5.jpg" alt="" data-desoslide-caption="<h3>Latest Post 3</h3>">
								<div class="mid-text-info">
									<h4>Maecenas aliqua Aenean aliquam porta sem ins.</h4>
									<p class="font-italic">posted 2 days ago </p>
								</div>
							</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath}/resources/images/banner4.jpg">
								<img src="${pageContext.request.contextPath}/resources/images/b4.jpg" alt="" data-desoslide-caption="<h3>Latest Post 4</h3>">
								<div class="mid-text-info">
									<h4>Maecenas aliqua Aenean aliquam porta sem ins.</h4>
									<p class="font-italic">posted 2 days ago </p>
								</div>
							</a>
						</li>
					</ul>
				</div>
				<div id="demo1_main_image" class="col-lg-8 col-md-6 news-right">
					<h4 class="text-uppercase mb-4">Happy Travelling </h4>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>

	</section>
	<!--//middle-->

<!-- team -->
	<div class="team py-5">
	   <div class="agile_dot_info two">
		<div class="container">
		<h3 class="heading text-center mb-5">Our Team</h3>
			<div class="row agileits_team_grids">
				<div class="col-lg-3 col-sm-6 agileits_team_grid">
					<div class="agileits_team_grid_figure">
						<img src="${pageContext.request.contextPath}/resources/images/b1.jpg" alt=" " class="img-responsive" />
					</div>
					<div class="agileits_team_grid_figure_social">
						<ul class="w3ls_social">
							<li><a href="#" class="w3_agile_facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
							<li><a href="#" class="w3_agile_dribble"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
						</ul>
					</div>
					<div class="clearfix"> </div>
					<h4> Charlotte <span>guide</span></h4>
					<p>Morbi non elit sed neque init rhoncus maximus ac enim.</p>
				</div>
				<div class="col-lg-3 col-sm-6 agileits_team_grid">
					<div class="agileits_team_grid_figure">
						<img src="${pageContext.request.contextPath}/resources/images/b1.jpg" alt=" " class="img-responsive" />
					</div>
					<div class="agileits_team_grid_figure_social">
						<ul class="w3ls_social">
							<li><a href="#" class="w3_agile_facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
							<li><a href="#" class="w3_agile_dribble"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
						</ul>
					</div>
					<div class="clearfix"> </div>
					<h4>Isabella <span>guide</span></h4>
					<p>Morbi non elit sed neque init rhoncus maximus ac enim.</p>
				</div>
				<div class="col-lg-3 col-sm-6 agileits_team_grid">
					<div class="agileits_team_grid_figure">
						<img src="${pageContext.request.contextPath}/resources/images/b2.jpg" alt=" " class="img-responsive" />
					</div>
					<div class="agileits_team_grid_figure_social">
						<ul class="w3ls_social">
							<li><a href="#" class="w3_agile_facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
							<li><a href="#" class="w3_agile_dribble"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
						</ul>
					</div>
					<div class="clearfix"> </div>
					<h4>Alexander  <span>guide</span></h4>
					<p>Morbi non elit sed neque init rhoncus maximus ac enim.</p>
				</div>
				<div class="col-lg-3 col-sm-6 agileits_team_grid">
					<div class="agileits_team_grid_figure">
						<img src="${pageContext.request.contextPath}/resources/images/b2.jpg" alt=" " class="img-responsive" />
					</div>
					<div class="agileits_team_grid_figure_social">
						<ul class="w3ls_social">
							<li><a href="#" class="w3_agile_facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
							<li><a href="#" class="w3_agile_dribble"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
						</ul>
					</div>
					<div class="clearfix"> </div>
					<h4>Laura Carl <span>guide</span></h4>
					<p>Morbi non elit sed neque init rhoncus maximus ac enim.</p>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- //team -->
	


<!-- copyright -->
<section class="copyright py-4 text-center">
	<div class="container">
		<p>© 2018 Ticket2Ride All Rights Reserved | Design by <a href="#" target="=_blank"> Ticket2Ride </a></p>
	</div>
</section>
<!-- //copyright -->

<!-- js-scripts -->		

	<!-- js -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-2.2.3.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script> <!-- Necessary-JavaScript-File-For-Bootstrap --> 
	<!-- //js -->
	
	<!-- desoslide-JavaScript -->
	<script src="${pageContext.request.contextPath}/resources/js/jquery.desoslide.js"></script>
	<script>
		$('#demo1_thumbs').desoSlide({
			main: {
				container: '#demo1_main_image',
				cssClass: 'img-responsive'
			},
			effect: 'sideFade',
			caption: true
		});
	</script>

	<!-- Calendar -->
		<script src="${pageContext.request.contextPath}/resources/js/jquery-ui.js"></script>
		<script>
			$(function() {
				$( "#datepicker,#datepicker1" ).datepicker();
			});
		</script>
	<!-- //Calendar -->
	
	<!-- banner slider -->
	<script src="${pageContext.request.contextPath}/resources/js/responsiveslides.min.js"></script>
	<script>
		$(function () {
			$("#slider4").responsiveSlides({
				auto: true,
				pager: true,
				nav: true,
				speed: 1000,
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
	<!-- //banner slider -->
	
	<!--pop-up-box -->
	<script src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.js"></script>
	<script>
		$(document).ready(function () {
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
	<!-- //pop-up-box -->

	<!-- start-smoth-scrolling -->
	<script src="${pageContext.request.contextPath}/resources/js/SmoothScroll.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/move-top.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/easing.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
			});
		});
	</script>
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
	<!-- //here ends scrolling icon -->
	<!-- start-smoth-scrolling -->
	
<!-- //js-scripts -->

</body>
</html>