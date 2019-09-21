<%-- 
    Document   : index
    Created on : Nov 12, 2017, 12:46:02 PM
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
        <jsp:include page="include/css_data.jsp"></jsp:include>
        <jsp:include page="include/header1.jsp"></jsp:include>
        <jsp:include page="include/menu.jsp"></jsp:include>
        <div class="banner">
		<div id="kb" class="carousel kb_elastic animate_text kb_wrapper" data-ride="carousel" data-interval="6000" data-pause="hover">
			<!-- Wrapper-for-Slides -->
            <div class="carousel-inner" role="listbox">  
                <div class="item active"><!-- First-Slide -->
                    <img src="images/ac.jpg" alt="" class="img-responsive" />
                    <div class="carousel-caption kb_caption kb_caption_right">
                       
                    </div>
                </div>  
                <div class="item"> <!-- Second-Slide -->
                    <img src="images/fen.jpg" alt="" class="img-responsive" />
                    <div class="carousel-caption kb_caption kb_caption_right">
                       
                    </div>
                </div> 
                <div class="item"><!-- Third-Slide -->
                    <img src="images/3.jpg" alt="" class="img-responsive"/>
                    <div class="carousel-caption kb_caption kb_caption_center">
                        
                    </div>
                </div> 
            </div> 
            <!-- Left-Button -->
            <a class="left carousel-control kb_control_left" href="#kb" role="button" data-slide="prev">
				<span class="fa fa-angle-left kb_icons" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a> 
            <!-- Right-Button -->
            <a class="right carousel-control kb_control_right" href="#kb" role="button" data-slide="next">
                <span class="fa fa-angle-right kb_icons" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a> 
        </div>
		<script src="js/custom.js"></script>
	</div>

        
        <jsp:include page="include/footer.jsp"></jsp:include>
        <jsp:include page="include/js_data.jsp"></jsp:include>
    </body>
</html>
