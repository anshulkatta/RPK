<%@page import="com.rpk.CategoryRetreiver"%>
<%@page import="org.springframework.context.annotation.Import"%>
<%@ page language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="com.html.*,com.dao.*,com.rpk.*,java.util.*" %>
<%

String jspcontext=HTMLUtil.jspcontext;
%>
<html>
<head>
<c:set var="context" value="${pageContext.request.contextPath}" />
<title>Ram Pratap Katta & Sons : Gold Gallery</title>
<link href="${context}/resources/css/bootstrap.css" rel='stylesheet' type='text/css' />
<!--jQuery (necessary for Bootstrap's JavaScript plugins)-->
<!-- Custom Theme files -->
<link href="${context}/resources/css/style.css" rel='stylesheet' type='text/css' />
<!--Custom Theme files-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Jewelex Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" 
		/>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
</script>
 <script src="${context}/resources/js/jquery.min.js"></script>
<script src="${context}/resources/js/modernizr.custom.js"></script>
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
		<div class="header-section two" id="home">
				<div class="container">
					 <div class="logo two">
						<a href="${context}/index"><img src="${context}/resources/images/logo.png" alt=""></a>
					</div>
						<span class="menu"></span>
						<div class="clearfix"></div>
						<div class="navigation">
							<ul class="navig">
								<li><a href="${context}/index"><i class="bag"></i><p>About</p><div class="clearfix"></div></a></li>
								<li class="active"><a href="${context}/gallery"><i class="gallery"></i><p class="active">Gallery</p><div class="clearfix"></div></a></li>
								<li class="naa" ><a href="${context}/404"><i class="settings"></i><p>Services</p><div class="clearfix"></div></a></li>
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
	<!--start-information-->
<div class="gallery-section">
	<div class="portfolios entertain_box  wow fadeInUp" data-wow-delay="0.4s" id="project">
		<div class="container">
			<div class="portfolio-top">
			<h3> OUR GALLERY</h3>
						<ul id="filters" class="clearfix">
						
							<!--<li><span class="filter" data-filter="app">Bangales</span></li>
					 	<li><span class="filter" data-filter="photo">Necklace Sets</span></li>
						<li><span class="filter" data-filter="card">Finger Rings</span></li> -->
						
						
						<c:forEach  var="cat" items="${categoryret}">
						<li><span class="filter" data-filter="${cat.categoryId}">${cat}</span></li>
						 <c:set var="myVar" value="${myVar} ${cat.categoryId}" />					
						</c:forEach>
						<li><span class="filter active" data-filter="${myVar}">All</span></li>
					</ul>
					
					<div id="portfoliolist">
					<c:forEach  var="item" items="${itemret}">
					<div class="portfolio ${item.categoryId} mix_all" data-cat="${item.categoryId}" 
					style="display: inline-block; opacity: 1; wow bounceIn" data-wow-delay="0.4s">
								<div class="portfolio-wrapper">
								<c:forEach varStatus = "i" var="image" items="${item.imageFileList}">
								<a
										href="${context}/images/${item.itemId}/${image}"
										class="b-link-stripe b-animate-go   swipebox"
										title="${item.itemName}">
										
										<c:if test = "${i.index eq 0}" >
										<img src ="${context}/images/${item.itemId}/${image}" />
										<div class="b-wrapper">
											<h2 class="b-animate b-from-left    b-delay03 ">
												<img src="${context}/resources/images/add.png" alt="" />
											</h2>
										</div>
										<p>${item.itemName}</p>
										<br/>
										</c:if>
								
								 
								</a>

									</c:forEach>
								</div>
							</div>		
					</c:forEach>	
				<%--<div class="portfolio card mix_all" data-cat="card" style="display: inline-block; opacity: 1; wow bounceIn" data-wow-delay="0.4s">
						<div class="portfolio-wrapper">		
							<a href="${context}/resources/images/11.jpg" class="b-link-stripe b-animate-go   swipebox"  title="Image Title">
						     <img src="${context}/resources/images/g1.jpg" /><div class="b-wrapper"><h2 class="b-animate b-from-left    b-delay03 "><img src="${context}/resources/images/add.png" alt=""/></h2>
						  	 </div></a>
		                </div>
					</div>		
				 	<div class="portfolio photo mix_all" data-cat="photo" style="display: inline-block; opacity: 1; wow bounceIn" data-wow-delay="0.4s">
						<div class="portfolio-wrapper">		
							<a href="${context}/resources/images/g31.jpg" class="b-link-stripe b-animate-go   swipebox"  title="Image Title">
						     <img src="${context}/resources/images/g3.jpg" /><div class="b-wrapper"><h2 class="b-animate b-from-left    b-delay03 "><img src="${context}/resources/images/add.png" alt=""/></h2>
						  	 </div></a>
		                </div>

					</div>				
					<div class="portfolio card mix_all" data-cat="card" style="display: inline-block; opacity: 1; wow bounceIn" data-wow-delay="0.4s">
						<div class="portfolio-wrapper">		
							<a href="${context}/resources/images/g41.png" class="b-link-stripe b-animate-go   swipebox"  title="Image Title">
						     <img src="${context}/resources/images/g4.jpg" /><div class="b-wrapper"><h2 class="b-animate b-from-left    b-delay03 "><img src="${context}/resources/images/add.png" alt=""/></h2>
						  	 </div></a>
		                </div>
					</div>	
					<div class="portfolio photo mix_all" data-cat="photo" style="display: inline-block; opacity: 1;">
						<div class="portfolio-wrapper">		
							<a href="${context}/resources/images/g51.jpg" class="b-link-stripe b-animate-go   swipebox"  title="Image Title">
						     <img src="${context}/resources/images/g5.jpg" /><div class="b-wrapper"><h2 class="b-animate b-from-left    b-delay03 "><img src="${context}/resources/images/add.png" alt=""/></h2>
						  	 </div></a>
		                </div>
					</div>			
					<div class="portfolio 1 mix_all" data-cat="1" style="display: inline-block; opacity: 1; wow bounceIn" data-wow-delay="0.4s">
						<div class="portfolio-wrapper">		
							<a href="${context}/resources/images/g41.jpg" class="b-link-stripe b-animate-go  swipebox"  title="Image Title">
						     <img src="${context}/resources/images/g6.jpg" /><div class="b-wrapper"><h2 class="b-animate b-from-left    b-delay03 "><img src="${context}/resources/images/add.png" alt=""/></h2>
						  	 </div></a>
		                </div>
					</div>	
					<div class="portfolio 1 mix_all" data-cat="1" style="display: inline-block; opacity: 1;">
						<div class="portfolio-wrapper">		
							<a href="${context}/resources/images/g21.jpg" class="b-link-stripe b-animate-go   swipebox"  title="Image Title">
						     <img src="${context}/resources/images/g2.jpg" /><div class="b-wrapper"><h2 class="b-animate b-from-left    b-delay03 "><img src="${context}/resources/images/add.png" alt=""/></h2>
						  	 </div></a>
		                </div>
					</div>				
					<div class="portfolio card mix_all" data-cat="card" style="display: inline-block; opacity: 1; wow bounceIn" data-wow-delay="0.4s">
						<div class="portfolio-wrapper">		
							<a href="${context}/resources/images/g11.jpg" class="b-link-stripe b-animate-go   swipebox"  title="Image Title">
						     <img src="${context}/resources/images/g1.jpg" /><div class="b-wrapper"><h2 class="b-animate b-from-left    b-delay03 "><img src="${context}/resources/images/add.png" alt=""/></h2>
						  	 </div></a>
		                </div>
					</div>		
					<div class="portfolio photo mix_all  gall" data-cat="photo" style="display: inline-block; opacity: 1; wow bounceIn" data-wow-delay="0.4s">
						<div class="portfolio-wrapper gall">		
							<a href="${context}/resources/images/g31.jpg" class="b-link-stripe b-animate-go   swipebox"  title="Image Title">
						     <img src="${context}/resources/images/g3.jpg" /><div class="b-wrapper"><h2 class="b-animate b-from-left    b-delay03 "><img src="${context}/resources/images/add.png" alt=""/></h2>
						  	 </div></a>
		                </div> 

					</div>	 --%>				
		</div>
		</div>
	</div>
</div>
</div>
<link rel="stylesheet" href="${context}/resources/css/swipebox.css">
	<script src="${context}/resources/js/jquery.swipebox.min.js"></script> 
	    <script type="text/javascript">
			jQuery(function($) {
				$(".swipebox").swipebox();
			});
		</script>
	<!-- Portfolio Ends Here -->
	<script type="text/javascript" src="${context}/resources/js/jquery.mixitup.min.js"></script>
<script type="text/javascript">
$(function () {
	
	var filterList = {
	
		init: function () {
		
			// MixItUp plugin
		// http://mixitup.io
		$('#portfoliolist').mixitup({
			targetSelector: '.portfolio',
			filterSelector: '.filter',
			effects: ['fade'],
			easing: 'snap',
			// call the hover effect
			onMixEnd: filterList.hoverEffect()
		});				
	
	},
	
	hoverEffect: function () {
	
		// Simple parallax effect
		$('#portfoliolist .portfolio').hover(
			function () {
				$(this).find('.label').stop().animate({bottom: 0}, 200, 'easeOutQuad');
				$(this).find('img').stop().animate({top: -30}, 500, 'easeOutQuad');				
			},
			function () {
				$(this).find('.label').stop().animate({bottom: -40}, 200, 'easeInQuad');
				$(this).find('img').stop().animate({top: 0}, 300, 'easeOutQuad');								
			}		
		);				
	
	}

};

// Run the show!
	filterList.init();
	
});	
</script>
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
					<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--start-footer-->
		<div class="copy-right-section  wow bounceInRight" data-wow-delay="0.4s">
				<div class="container">
					<div class="col-md-6 copy-right">
						<a href="index.jsp"><img src="${context}/resources/images/logo.png" 
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
					<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

</body>
</html>