package org.apache.jsp.customer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class single_005finfo_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("          ");

            String pid=null,pname=null,des=null,price=null,image_name=null;
                      pid=request.getParameter("pid");
            //if(sub_cat_id!=null)
              //  session.setAttribute("sub_cat_id", sub_cat_id);
                                     Connection con=null;
                                    Statement st=null;
                                    ResultSet rs=null; 
                                        Class.forName("com.mysql.jdbc.Driver");   
                                        con=DriverManager.getConnection("jdbc:mysql://localhost/he","root","");
                                        st=con.createStatement();
                                        rs=st.executeQuery("select *from product_detail where pro_id='"+pid+"'");
                                        while(rs.next())
                                        {
                                         pname=rs.getString(2); 
                                         des=rs.getString(3);
                                         price=rs.getString(4);
                                         image_name=rs.getString(6);
                                        }
                                        rs.close();
                                    
        
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../customer/include/css_data.jsp", out, false);
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../customer/include/header1.jsp", out, false);
      out.write("\n");
      out.write("        \t<div class=\"products\">\t \n");
      out.write("\t\t<div class=\"container\">  \n");
      out.write("\t\t\t<div class=\"single-page\">\n");
      out.write("\t\t\t\t<div class=\"single-page-row\" id=\"detail-21\">\n");
      out.write("\t\t\t\t\t<div class=\"col-md-6 single-top-left\">\t\n");
      out.write("\t\t\t\t\t\t<div class=\"flexslider\">\n");
      out.write("\t\t\t\t\t\t\t<ul class=\"slides\">\n");
      out.write("                                                            \n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"thumb-image detail_images\"> <img src=\"../image_product/");
      out.print(image_name);
      out.write("\" data-imagezoom=\"true\" class=\"img-responsive\" alt=\"\"> </div>\n");
      out.write("\t\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t \n");
      out.write("\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"col-md-6 single-top-right\">\n");
      out.write("\t\t\t\t\t\t<h3 class=\"item_name\">");
      out.print( pname);
      out.write("</h3>\n");
      out.write("\t\t\t\t\t\t<p>");
      out.print( des);
      out.write(" </p>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t<div class=\"single-price\">\n");
      out.write("\t\t\t\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t\t\t\t<li>Rs.");
      out.print( price);
      out.write("</li>  \n");
      out.write("\t\t\t\t\t\t\t\t<li><del>$600</del></li> \n");
      out.write("\t\t\t\t\t\t\t\t<li><span class=\"w3off\">10% OFF</span></li> \n");
      out.write("\t\t\t\t\t\t\t\t<li>Ends on: June,5th</li>\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"#\"><i class=\"fa fa-gift\" aria-hidden=\"true\"></i> Coupon</a></li>\n");
      out.write("\t\t\t\t\t\t\t</ul>\t\n");
      out.write("\t\t\t\t\t\t</div> \n");
      out.write("\t\t\t\t\t\t<p class=\"single-price-text\"> </p>\n");
      out.write("\t\t\t\t\t\t\t<button class=\"w3ls-cart w3ls-cart-like\"><i class=\"fa fa-heart-o\" aria-hidden=\"true\"></i> Add to Wishlist</button>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t   <div class=\"clearfix\"> </div>  \n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t</div> \n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../customer/include/js_data.jsp", out, false);
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("    ");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
