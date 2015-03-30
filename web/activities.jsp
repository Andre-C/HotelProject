<%-- 
    Document   : activities
    Created on : 27-Mar-2015, 8:30:55 PM
    Author     : Andre
--%>

<html>
<head>
<title>Humber Hotel</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<script src="js/jquery.min.js"></script>
<link type="text/css" rel="stylesheet" href="css/JFGrid.css" />
<link type="text/css" rel="stylesheet" href="css/JFFormStyle-1.css" />
		<script type="text/javascript" src="js/JFCore.js"></script>
		<script type="text/javascript" src="js/JFForms.js"></script>

		<script type="text/javascript">
			(function() {
				JC.init({
					domainKey: ''
				});
				})();
		</script>
<!--nav-->
<script>
		$(function() {
			var pull 		= $('#pull');
				menu 		= $('nav ul');
				menuHeight	= menu.height();

			$(pull).on('click', function(e) {
				e.preventDefault();
				menu.slideToggle();
			});

			$(window).resize(function(){
        		var w = $(window).width();
        		if(w > 320 && menu.is(':hidden')) {
        			menu.removeAttr('style');
        		}
    		});
		});
</script>
</head>
<body>
<!-- start header -->
<div class="header_bg">
<div class="wrap">
	<div class="header">
		<div class="logo">
			<a href="index.jsp"><img src="images/logo.png" alt=""></a>
		</div>
		<div class="h_right">
			<!--start menu -->
			<ul class="menu">
				<li><a href="index.jsp">hotel</a></li> |
				<li><a href="rooms.jsp">rooms & suits</a></li> |
				<li><a href="reservation.jsp">reservation</a></li> |
				<li class="active"><a href="activities.jsp">galery</a></li> |
				<li><a href="contact.jsp">contact</a></li>
				<div class="clear"></div>
			</ul>
			
		</div>
		<div class="clear"></div>
		<div class="top-nav">
		<nav class="clearfix">
				<ul>
				<li class="active"><a href="index.jsp">hotel</a></li> 
				<li><a href="rooms.jsp">rooms & suits</a></li> 
				<li><a href="reservation.jsp">reservation</a></li> 
				<li><a href="activities.jsp">galery</a></li> 
				<li><a href="contact.jsp">contact</a></li>
				</ul>
				<a href="#" id="pull">Menu</a>
			</nav>
		</div>
	</div>
</div>
</div>
<!--start main -->
<div class="main_bg">
<div class="wrap">
	<div class="main">
<!-- start main_content -->
				<ul class="service_list">
					<li>
						<div class="ser_img">
							<a href="details.jsp">
								<img src="images/ser_pic1.jpg" alt="" />
								<span class="next"> </span>
							</a>
						</div>	
						<a href="details.jsp"><h3>Full Bar</h3></a>
						<p class="para">Enjoy our full bar. Every night you can have the best drinks from our special menu.</p>
						<h4><a  href="details.jsp">Full Bar</a></h4>
					</li>
					<li>
						<div class="ser_img">
							<a href="details.jsp">
								<img src="images/ser_pic2.jpg" alt="" />
								<span class="next"> </span>
							</a>
						</div>	
						<a href="details.jsp"><h3>24 Hour Kitchen</h3></a>
						 <p class="para">Our kitchen provides its services 24 hours for you to enjoy our best dishes at any time.</p>
						 <h4><a href="details.jsp">24 Hour Kitchen</a></h4>
					</li>
					<li>
						<div class="ser_img">
							<a href="details.jsp">
								<img src="images/ser_pic3.jpg" alt="" />
								<span class="next"> </span>
							</a>
						</div>						
						 <a href="details.jsp"><h3>Night Show</h3></a>
						 <p class="para">Two days a week our hotel staff performs their unique silver show.</p>
						 <h4><a href="details.jsp">Night Show</a></h4>
					</li>
					<li>
						<div class="ser_img">
							<a href="details.jsp">
								<img src="images/ser_pic4.jpg" alt="" />
								<span class="next"> </span>
							</a>
						</div>						
						<a href="details.jsp"><h3>Playroom</h3></a>
						 <p class="para">Our playroom has a variety of games for adults and children to enjoy.</p>
						 <h4><a href="details.jsp">Playroom</a></h4>
					</li>
					<div class="clear"></div>
				</ul>
				<ul class="service_list top">
					<li>
						<div class="ser_img">
							<a href="details.jsp">
								<img src="images/ser_pic5.jpg" alt="" />
								<span class="next"> </span>
							</a>
						</div>						
						 <a href="details.jsp"><h3>24 hour GYM</h3></a>
						 <p class="para">You can now workout at any time. Join our 24 hour GYM and sweat your vacations away.</p>
						<h4><a  href="details.jsp">24 hour gym</a></h4>
					</li>
					<li>
						<div class="ser_img">
							<a href="details.jsp">
								<img src="images/ser_pic6.jpg" alt="" />
								<span class="next"> </span>
							</a>
						</div>						
						 <a href="details.jsp"><h3>Lunch Buffet</h3></a>
						 <p class="para">Enjoy our dayly lunch buffet. Eat from a great variety of dishes made by our amazing cheff who is better than Gordon Ramsay.</p>
						 <h4><a href="details.jsp">Lunch Buffet</a></h4>
					</li>
					<li>
						<div class="ser_img">
							<a href="details.jsp">
								<img src="images/ser_pic7.jpg" alt="" />
								<span class="next"> </span>
							</a>
						</div>	
						 <a href="details.jsp"><h3>24 hour room service</h3></a>
						<p class="para">Our staff is ready to serve you at any time. Our 24 hour room service is at your disposal.</p>
						<h4><a href="details.jsp">24 hour room service</a></h4>
											
					</li>
					<li>
						<div class="ser_img">
							<a href="details.jsp">
								<img src="images/ser_pic8.jpg" alt="" />
								<span class="next"> </span>
							</a>
						</div>		
						 <a href="details.jsp"><h3>Casino</h3></a>
						 <p class="para">Come down to our casino and throw all your maney away because we'll make sure our house will always win.</p>
						<h4><a  href="details.jsp">Casino</a></h4>
					</li>
					<div class="clear"></div>
				</ul>
		<div class="clear"></div>
	<!-- end main_content -->

	</div>
</div>
</div>		
<!--start main -->
<div class="footer_bg">
<div class="wrap">
<div class="footer">
			<div class="copy">
				<p class="link"><span>© All rights reserved | Developed by&nbsp;<a href="http://humber.ca//"> Humber Hotel</a></span></p>
			</div>
			<div class="f_nav">
				<ul>
					<li><a href="index.jsp">home</a></li>
					<li><a href="rooms.jsp">rooms & suits</a></li>
					<li><a href="reservation.jsp">reservation</a></li>
					<li><a href="contact.jsp">Contact</a></li>
				</ul>
			</div>
			<div class="soc_icons">
				<ul>
					<li><a class="icon1" href="#"></a></li>
					<li><a class="icon2" href="#"></a></li>
					<li><a class="icon3" href="#"></a></li>
					<li><a class="icon4" href="#"></a></li>
					<li><a class="icon5" href="#"></a></li>
					<div class="clear"></div>
				</ul>	
			</div>
			<div class="clear"></div>
</div>
</div>
</div>		
</body>
</html>
