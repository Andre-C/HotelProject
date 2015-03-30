<%-- 
    Document   : signup
    Created on : 27-Mar-2015, 8:45:53 PM
    Author     : Andre
--%>
<%@page import="Accounts.*"%>
<%!
    DataBase db = new DataBase();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    
         <%   
    if (request.getParameter("register") != null) {
        
        if (
                request.getParameter("email").equals("") ||
                request.getParameter("username").equals("") || 
                request.getParameter("password").equals("")) { 
                out.print("Please complete the form.");
        }
    } 
%> 
   

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
				<li><a href="activities.jsp">galery</a></li> |
				<li class="active"><a href="contact.jsp">contact</a></li>
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
		<div class="contact">				
				<div class="contact_left">
					<div class="contact_info">
			    	 	<h3></h3>
			    	 		<div class="map">
					   		     
                                <br>
                                
                                <br>
					   		</div>
      				</div>
      			<div class="company_address">
				     	<br>
				   </div>
				</div>				
				<div class="contact_right">
				  <div class="contact-form">
				  	<h3>Enter your info and sign up</h3>
					    <form method="post" action="contact-post.jsp">
					    	<div>
						    	<span><label>NAME</label></span>
						    	<span><input name="userName" type="text" class="textbox"></span>
						    </div>
						    <div>
						    	<span><label>PASSWORD</label></span>
						    	<span><input name="userEmail" type="text" class="textbox"></span>
						    </div>
						    <div>
						     	<span><label>E-MAIL</label></span>
						    	<span><input name="userPhone" type="text" class="textbox"></span>
						    </div>
						    
						   <div>
						   		<span><input type="submit" value="Submit"></span>
						  </div>
					    </form>

				    </div>
  				</div>	

  				<div class="clear"></div>

		  </div>
                               
<% 
    
if (request.getParameter("signup") != null) {
    
    if (request.getParameter("password").equals(request.getParameter("username")) && !request.getParameter("password1").equals("")) {
        db.connect();
    
        if (db.select("SELECT USERNAME FROM USERS", "USERNAME").contains(request.getParameter("username"))) { %>
    
        <h2>Username already exists, please try a different username.</h2>
        
<%      } else {
            int result = db.insert("INSERT INTO USERS VALUES('" + request.getParameter("username") + "', '" + request.getParameter("password")
                + "', 'N', '" + request.getParameter("Name") + "', '"  + request.getParameter("email") + "')");
            db.close(); 
            if (result == 0) {%>
            
            <h2>Your account was created, you can now log in <a href='index.jsp'>here</a>.</h2>
            
<%        }else { %>
            <h2>Unexpected error. Your account has not been created, please try again.</h2>
<%        }
        }
    
        }else if (!request.getParameter("password").equals(request.getParameter("username"))) { %>
            <h2>Passwords entered do not match!</h2>
<!--            
<%        }else if (request.getParameter("password").equals(request.getParameter("username")) && request.getParameter("password").equals("")) { %>
            <h2>Password field can not be empty!</h2>
           
<%        }
    
}    
        
%>
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
