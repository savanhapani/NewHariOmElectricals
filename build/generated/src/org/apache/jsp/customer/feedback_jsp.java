package org.apache.jsp.customer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class feedback_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("      \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("           ");

        
            if(session.getAttribute("cid")==null)
            {
                out.println("<script> alert('You Must Be Login'); document.location.href='../login.jsp';</script>");
            }
        
      out.write("\n");
      out.write("       \n");
      out.write("         ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../customer/include/css_data.jsp", out, false);
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../customer/include/header1.jsp", out, false);
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        <div class=\"login-page\">\n");
      out.write("\t\t<div class=\"container\"> \n");
      out.write("\t\t\t<h3 class=\"w3ls-title w3ls-title1\">your feedback...\n");
      out.write("                     </h3>  \n");
      out.write("\t\t\t<div class=\"login-body\">\n");
      out.write("                            <form action=\"feedback.jsp\" method=\"post\">\n");
      out.write("\t\t\t\t\t<input  type=\"text\" class=\"user\" name=\"cname\" placeholder=\"Enter Name\" required=\"\">\n");
      out.write("                                        <input  type=\"text\" name=\"cdes\" class=\"lock\" placeholder=\"Enter Description\" required=\"\">\n");
      out.write("                                        <input type=\"submit\" value=\"Submit\" name=\"b1\">\n");
      out.write("                            </form>\n");
      out.write("                                        </div>\n");
      out.write("                    ");

            String cust_id=null,feecback_name=null,feedback_des=null;
                    
              
                                Connection con=null;
                                Statement st=null;
                                ResultSet rs=null;
                                String fname=null,fdes=null,action=null;
                                try
                                {
                                  Class.forName("com.mysql.jdbc.Driver");   
                                    con=DriverManager.getConnection("jdbc:mysql://localhost/he","root","");
                                    st=con.createStatement();
                                    action=request.getParameter("b1");
                                    if(action!=null)
                                    {
                                        fname=request.getParameter("cname");
                                        fdes=request.getParameter("cdes");
                                        int i=st.executeUpdate("insert into feedback_detail(feedback_name,feedback_des,cust_id)values('"+fname+"','"+fdes+"','"+session.getAttribute("cid") +"')");
                                        if(i>0)
                                        {
                                            out.println("<script language=javascript> alert('feedback is Submitted');</script>");
                                        }
                                        else
                                        {
                                            out.println("<script language=javascript> alert('Not Submitted');</script>");
                                        }
                                    }
                                }
                                catch(Exception e)
                                {
                                    out.println("Ex is"+e);
                                }
                            
      out.write("\n");
      out.write("                       \n");
      out.write("                            \n");
      out.write("                </div>\n");
      out.write("        </div>\n");
      out.write("                ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../customer/include/footer.jsp", out, false);
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../customer/include/js_data.jsp", out, false);
      out.write("                       \n");
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
