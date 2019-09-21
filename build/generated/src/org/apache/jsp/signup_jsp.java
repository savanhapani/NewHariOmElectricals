package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class signup_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "include/css_data.jsp", out, false);
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "include/header1.jsp", out, false);
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "include/menu.jsp", out, false);
      out.write("\n");
      out.write("        <div class=\"login-page\">\n");
      out.write("\t\t<div class=\"container\"> \n");
      out.write("\t\t\t<h3 class=\"w3ls-title w3ls-title1\">Create Your Account</h3>  \n");
      out.write("\t\t\t<div class=\"login-body\">\n");
      out.write("\t\t\t\t<form action=\"#\" method=\"post\">\n");
      out.write("\t\t\t\t\t<input type=\"text\" class=\"user\" name=\"cusname\" placeholder=\"Enter Name\" required=\"\">\n");
      out.write("\t\t\t\t\t<input type=\"text\" name=\"cusaddress\" class=\"lock\" placeholder=\"Enter address\" required=\"\">\n");
      out.write("                                        <input type=\"text\" name=\"cuscontect\" class=\"lock\" placeholder=\"Enter contect\" required=\"\">\n");
      out.write("                                        <input type=\"text\" name=\"cusemail\" class=\"lock\" placeholder=\"Enter Email\" required=\"\">\n");
      out.write("                                        <input type=\"password\" name=\"password\" class=\"lock\" placeholder=\"Enter password\" required=\"\" >\n");
      out.write("                                        <input type=\"submit\" name=\"login\" value=\"Submit\">\t\n");
      out.write("\t\t\t\t</form>\n");
      out.write("                               ");

                                Connection con=null;
                                Statement st=null;
                                ResultSet rs=null;
                                String cname=null,caddress=null,cphone=null,cemail=null,cpassword=null,action=null;
                                try
                                {
                                  Class.forName("com.mysql.jdbc.Driver");   
                                    con=DriverManager.getConnection("jdbc:mysql://localhost/he","root","");
                                    st=con.createStatement();
                                    action=request.getParameter("b1");
                                    if(action!=null)
                                    {
                                        cname=request.getParameter("cusname");
                                        caddress=request.getParameter("cusaddress");
                                        cphone=request.getParameter("cuscontect");
                                        cemail=request.getParameter("cusemail");
                                        cpassword=request.getParameter("password");
                                        int i=st.executeUpdate("insert into customer(cust_name,cust_phone,cust_email,cust_password)values('"+cname+"','"+caddress+"','"+cphone+"','"+cemail+"','"+cpassword+"')");
                                    }
                                }
                                catch(Exception e)
                                {
                                    out.println("record submited"+e);
                                }
                            
      out.write("\n");
      out.write("\t\t\t</div>  \n");
      out.write("\t\t\t<h6> <a href=\"signup.jsp\">Sign Up Now »</a> </h6> \n");
      out.write("\t\t\t\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
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
