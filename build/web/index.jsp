<%-- 
    Document   : index
    Created on : 24-Mar-2015, 6:37:55 PM
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
<!--start slider -->
<link rel="stylesheet" href="css/fwslider.css" media="all">
<script src="js/jquery-ui.min.js"></script>
<script src="js/css3-mediaqueries.js"></script>
<script src="js/fwslider.js"></script>
<!--end slider -->
<!---strat-date-piker---->
<link rel="stylesheet" href="css/jquery-ui.css" />
<script src="js/jquery-ui.js"></script>
		  <script>
				  $(function() {
				    $( "#datepicker,#datepicker1" ).datepicker();
				  });
		  </script>
<!---/End-date-piker---->
<link type="text/css" rel="stylesheet" href="css/JFGrid.css" />
<link type="text/css" rel="stylesheet" href="css/JFFormStyle-1.css" />
		<script type="text/javascript" src="js/JFCore.js"></script>
		<script type="text/javascript" src="js/JFForms.js"></script>
		<!-- Set here the key for your domain in order to hide the watermark on the web server -->
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
				<li class="active"><a href="index.jsp">hotel</a></li> |
				<li><a href="rooms.jsp">rooms & suits</a></li> |
				<li><a href="reservation.jsp">reservation</a></li> |
				<li><a href="activities.jsp">galery</a></li> |
				<li><a href="contact.jsp">contact</a></li>
				<div class="clear"></div>
			</ul>
            
            
            
			 <!-- LOGIN    -->
              
                    
						<div class="row">
							<div class="grid_3 columns">
                            <br>
                            <input type="text" value="" placeholder="Username" tabindex="20" name="username">
 
                            <input type="password" placeholder="Password" tabindex="21" name="password">

                                
                           <input type="submit" name="submit" value="Login" id="submit" />
                                
                                
                               <a href="signup.jsp"> &nbsp;Sign Up!</a>
                               
	                        </div>		
						</div>	
                        
              <!-- LOGIN    -->     
                        
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
<!----start-images-slider---->
		<div class="images-slider">
			<!-- start slider -->
		    <div id="fwslider">
		        <div class="slider_container">
		            <div class="slide"> 
		                <!-- Slide image -->
		                    <img src="images/slider-bg.jpg" alt=""/>
		                <!-- /Slide image -->
		                <!-- Texts container -->
		                <div class="slide_content">
		                    <div class="slide_content_wrap">
		                        <!-- Text title -->
		                        <h4 class="title"><i class="bg"></i>Welcome to Humber College Hotel <span class="hide"></span></h4>
		                        <h5 class="title1"><i class="bg"></i>Navigate on our endless pool <span class="hide" ></span></h5>
		                        <!-- /Text title -->
		                    </div>
		                </div>
		                 <!-- /Texts container -->
		            </div>
		            <!-- /Duplicate to create more slides -->
		            <div class="slide">
		                <img src="images/slider-bg.jpg" alt=""/>
		                <div class="slide_content">
		                     <div class="slide_content_wrap">
		                        <!-- Text title -->
		                        <h4 class="title"><i class="bg"></i>Swim in the sea <span class="hide"> of </span>relax</h4>
		                        <h5 class="title1"><i class="bg"></i>Five starts <span class="hide">of luxury</span> </h5>
		                        <!-- /Text title -->
		                    </div>
		                </div>
		            </div>
		            <!--/slide -->
		        </div>
		        <div class="timers"> </div>
		        <div class="slidePrev"><span> </span></div>
		        <div class="slideNext"><span> </span></div>
		    </div>
		    <!--/slider -->
		</div>
<!--start main -->
<div class="main_bg">
<div class="wrap">
	<div class="online_reservation">
	<div class="b_room">
		<div class="booking_room">
			<h4>book a room online</h4>
			<p>Book a Single room, a Double room, or a Suit</p>
		</div>
		<div class="reservation">
			<ul>
				<li class="span1_of_1">
					<h5>type of room:</h5>
					<!----------start section_room----------->
					<div class="section_room">
						<select id="country" onchange="change_country(this.value)" class="frm-field required">
							<option value="null">Select a type of room</option>
				            <option value="null">Suite room</option>         
				            <option value="AX">Single room</option>
							<option value="AX">Double room</option>
		        		</select>
					</div>	
				</li>
				<li  class="span1_of_1 left">
					<h5>check-in-date:</h5>
					<div class="book_date">
						<form>
							<input class="date" id="datepicker" type="text" value="DD/MM/YY" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'DD/MM/YY';}">
						</form>

					</div>					
				</li>
				<li  class="span1_of_1 left">
					<h5>check-out-date:</h5>
					<div class="book_date">
						<form>
							<input class="date" id="datepicker1" type="text" value="DD/MM/YY" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'DD/MM/YY';}">
						</form>
					</div>		
				</li>
				<li class="span1_of_2 left">
					<h5></h5>
					<!----------start section_room----------->
					<div class="section_room">
						<!------- Number  --->
					</div>					
				</li>
				<li class="span1_of_3">
					<div class="date_btn">
						<form>
				           <input type="button" value="search now" 
                            onclick="location.href='reservation.jsp'"/>
						</form>
					</div>
				</li>
				<div class="clear"></div>
			</ul>
		</div>
		<div class="clear"></div>
		</div>
	</div>
	<!--start grids_of_3 -->
	<div class="grids_of_3">
		<div class="grid1_of_3">
			<div class="grid1_of_3_img">
				<a href="details.jsp">
					<img src="images/pic2.jpg" alt="" />
					<span class="next"> </span>
				</a>
			</div>
			<h4><a href="#">single room<span>120$</span></a></h4>
			<p>Welcoming and comfortable, ideal for those who travel for work. Enjoy the best technological services, including the free high speed Wi-Fi internet connection, DVD player, mini-bar, security safe, in room telephone, courtesy line, and flat screen LCD TV. The single room has a large French style bed. If desired, you can also request the double room for single use. </p>
		</div>
		<div class="grid1_of_3">
			<div class="grid1_of_3_img">
				<a href="details.jsp">
					<img src="images/pic1.jpg" alt="" />
					<span class="next"> </span>
				</a>
			</div>
			<h4><a href="#">double room<span>180$</span></a></h4>
			<p>In a harmonious and relaxing environment, furnished in the classical style, the suites are larger than the other rooms with the option of adding a third bed. A few are furnished with double beds and all have large LCD flat screen satellite TV, DVD player, security safe, courtesy line, telephone in room, mini-bar, and free Wi-Fi internet connection. </p>
		</div>
		<div class="grid1_of_3">
			<div class="grid1_of_3_img">
				<a href="details.jsp">
					<img src="images/pic3.jpg" alt="" />
					<span class="next"> </span>
				</a>
			</div>
			<h4><a href="#">suite room<span>210$</span></a></h4>
			<p>Suite with the exclusive The Level service. These rooms come with hallway, lounge with magnificent glass windows offering views of the hotel pool area and Plaza Humber, guest bathroom, kitchen and terrace, bedroom with terrace, dressing area off the bathroom and fully equipped bathroom with whirlpool bath. It also has a home automation system which automatically regulates the temperature of the room based on guest presence or absence from the room.</p>
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