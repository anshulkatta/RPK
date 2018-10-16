<%@ page language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<c:set var="context" value="${pageContext.request.contextPath}" />
<title>Ram Pratap Katta & Sons Saraff</title>
<link href="${context}/resources/css/bootstrap.css" rel='stylesheet'
	type='text/css' />

<link href="${context}/resources/css/style.css" rel='stylesheet'
	type='text/css' />
<!--Custom Theme files-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="RPK,Ram Pratap Katta and Sons,
jewellery,gold,silver,diamond" />

<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>

<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="js/modernizr.custom.js"></script>
<!--start-smoth-scrolling-->
<script type="text/javascript" src="${context}/resources/js/move-top.js"></script>
<script type="text/javascript" src="${context}/resources/js/jquery.easing.1.3.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
<!--start-smoth-scrolling-->
<!--animated-css-->
<link href="${context}/resources/css/animate.css" rel="stylesheet" type="text/css"
	media="all">
<script src="${context}/resources/js/wow.min.js"></script>
<script>
	new WOW().init();
</script>
<!--animated-css-->
<!--webfonts-->
<link
	href='http://fonts.googleapis.com/css?family=Vidaloka|Roboto+Slab:400,300,700'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Alex+Brush|Qwigley'
	rel='stylesheet' type='text/css'>
<!--webfonts-->
</head>
<body>
	<div class="header-section two" id="home">
		<div class="container">
			<div class="logo two">
				<a href="${context}/index"><img src="${context}/resources/images/RPK.png" alt=""></a>
			</div>
			<span class="menu"></span>
			<div class="clearfix"></div>
			<div class="navigation">
				<ul class="navig">
					<li><a href="${context}/index"><i class="bag"></i>
						<p>About</p>
							<div class="clearfix"></div></a></li>
					<li class="nab"><a href="${context}/resources/gallery"><i class="gallery"></i>
						<p>Gallery</p>
							<div class="clearfix"></div></a></li>
					<li class="active"><a href="${context}/resources/service.jsp"><i class="settings"></i>
						<p class="active">Services</p>
							<div class="clearfix"></div></a></li>
					<li class="nac"><a href="news.html"><i class="message"></i>
						<p>News</p>
							<div class="clearfix"></div></a></li>
					<li class="nae"><a href="mail.html"><i class="send"></i>
						<p>Mail Us</p>
							<div class="clearfix"></div></a></li>
				</ul>
			</div>
		</div>
		<script>
			$("span.menu").click(function() {
				$(".navigation").slideToggle("slow", function() {
					// Animation complete.
				});
			});
		</script>
		<div class="clearfix"></div>
	</div>
	<div class="page-not-found">
		<div class="container">
			<div class="error wow bounceIn" data-wow-delay="0.4s">
				<h3>
					4<span>0</span>4
				</h3>
				<h4>Error</h4>
				<p>Sorry Page Not Found !</p>
			</div>

			<a class="back" href="${context}/index">Back To Home</a>

		</div>
	</div>
	<!--start-information-->
	<div class="information-section">
		<div class="container">
			<div class="information-grids wow bounceInLeft" data-wow-delay="0.4s">
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
		</div>
	</div>
	<!--start-footer-->
	<div class="copy-right-section  wow bounceInRight"
		data-wow-delay="0.4s">
		<div class="container">
			<div class="col-md-6 copy-right">
				<a href="${context}/index"><img src="${context}/resources/images/RPK.png" alt=""
				width="300px" height="300px"></a>
				<p>
					Design by &nbsp;<a href="https://anshulkatta.in">Anshul Katta</a>
				</p>
			</div>
			<div class="col-md-6 social-icons">
				<ul class="soc_icons2">
					<h5>Follow us :</h5>
					<li><a href="#"><i class="icon_4"></i></a></li>
					<li><a href="#"><i class="icon_5"></i></a></li>
					<li><a href="#"><i class="icon_6"></i></a></li>
					<div class="clearfix"></div>
				</ul>
				<div class="clearfix"></div>
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

			$().UItoTop({
				easingType : 'easeOutQuart'
			});

		});
	</script>
	<a href="#home" id="toTop" class="scroll" style="display: block;">
		<span id="toTopHover" style="opacity: 1;"> </span>
	</a>

</body>