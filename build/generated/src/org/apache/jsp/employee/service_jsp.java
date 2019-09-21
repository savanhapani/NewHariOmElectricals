package org.apache.jsp.employee;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class service_jsp extends org.apache.jasper.runtime.HttpJspBase
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

            if(session.getAttribute("eid")==null)
                               {
                response.sendRedirect("login.jsp");
            }
        
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../employee/include/css_data.jsp", out, false);
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../employee/include/header1.jsp", out, false);
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        <div class=\"login-page\">\n");
      out.write("\t\t<div class=\"container\"> \n");
      out.write("\t\t\t<h3 class=\"w3ls-title w3ls-title1\">Work Detail</h3>  \n");
      out.write("\t\t\t\n");
      out.write("                            ");

                                Connection con=null;
                                Statement st=null;
                                ResultSet rs=null;
                                
                                try
                                {
                                  Class.forName("com.mysql.jdbc.Driver");   
                                    con=DriverManager.getConnection("jdbc:mysql://localhost/he","root","");
                                    st=con.createStatement();
                                    
                                }
                                catch(Exception e)
                                {
                                    out.println("Ex is"+e);
                                }
                            
      out.write("\n");
      out.write("\t\t\t\n");
      out.write("                        <br/><br/>\n");
      out.write("                        <table style=\"border-color: #0280e1; border-style: solid; margin-left: 100px;\">\n");
      out.write("                            <tr>\n");
      out.write("                                  \n");
      out.write("                                <th style=\"width: 150px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1;\">Name</th>\n");
      out.write("                                <th style=\"width: 250px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; \">Address</th>\n");
      out.write("                                <th style=\"width: 150px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; \">Phone</th>\n");
      out.write("                                <th style=\"width: 250px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; \">Request</th>\n");
      out.write("                                <th style=\"width:  100px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; \">Date</th>\n");
      out.write("                                \n");
      out.write("                                \n");
      out.write("                            </tr>\n");
      out.write("                            ");

                                rs=st.executeQuery("select customer.cust_name,service_detail.description,service_detail.r_date,service_detail.reply,service_detail.sid,customer.cust_address,customer.cust_phone,service_detail.eid from customer,service_detail,employee where customer.cust_id=service_detail.cid and service_detail.eid='"+session.getAttribute("eid") +"'");
                                while(rs.next())
                                {
                                    out.println("<tr>");
                                 
                                    out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;>"+rs.getString(1) +"</td>");
                                     out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;>"+rs.getString(6) +"</td>");
                                      out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;>"+rs.getString(7) +"</td>");
                                    out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;>"+rs.getString(2) +"</td>");
                                    out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;>"+rs.getString(3) +"</td>");
                                  
                                    out.println("</tr>");
                                }
                            
      out.write("\n");
      out.write("                        </table>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("                         \n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../employee/include/js_data.jsp", out, false);
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
