package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class work_005fassign_jsp extends org.apache.jasper.runtime.HttpJspBase
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

            if(session.getAttribute("admin")==null)
                               {
                response.sendRedirect("login.jsp");
                
            }
            String sid=null;
            sid=request.getParameter("sid");
            if(sid!=null)
            {
                session.setAttribute("wsid", sid);
            }
                                Connection con=null;
                                Statement st=null;
                                ResultSet rs=null;
                                
                                try
                                {
                                  Class.forName("com.mysql.jdbc.Driver");   
                                    con=DriverManager.getConnection("jdbc:mysql://localhost/he","root","");
                                    st=con.createStatement();
                                    rs=st.executeQuery("select *from employee");
                                }
                                catch(Exception e)
                                {
                                    out.println("Ex is"+e);
                                }
        
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../admin/include/css_data.jsp", out, false);
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../admin/include/header1.jsp", out, false);
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        <div class=\"login-page\">\n");
      out.write("\t\t<div class=\"container\"> \n");
      out.write("\t\t\t<h3 class=\"w3ls-title w3ls-title1\">Assign work</h3>  \n");
      out.write("\t\t\t<div class=\"login-body\">\n");
      out.write("                            <form action=\"work_assign.jsp\" method=\"post\">\n");
      out.write("\t\t\t\t\t\n");
      out.write("                                        <select name=\"empid\" style=\"font-size: 1em;\n");
      out.write("    padding: 0.9em 1em;\n");
      out.write("    width: 100%;\n");
      out.write("    color: #999;\n");
      out.write("   \n");
      out.write("    outline: none;\n");
      out.write("    border: 1px solid #E2DCDC;\n");
      out.write("    background: #FFFFFF;\">\n");
      out.write("                                            ");

                                                while(rs.next())
                                                {
                                            
      out.write("\n");
      out.write("                                            <option value=\"");
      out.print(rs.getString(1));
      out.write('"');
      out.write('>');
      out.print(rs.getString(2));
      out.write("</option>\n");
      out.write("                                            ");

                                                }
                                            
      out.write("\n");
      out.write("                                        </select>\n");
      out.write("                                        \n");
      out.write("                                        <input type=\"submit\" value=\"Submit\" name=\"b1\">\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t</form>\n");
      out.write("                            ");

                                String action=null,eid=null;
                                    action=request.getParameter("b1");
                                    if(action!=null)
                                    {
                                        eid=request.getParameter("empid");
                                       
                                        
                                        int i=st.executeUpdate("update service_detail set eid='"+eid+"' where sid='"+session.getAttribute("wsid") +"'");
                                        if(i>0)
                                            out.println("<script> alert('Work is Assign'); document.location.href='service.jsp';</script>");
                                        else
                                             out.println("<script> alert('Work is not Assign'); document.location.href='service.jsp';</script>");
                                    }  
                            
      out.write("\n");
      out.write("\t\t\t\n");
      out.write("                        <br/><br/>\n");
      out.write("                        \n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("                         \n");
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
