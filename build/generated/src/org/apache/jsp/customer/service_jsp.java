package org.apache.jsp.customer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("      \n");
      out.write("    </head>\n");
      out.write("    <body>   ");

        
            if(session.getAttribute("cid")==null)
            {
                out.println("<script> alert('You Must Be Login'); document.location.href='../login.jsp';</script>");
            }
        
      out.write("\n");
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
      out.write("\t\t\t<h3 class=\"w3ls-title w3ls-title1\">Service Request...\n");
      out.write("                     </h3>  \n");
      out.write("\t\t\t<div class=\"login-body\">\n");
      out.write("                            <form action=\"service.jsp\" method=\"post\">\n");
      out.write("\t\t\t\t\t\n");
      out.write("                                        <input  type=\"text\" name=\"cdes\" class=\"lock\" placeholder=\"Enter Description\" required=\"\">\n");
      out.write("                                       <input type=\"submit\" value=\"Send\" name=\"b1\"> \n");
      out.write("                            </form>        \n");
      out.write("                              </div>\n");
      out.write("                        ");

                        Connection con=null;
                        Statement st=null;
                            String r_date=null,action=null,des=null;
                            DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
                            Date dateobj = new Date();
                            r_date=df.format(dateobj).toString();
				 try
                                {
                                  Class.forName("com.mysql.jdbc.Driver");   
                                    con=DriverManager.getConnection("jdbc:mysql://localhost/he","root","");
                                    st=con.createStatement();
                                    action=request.getParameter("b1");
                                    if(action!=null)
                                    {
                                       
                                        des=request.getParameter("cdes");
                                        int i=st.executeUpdate("insert into service_detail(description,r_date,cid)values('"+des+"','"+r_date+"','"+session.getAttribute("cid") +"')");
                                    
                                    }
                                }
                                catch(Exception e)
                                {
                                    out.println("Ex is"+e);
                                }
                        
      out.write("\n");
      out.write("                </div>  \n");
      out.write("                        \n");
      out.write("                        <br/><br/>\n");
      out.write("                        <table style=\"border-color: #0280e1; border-style: solid; margin-left: 400px;\">\n");
      out.write("                            <tr>\n");
      out.write("                                \n");
      out.write("                                <th style=\"width: 250px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1;\">Description</th>\n");
      out.write("                                <th style=\"width: 100px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; \">Date</th>\n");
      out.write("                                <th style=\"width: 200px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; \">Reply</th>\n");
      out.write("                               \n");
      out.write("                            </tr>\n");
      out.write("                            ");

                                ResultSet rs=null;
                                rs=st.executeQuery("select *from service_detail where cid='"+session.getAttribute("cid") +"'");
                                while(rs.next())
                                {
                                    out.println("<tr>");
                                   
                                    out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;>"+rs.getString(2) +"</td>");
                                    out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;>"+rs.getString(3) +"</td>");
                                     out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;>"+rs.getString(4) +"</td>"); out.println("</tr>");
                                }
                            
      out.write("\n");
      out.write("                        </table>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("                       \n");
      out.write("                ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../customer/include/footer.jsp", out, false);
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../customer/include/js_data.jsp", out, false);
      out.write("                                \n");
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
