package org.apache.jsp.customer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class your_005forder_jsp extends org.apache.jasper.runtime.HttpJspBase
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

            
        
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../customer/include/css_data.jsp", out, false);
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../customer/include/header1.jsp", out, false);
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        <div class=\"login-page\">\n");
      out.write("\t\t<div class=\"container\"> \n");
      out.write("\t\t\t<h3 class=\"w3ls-title w3ls-title1\">Order Detail</h3>  \n");
      out.write("\t\t\t\n");
      out.write("                            ");

                                Connection con=null;
                                Statement st=null;
                                ResultSet rs=null;
                                String o_id=null;
                                o_id=request.getParameter("o_id");
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
      out.write("                        <table style=\"border-color: #0280e1; border-style: solid; margin-left: 200px;\">\n");
      out.write("                            <tr>\n");
      out.write("                                  \n");
      out.write("                                <th style=\"width: 150px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1;\">Product Name</th>\n");
      out.write("                                <th style=\"width: 250px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; \">QTY</th>\n");
      out.write("                                <th style=\"width: 150px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1;\">Price</th>\n");
      out.write("                                <th style=\"width: 150px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1;\">Amount</th>\n");
      out.write("                               \n");
      out.write("                               \n");
      out.write("                            </tr>\n");
      out.write("                            ");

                                String pname[]=null;
                                String rate[]=null;
                                String qty[]=null;
                                String status=null;
                                rs=st.executeQuery("select *from order_detail where cid='"+session.getAttribute("cid") +"'");
                                long amount=0,t_tamount=0;
                                while(rs.next())
                                {
                                    pname=rs.getString(6).split(",");
                                    rate=rs.getString(8).split(",");
                                    qty=rs.getString(7).split(",");
                                    status=rs.getString(11);
                                }
                                for(int i=0;i<pname.length;i++)
                                {
                                    out.println("<tr>");
                                    amount=((Long.parseLong(rate[i])) *(Long.parseLong(qty[i])));
                                    t_tamount=t_tamount+amount;
                                    out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;>"+pname[i] +"</td>");
                                    out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;>"+qty[i] +"</td>");
                                     out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;>"+rate[i] +"</td>");
                                    out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;>"+amount+"</td>");
                              
                                    
                                   
                                    out.println("</tr>");

                                }
                            
      out.write("\n");
      out.write("                            <tr>\n");
      out.write("                                <th style=\"width: 150px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1;\" colspan=\"2\">Total Amount</th>\n");
      out.write("                                <th style=\"width: 150px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1;\"colspan=\"2\">");
      out.print( t_tamount);
      out.write("</th>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <th style=\"width: 150px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1;\" colspan=\"2\">Order Status</th>\n");
      out.write("                                <th style=\"width: 150px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1;\"colspan=\"2\">");
      out.print( status);
      out.write("</th>\n");
      out.write("                            </tr>\n");
      out.write("                        </table>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("                         \n");
      out.write("                                ");
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
