package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class emplogin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      			null, true, 102400, true);
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
      out.write("\t\t\t<h3 class=\"w3ls-title w3ls-title1\">Employee Login</h3>  \n");
      out.write("\t\t\t<div class=\"login-body\">\n");
      out.write("                            <form action=\"emplogin.jsp\" method=\"post\">\n");
      out.write("\t\t\t\t\t<input type=\"text\" class=\"user\" name=\"uname\" placeholder=\"Enter your email\" required=\"\">\n");
      out.write("\t\t\t\t\t<input type=\"password\" name=\"pass\" class=\"lock\" placeholder=\"Password\" required=\"\">\n");
      out.write("                                        <input type=\"submit\"  name=\"b1\" value=\"Login\">\n");
      out.write("\t\t\t\t\t<div class=\"forgot-grid\">\n");
      out.write("\t\t\t\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("                                                <h6>  <a href=\"empsignup.jsp\">Sign Up Now »</a> </h6> \n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</form>\n");
      out.write("                                ");

                                Connection con=null;
                                Statement st=null;
                                ResultSet rs=null;
                                String uname=null,upass=null,dname=null,dpass=null,action=null,eid=null;
                                int flag=0;
                                
                                try
                                {
                                  Class.forName("com.mysql.jdbc.Driver");   
                                    con=DriverManager.getConnection("jdbc:mysql://localhost/he","root","");
                                    st=con.createStatement();
                                    action=request.getParameter("b1");
                                    if(action!=null)
                                    {
                                       uname=request.getParameter("uname");
                                       upass=request.getParameter("pass");
                                        
                                       rs=st.executeQuery("select *from employee");
                                       while(rs.next())
                                       {
                                           eid=rs.getString(1);
                                           dname=rs.getString(5);
                                           dpass=rs.getString(6);
                                            /*out.println("<br/>uname:- "+uname);
                                           out.println("<br/>upass:- "+upass);
                                           out.println("<br/>dname:- "+dname);
                                           out.println("<br/>dpass:- "+dpass);*/
                                           if((uname.equals(dname)) &&(upass.equals(dpass)))
                                           {
                                               flag=1;
                                               break;
                                           }
                                       }
                                       if(flag==1)
                                       {
                                           session.setAttribute("eid",eid);
                                          out.println("<script language=javascript> alert('Successfully Login');</script>");
                                          response.sendRedirect("profile.jsp");
                                       }
                                       else
                                       {
                                           out.println("<script language=javascript> alert('Invalid User Name And Password');</script>");
                                       }
                                    }
                                }
                                catch(Exception e)
                                {
                                    out.println("Ex is"+e);
                                }
                            
      out.write("\n");
      out.write("                                 \n");
      out.write("                            \n");
      out.write("                                \n");
      out.write("\t\t\t</div>  \n");
      out.write("\t\t\t\n");
      out.write("\t\t\t\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("                            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "include/footer.jsp", out, false);
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "include/js_data.jsp", out, false);
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
