package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      			null, true, 10240, true);
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
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../admin/include/css_data.jsp", out, false);
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        <div class=\"login-page\">\n");
      out.write("\t\t<div class=\"container\"> \n");
      out.write("\t\t\t<h3 class=\"w3ls-title w3ls-title1\">Admin Login</h3>  \n");
      out.write("\t\t\t<div class=\"login-body\">\n");
      out.write("                            <form action=\"login.jsp\" method=\"post\">\n");
      out.write("\t\t\t\t\t<input type=\"text\" class=\"user\" name=\"uname\" placeholder=\"Enter your email\" required=\"\">\n");
      out.write("\t\t\t\t\t<input type=\"password\" name=\"pass\" class=\"lock\" placeholder=\"Password\" required=\"\">\n");
      out.write("                                        <input type=\"submit\" value=\"Login\" name=\"b1\">\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t</form>\n");
      out.write("                              ");

            String username=null;
           username=request.getParameter("username");
            if(username!=null)
            {
                session.setAttribute("username",username);
            }
        
      out.write("\n");
      out.write("                            ");

                                Connection con=null;
                                Statement st=null;
                                ResultSet rs=null;
                                String uname=null,upass=null,dname=null,dpass=null,action=null;
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
                                        
                                       rs=st.executeQuery("select *from admin");
                                       while(rs.next())
                                       {
                                           dname=rs.getString(1);
                                           dpass=rs.getString(2);
                                         /*  out.println("<br/>uname:- "+uname);
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
                                           session.setAttribute("admin", "admin");
                                          out.println("<script> alert('Sucessfully Login'); document.location.href='category.jsp';</script>");
                                       }
                                       else
                                       {
                                          out.println("<script> alert('Invalid User name and Password');</script>");
                                       }
                                    }
                                }
                                catch(Exception e)
                                {
                                    out.println("Ex is"+e);
                                }
                            
      out.write("\n");
      out.write("                           \n");
      out.write("                                        \n");
      out.write("                                        \n");
      out.write("\t\t\t</div>  \n");
      out.write("\t\t\t\n");
      out.write("\t\t\t\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../admin/include/js_data.jsp", out, false);
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
