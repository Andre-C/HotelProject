<%-- 
    Document   : rooms
    Created on : 27-Mar-2015, 8:16:26 PM
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
				<li class="active"><a href="rooms.jsp">rooms & suits</a></li> |
				<li><a href="reservation.jsp">reservation</a></li> |
				<li><a href="activities.jsp">galery</a></li> |
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
		<div class="content">
			<div class="room">
				<h4>Special Family room</h4>
				<p class="para">Totally refurbished and all outward facing, these rooms provide a large bedroom with a double bed or twin beds and the possibility of an extra bed and cot, as well as a modern, fully equipped bathroom decorated in top quality bronze coloured ceramics. The family room has a Dreamax mattress (manufactured and designed exclusively by Flex for Meliá Hotels International) and a home automation system which automatically regulates the temperature of the room based on guest presence or absence from the room.</p>
			</div>
				<div class="grids_of_2">
					<div class="grids_of_img">
						<img src="images/pic4.jpg" alt=""/>
					</div>
					<div class="grids_of_para">
						<p class="para">The Kids & Co Rooms are ideal for families with children due to their size and services. The Kids & Co city programme, where the children come first, includes: check-in for children, puzzle gift, room with children?s pillow cases and towels, children?s bathroom amenities and hot chocolate and biscuits before they go to sleep on the day of your arrival. Totally refurbished and all outward facing, these rooms come with large bedroom with double bed or twin beds and with the possibility of an extra bed or cot, as well as a fully equipped modern bathroom decorated in top quality bronze coloured ceramics.</p>
					</div>
					<div class="clear"></div>					
				</div>
				<div class="grids_of_2">
					<div class="grids_of_img">
						<img src="images/pic5.jpg" alt=""/>
					</div>
					<div class="grids_of_para">
						<p class="para">Rooms measuring 37 m2 with views of Plaza Humber and Beach Luisa and double bed or twin beds with Dreamax mattress, a bedroom with a large window, a comfortable red sofa, independent hallway and dressing room. A glass door connects the bedroom with the bathroom, so you can see the television from the whirlpool bath. It also has a sliding door which can be closed if so desired. It also has a home automation system which automatically regulates the temperature of the room based on guest presence or absence from the room.</p>
					</div>
					<div class="clear"></div>					
				</div>						

		</div>
		<div class="sidebar">
			 <div class="date_btn">
				
                        <form>
				           <input type="button" value="book now"  style="width: 82px;"
                            onclick="location.href='reservation.jsp'"/>
						</form>
				
				
			</div>
			<h4>room features</h4>
			<ul class="s_nav">
				<li><a href="#">Safe and Minibar </a></li>
				<li><a href="#">24 hour room service</a></li>
				<li><a href="#">Laundry and express laundry service</a></li>
				<li><a href="#">32 inch plasma-screen satellite TV with 32 channels (Canal Plus)</a></li>
				<li><a href="#">High speed WiFi internet</a></li>
			</ul>
			<h4>we accept</h4>
			<ul class="s_nav1">
				<li><a class="icon1" href="#"></a></li>
				<li><a class="icon2" href="#"></a></li>
				<li><a class="icon3" href="#"></a></li>
				<li><a class="icon4" href="#"></a></li>
			</ul>
		</div>
		<div class="clear"></div>
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
