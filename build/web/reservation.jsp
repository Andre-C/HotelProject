<%-- 
    Document   : reservation
    Created on : 27-Mar-2015, 8:44:24 PM
    Author     : Andre
--%>
<%@page import="Accounts.*"%>
<%!
    DataBase db = new DataBase();
    Rooms rooms;
    User user;
%>
<html>
<head>
<title>Humber Hotel</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<script src="js/jquery.min.js"></script>
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
				<li class="active"><a href="reservation.jsp">reservation</a></li> |
				<li><a href="activities.jsp">galery</a></li> |
				<li><a href="contact.jsp">contact</a></li>
				<div class="clear"></div>
			</ul>
			<!-- 
				
                    -->
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
		<div class="res_online">
			<h4>find a room</h4>
			<p class="para">Search our big database to find the best room for you. With far more space than an ordinary hotel room, our condominium-sized suites provide you with plenty of room to stretch out and relax. Available with one or two bedrooms, each suite includes a fully equipped kitchen and dining area, ensuite laundry facilities, windows that open, and complimentary wireless high-speed Internet access.
Business travelers won?t have to make their bedroom their office. Our spacious living rooms include a desk and are an ideal place to hold small meetings or socialize with coworkers.
Parents, imagine being able to tuck your kids into bed, and having some quiet time of your own to enjoy a movie in a separate room. If you are planning a romantic evening out, Les Suites offers childcare services, available on request.
Our two-bedroom suites make it easy for traveling friends to share a suite and still have the privacy of separate sleeping areas.
Les Suites Hotel Ottawa makes your stay an experience closer to home.</p>
		</div>			
			<div class="span_of_2">
				<div class="span2_of_1">
					<h4>check-in:</h4>
					<div class="book_date btm">
						<form>
							<input class="date" id="datepicker1" type="text" value="DD/MM/YY" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'DD/MM/YY';}">
						</form>
					</div>	
					<div class="sel_room">
						<h4>type of rooms</h4>
						<select id="country" onchange="change_country(this.value)" class="frm-field required">
							<option value="null">Select a type of Room</option>
				            <option value="null">Suite room</option>         
				            <option value="AX">Single room</option>
							<option value="AX">Double room</option>
		        		</select>
					</div>	
					<div class="sel_room left">
						<br>
						
					</div>	
				</div>
				<div class="span2_of_1">
					<h4>check-out:</h4>
					<div class="book_date btm">
						<form>
							<input class="date" id="datepicker1" type="text" value="DD/MM/YY" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'DD/MM/YY';}">
						</form>
					</div>	
					<div class="sel_room">
						<br>
						
					</div>	
					<div class="sel_room left">
						<h4>Number of pets:</h4>
						<select id="country" onchange="change_country(this.value)" class="frm-field required">
							<option value="null">0</option>
							<option value="null">Just kidding, no pets allowed lol</option>
				            
		        		</select>
					</div>	
				</div>
				<div class="clear"></div>
			</div>
			<div class="res_btn">
				<form>
					<input type="submit" value="search now &nbsp; &#128269; " style="width: 280px;">
				</form>
                <br>
                <form>
					<input type="submit" name='submitSuite' value="book now" style="width: 280px;">
				</form>
                
			</div>
            
            <p>-----------> Search Results are displayed here<---------------</p>
            <p>-----------> Search Results are displayed here<---------------</p>
            <p>-----------> Search Results are displayed here<---------------</p>	
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

<%
    if (request.getParameter("submitSuite") != null) {
        db.connect();
        user = new User(((User) session.getAttribute("Session")), "Suite");
        int i = Integer.parseInt(db.select("SELECT * FROM ROOMS WHERE ROOMTYPE = 'Suite' AND BOOKED = '1'", "ROOMNUMBER").get(0).toString());
        user.getRoom().roomNum = String.valueOf(i);
        db.insertBookRoom(i, user.getUsername(), request.getParameter("specialRequest"), request.getParameter("startDate"), request.getParameter("finishDate"));
        db.insert("UPDATE ROOMS SET BOOKED = '0' WHERE ROOMNUMBER = " + user.getRoom().roomNum);
        db.close();
        session.setAttribute("Session", user);
        request.setAttribute("startDate", request.getParameter("startDate"));
        request.setAttribute("finishDate", request.getParameter("finishDate"));
    }
%>

<%
    if (request.getParameter("submitDouble") != null) {
        db.connect();
        user = new User(((User) session.getAttribute("Session")), "Double");
        int i = Integer.parseInt(db.select("SELECT * FROM ROOMS WHERE ROOMTYPE = 'Double' AND BOOKED = '1'", "ROOMNUMBER").get(0).toString());
        user.getRoom().roomNum = String.valueOf(i);
        db.insertBookRoom(i, user.getUsername(), request.getParameter(""), request.getParameter("startDate"), request.getParameter("finishDate"));
        db.insert("UPDATE ROOMS SET BOOKED = '0' WHERE ROOMNUMBER = " + user.getRoom().roomNum);
        db.close();
        session.setAttribute("Session", user);
        request.setAttribute("startDate", request.getParameter("startDate"));
        request.setAttribute("finishDate", request.getParameter("finishDate"));
    }
%>

<%
    if (request.getParameter("submitSingle") != null) {
        db.connect();
        user = new User(((User) session.getAttribute("Session")), "Single");
        int i = Integer.parseInt(db.select("SELECT * FROM ROOMS WHERE ROOMTYPE = 'Single' AND BOOKED = '1'", "ROOMNUMBER").get(0).toString());
        user.getRoom().roomNum = String.valueOf(i);
        db.insertBookRoom(i, user.getUsername(), request.getParameter(""), request.getParameter("startDate"), request.getParameter("finishDate"));
        db.insert("UPDATE ROOMS SET BOOKED = '0' WHERE ROOMNUMBER = " + user.getRoom().roomNum);
        db.close();
        session.setAttribute("Session", user);
        request.setAttribute("startDate", request.getParameter("startDate"));
        request.setAttribute("finishDate", request.getParameter("finishDate"));
    }
%>