package org.apache.jsp.customer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class product_005fdetail_jsp extends org.apache.jasper.runtime.HttpJspBase
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

            String sub_cat_id=null,sub_name=null;
            sub_cat_id=request.getParameter("subid");
            if(sub_cat_id!=null)
                session.setAttribute("sub_cat_id", sub_cat_id);
                                     Connection con=null;
                                    Statement st=null;
                                    ResultSet rs=null; 
                                        Class.forName("com.mysql.jdbc.Driver");   
                                        con=DriverManager.getConnection("jdbc:mysql://localhost/he","root","");
                                        st=con.createStatement();
                                        rs=st.executeQuery("select sub_cat_name from sub_cat where sub_cat_id='"+session.getAttribute("sub_cat_id") +"'");
                                        while(rs.next())
                                         {
                                         sub_name=rs.getString(1);   
                                        }
                                        rs.close();
                                    
        
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../customer/include/css_data.jsp", out, false);
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../customer/include/header1.jsp", out, false);
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        <div class=\"products\" \">\t \n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t\t<!-- breadcrumbs --> \n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t\t\t<!-- //breadcrumbs -->\n");
      out.write("\t\t\t\t<div class=\"product-top\"  >\n");
      out.write("\t\t\t\t\t<h4>");
      out.print( sub_name);
      out.write("</h4>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"products-row\">\n");
      out.write("\t\t\t\t\t\n");
      out.write("                                            \n");
      out.write("                                            ");

                                     try
                                    {
                                        rs=st.executeQuery("select *from product_detail where sub_cat_id='"+session.getAttribute("sub_cat_id") +"'");
                                        while(rs.next())
                                       {        
                                               String subname=rs.getString(2);
                                            
      out.write("\n");
      out.write("\t\t\t\t\t\t<div class=\"agile-products\" style=\"margin: 10px;float: left;height:250px;\">\n");
      out.write("\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t<a href=\"product_detail.jsp\"><img width=\"150px\" height=\"150px\" src=\"../image_product/");
      out.print( rs.getString(6));
      out.write("\" class=\"img-responsive\" alt=\"img\"></a>\n");
      out.write("\t\t\t\t\t\t\t\n");
      out.write("                                                        <div class=\"agile-product-text\">              \n");
      out.write("\t\t\t\t\t\t\t\t<h5><a href=\"single.html\" style=\"margin-left: 40px; margin-bottom: 300px\">");
      out.print( subname);
      out.write("</a></h5> \n");
      out.write("                                                                <h6 style=\"color: #F44336;\"style=\"margin-left: 30px;\"> Rs.");
      out.print( rs.getString(4));
      out.write(" <a href=\"single_info.jsp?pid=");
      out.print( rs.getString(1));
      out.write("\" style=\"color: #464646;\">More Info</a></h6>\n");
      out.write("                                                                <h6 style=\"margin-left: 35px;\"><a href=\"\" style=\"color: #f15cf1;\">Add to Cart</h6>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div> \n");
      out.write("                                            ");

                                                                                       }
                                                                               }
                                            catch(Exception e)
                                            {
                                                
                                            }
                                            
      out.write("\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("                                </div>\n");
      out.write("                        </div>\n");
      out.write("                </div>\n");
      out.write("        </div>\n");
      out.write("                        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../customer/include/footer.jsp", out, false);
      out.write("\n");
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
