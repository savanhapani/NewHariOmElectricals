<%-- 
    Document   : header1
    Created on : Nov 12, 2017, 12:52:22 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <div class="header">
		<div class="w3ls-header"><!--header-one--> 
			<div class="w3ls-header-left">
				<p></p>
			</div>
			<div class="w3ls-header-right">
				<ul>
					<li class="dropdown head-dpdn">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user" aria-hidden="true"></i> Login<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="login.jsp">Login </a></li> 
							<li><a href="emplogin.jsp">Employee</a></li> 
							
						</ul> 
					</li> 
					 
					<li class="dropdown head-dpdn">
						<a href="contact.jsp" class="dropdown-toggle"><i class="fa" aria-hidden="true"></i> Contact Us</a>
					</li>
                                       
					
				</ul>
			</div>
			<div class="clearfix"> </div> 
		</div>
	<div class="header-two"><!-- header-two -->
			<div class="container">
				<div class="header-logo">
					<h1><a href=""><span>New</span>Hari Om <i></i></a></h1>
					 
				</div>	
				<div class="header-search">
					<form action="#" method="post">
						<input type="search" name="Search" placeholder="Search for a Product..." required="">
						<button type="submit" class="btn btn-default" aria-label="Left Align">
							<i class="fa fa-search" aria-hidden="true"> </i>
						</button>
					</form>
				</div>
				<div class="header-cart"> 
					<div class="my-account">
						<a href="contact.html"><i class="fa fa-map-marker" aria-hidden="true"></i> CONTACT US</a>						
					</div>
					<div class="cart"> 
						<form action="#" method="post" class="last"> 
							<input type="hidden" name="cmd" value="_cart" />
							<input type="hidden" name="display" value="1" />
							<button class="w3view-cart" type="submit" name="submit" value=""><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></button>
						</form>  
					</div>
					<div class="clearfix"> </div> 
				</div> 
				<div class="clearfix"> </div>
			</div>		
		</div><!-- //header-two -->
    </body>
</html>
