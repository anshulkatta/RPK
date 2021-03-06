<%@ page language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<c:set var="context" value="${pageContext.request.contextPath}" />
<title>Ram Pratap Katta & Sons Saraff</title>
<link rel="shortcut icon" type="image/x-icon" href="${context}/resources/images/RPK.ico"/>

<link href="${context}/resources/css/bootstrap.css" rel='stylesheet' type='text/css' />
<!--jQuery (necessary for Bootstrap's JavaScript plugins)-->
<!-- Custom Theme files -->
<link href="${context}/resources/css/style.css" rel='stylesheet' type='text/css' />
<!--Custom Theme files-->
<sec:csrfMetaTags />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Ram Pratap Katta & Sons Saraff Jewellery Items" 
		/>

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
</script>
 <script src="${context}/resources/js/jquery.min.js"></script>
<script src="js/modernizr.custom.js"></script>
 <!--start-smoth-scrolling-->
<script type="text/javascript" src="${context}/resources/js/move-top.js"></script>
<script type="text/javascript" src="${context}/resources/js/jquery.easing.1.3.js"></script>
		<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
		</script>
<!--start-smoth-scrolling-->
<!--animated-css-->
		<link href="${context}/resources/css/animate.css" rel="stylesheet" type="text/css" media="all">
		<script src="${context}/resources/js/wow.min.js"></script>
		<script>
		 new WOW().init();
		</script>
		<!--animated-css-->
	<!--webfonts-->
		<link href='http://fonts.googleapis.com/css?family=Vidaloka|Roboto+Slab:400,300,700' rel='stylesheet' type='text/css'>
	<!--webfonts-->	
</head>
<body>

<!--header-->
	<!-- banner Slider starts Here -->
					<script src="${context}/resources/js/responsiveslides.min.js"></script>
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
		<!--//End-slider-script -->
					<div  id="top" class="callbacks_container">
						<ul class="rslides" id="slider3">
							<li>
								<div class="banner">
									<!-- logo -->
									 <div class="logo">
										<a href="${context}/index"><img src="${context}/resources/images/logo.png" 
										width="400px" height="400px"></a>
									</div>
									<!-- //logo -->
								</div>
							</li>
							<li>
								<div class="banner two">
									<!-- logo -->
									 <div class="logo">
										<a href="${context}/index"><img src="${context}/resources/images/logo.png" 
										width="400px" height="400px" ></a>
									</div>
									<!-- //logo -->
								</div>
							</li>
							<li>
								<div class="banner three">
									<!-- logo -->
									 <div class="logo">
										<a href="${context}/index"><img src="${context}/resources/images/logo.png" 
										width="400px" height="400px"></a>
									</div>
									<!-- //logo -->
								</div>
							</li>
						</ul>
					</div>
		<!--nav-header-->
		<div class="header-section" id="home wow bounceIn" data-wow-delay="0.4s">
				<div class="container">
						<span class="menu one"></span>
						<div class="clearfix"></div>
						<div class="navigation">
							<ul class="navig">
								<li class="active"><a href="${context}/index"><i class="bag"></i><p class="active">About</p><div class="clearfix"></div></a></li>
								<li class="nab"><a href="${context}/gallery"><i class="gallery"></i><p>Gallery</p><div class="clearfix"></div></a></li>
								<li class="naa" ><a href="${context}/service"><i class="settings"></i><p>Services</p><div class="clearfix"></div></a></li>
								<li class="nac"><a href="${context}/news"><i class="message"></i><p>News</p><div class="clearfix"></div></a></li>
								<li class="nae"><a href="${context}/mail"><i class="send"></i><p>Mail Us</p><div class="clearfix"></div></a></li>
							</ul>
						</div>
					</div>
						<script>
							$( "span.menu" ).click(function() {
							  $( ".navigation" ).slideToggle( "slow", function() {
							    // Animation complete.
							  });
							});
						</script>
						<div class="clearfix"></div>
				</div>
		<!--/welcome-->
		 <div class="Welcome wow bounceIn" data-wow-delay="0.4s">
			<div class="container">	
				<div class="welcome-main">
					<h1>Welcome ! </h1>
						<img src="${context}/resources/images/design.png" alt=""/>
					<h3 style="color: #cc7a00;">Ram Pratap Katta & Sons <br/> is 60 year old Gold Merchant in Alwar 
						as a Brand for buying Gold ,Silver & Diamond Jewellery </h3>
				<p style="color: #ab47bc;font-weight:bold;">We Sell Elegant and Beautiful Jewellery 
					designs crafted with accurate carvings and Pure Gold. 
					We have been the oldest Seller in<br/> Alwar and Moradabad
					with 100,000+ customer in Rajasthan and U.P. <br/>
					We are trusted as our legacy speak of 60 years of Business
					<br/>
					Welcome to our online portfolio of Pure & Eloquent designer Jewellery
					and help us make you Proud & Happy Customer
					<br/>Our Jewellery has the power to make you feel unique</p> 
			</div>	  			
			</div>
		</div>	
	<!--start-collection-->
	 <div class="collection-section wow bounceInLeft" data-wow-delay="0.4s">
		<div class="container">
			 <div class="collection-main">
			 	<div class="col-md-4 collection-text">
			 		<h2>Exquisite Jewellery only for you</h2>
			 		<h4>We make Exclusive custom Jewellery for you 
			 		if you have a design in your mind</h4>
			 		<p>We also sell Rose Gold , Diamonds of
			 		various types and Stones for your religios beliefs </p>
						<a class="read" href="single.jsp">Read More</a>

			 	</div>
			 	<div class="col-md-8 collection-${context}/resources/images/">
			 		<h3>New Jewellery collection</h3>
			 		<div class="col-md-4 collection-${context}/resources/images/-grid">
			 			<img src="${context}/resources/images//c1.jpg" alt=""/>
			 			<h4></h4>
			 			<a class="read one" href="${context}/gallery">More</a>
			 		
			 		</div>
			 		<div class="col-md-4 collection-${context}/resources/images/-grid">
			 			<img src="${context}/resources/images//c2.jpg" alt=""/>
			 			<h4></h4>
			 			<a class="read one" href="${context}/gallery">More</a>
			 		</div>
			 		<div class="col-md-4 collection-${context}/resources/images/-grid third">
			 			<img src="${context}/resources/images//c3.jpg" alt=""/>
			 			<h4></h4>
			 			<a class="read one" href="${context}/gallery">More</a>
			 		</div>
			 	</div>
			 	 <div class="clearfix"></div>
			 </div>
			
		</div>
	</div>	
	<!--start-Advantages-->
	 <div class="advantages-section wow bounceInRight" data-wow-delay="0.4s">
		<div class="container">
			 <div class="adv-main">
			 	<div class="col-md-8 adv-${context}/resources/images/">
			 		<h3>Our Showcase</h3>
			 		<div class="col-md-4 adv-${context}/resources/images/-grid">
			 			<img src="${context}/resources/images//adv.jpg" alt=""/>
			 				<p>Here is a collection
			 				of alluring <span style="color: #cc7a00;">Nose Rings and Baalis</span></p>
			 			<a class="read two" href="${context}/gallery">Read More</a>
			 		
			 		</div>
			 		<div class="col-md-4 adv-${context}/resources/images/-grid">
			 			<img src="${context}/resources/images//adv2.jpg" alt=""/>
			 				<p>Explore Illusive <span style="color: #cc7a00;">
			 				 Gold-Diamond Chains & Pendants</span></p>
			 			<a class="read two" href="${context}/gallery">Read More</a>
			 		</div>
			 		<div class="col-md-4 adv-${context}/resources/images/-grid third">
			 			<img src="${context}/resources/images//adv3.jpg" alt=""/>
			 			<p>Tantalising 
			 			<span style="color: #cc7a00;">Bracelets and Bangles</span>
			 			</p>
			 			<a class="read two" href="${context}/gallery">Read More</a>
			 		</div>
			 	</div>
			 	<div class="col-md-4 Adv-text-populor">
			 		<h3>Popular</h3>
			 		<div class="list styled arrow-list2">
						<ul>
							<li><a href="${context}/gallery"><img
									src="${context}/resources/images//ar.png" alt="" />
									Mangal Sutra</a></li>
							<li><a href="${context}/gallery"><img
									src="${context}/resources/images//ar.png" alt="" />
									Maang Tika</a></li>
							<li><a href="${context}/gallery"><img
									src="${context}/resources/images//ar.png" alt="" />
									Payal</a></li>
							<li><a href="${context}/gallery"><img
									src="${context}/resources/images//ar.png" alt="" />
									Ladies and Gents Ring</a></li>
							<div class="clearfix"></div>
						</ul>
					</div>
				</div>
			 	 <div class="clearfix"></div>
			 </div>
			
		</div>
	</div>
	<!--start-information-->
	<div class="information-section">
		<div class="container">
			<div class="information-grids wow bounceInLeft" data-wow-delay="0.4s" style="align-center">
				<div class="col-md-4 info-grid loction">
					<h3>Location</h3>
					 <ul class="loction-text">
							<li>148 ,Road No.2 , Jai complex</li>
							<li>Alwar , Rajasthan</li>	
							<li>9829050157</li>
							<li><a href="mailto:anshul.katta@gmail.com">
							 	<img src="${context}/resources/images//mail.png" alt="" />	
							</a></li>
							<li><a href="https://goo.gl/maps/mqzvWqav1492" target="_blank">Click for Map Location</a></li>
						</ul>

				</div>
				
				<div class="col-md-4 info-grid loction">
					<h3>Feedback</h3>
					<form:form action="${context}/insertFeedback?${_csrf.parameterName}=${_csrf.token}" 
					method="post" >
					Your Name :<br/> <input type="text" 
					id="feedbackName" name="name" placeholder="Name"/><br/><br/>
					Your Email Id : <br/> <input 
					id="feedbackEmail" type="email" name="email" placeholder="abc@example.com"/><br/><br/>
					Feedback : <br/><textarea 
					id="feedbackText" style="resize: none; margin: 32.2px 0px 0px; height: 100px; width: 300px;"
					></textarea>
					
					<input type="submit" value="Submit"/>
					</form:form>

				</div>
				
				
					<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--start-footer-->
		<div class="copy-right-section  wow bounceInRight" data-wow-delay="0.4s">
				<div class="container">
					<div class="col-md-6 copy-right">
						<a href="${context}/index"><img src="${context}/resources/images/logo.png" 
										width="300px" height="300px" alt=""></a>
						<p>Design by &nbsp;<a href="https://anshulkatta.in" target="_blank">
						Anshul Katta</a></p>
					</div>
					<div class="col-md-6 social-icons">
								<ul class="soc_icons2">
									<h5>Follow us :</h5>
											<li><a href="#"><i class="icon_4"></i></a></li>
											<li><a href="https://plus.google.com/117311576201742789004"><i class="icon_6"></i></a></li>
											<div class="clearfix"> </div>
										</ul>
							<div class="clearfix"> </div>
					</div>
				</div>
		</div>
		<!--End-footer-->
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
					<a href="#top" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

</body>
</html>