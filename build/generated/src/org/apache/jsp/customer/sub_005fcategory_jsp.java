package org.apache.jsp.customer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class sub_005fcategory_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        ");

            String cat_id=null,c_name=null;
            cat_id=request.getParameter("cid");
            if(cat_id!=null)
                session.setAttribute("cat_id", cat_id);
                                     Connection con=null;
                                    Statement st=null;
                                    ResultSet rs=null; 
                                        Class.forName("com.mysql.jdbc.Driver");   
                                        con=DriverManager.getConnection("jdbc:mysql://localhost/he","root","");
                                        st=con.createStatement();
                                        rs=st.executeQuery("select cat_name from category where cat_id='"+session.getAttribute("cat_id") +"'");
                                        while(rs.next())
                                                                                       {
                                         c_name=rs.getString(1);   
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
      out.write("\t\t\t<div class=\"col-md-9 product-w3ls-right\">\n");
      out.write("\t\t\t\t<!-- breadcrumbs --> \n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t\t\t<!-- //breadcrumbs -->\n");
      out.write("\t\t\t\t<div class=\"product-top\"  >\n");
      out.write("\t\t\t\t\t<h4>");
      out.print( c_name);
      out.write("</h4>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"products-row\">\n");
      out.write("\t\t\t\t\t<div class=\"col-md-3 product-grids\">\n");
      out.write("                                            \n");
      out.write("                                            ");

                                     try
                                    {
                                        rs=st.executeQuery("select *from sub_cat where cat_id='"+session.getAttribute("cat_id") +"'");
                                        while(rs.next())
                                       {
                                               String cname=rs.getString(2);
                                            
      out.write("\n");
      out.write("\t\t\t\t\t\t <div class=\"agile-products\" style=\"margin: 10px;float: left;height:250px;\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"new-tag\"><h6>20%<br>Off</h6></div>\n");
      out.write("                                                        <a href=\"product_detail.jsp?subid=");
      out.print( rs.getString(1));
      out.write("\"><img width=\"150px\" height=\"150px\" src=\"../images/e1.png\" class=\"img-responsive\" alt=\"img\"></a>\n");
      out.write("\t\t\t\t\t\t\t\n");
      out.write("                                                        <div class=\"agile-product-text\">              \n");
      out.write("\t\t\t\t\t\t\t\t<h5><a href=\"single.html\" >");
      out.print( cname);
      out.write("</a></h5> \n");
      out.write("\t\t\t\t\t\t\t\t<style=\"margin-left: 20px; margin-bottom: 200px;></style>\n");
      out.write("\t\t\t\t\t\t\t\t \n");
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
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../customer/include/js_data.jsp", out, false);
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
