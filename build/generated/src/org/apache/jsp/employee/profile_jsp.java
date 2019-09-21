package org.apache.jsp.employee;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class profile_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\\\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("      <body>\n");
      out.write("          \n");
      out.write("        ");

          
             Connection con=null;
                                Statement st=null;
                                ResultSet rs=null;
                                String ename=null,eaddress=null,phone=null,eemail=null,action=null;
                                
                                try
                                {
                                    Class.forName("com.mysql.jdbc.Driver");   
                                    con=DriverManager.getConnection("jdbc:mysql://localhost/he","root","");
                                    st=con.createStatement();
                                    rs=st.executeQuery("select *from employee where eid='"+session.getAttribute("eid") +"'");
                                    while(rs.next())
                                    {
                                        
                                        ename=rs.getString(2);
                                       
                                        eaddress=rs.getString(3);
                                        eemail=rs.getString(5);
                                        phone=rs.getString(4);
                                    }
                                }
                                catch(Exception e)
                                {
                                    out.println("Ex is:"+e);
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
      out.write("\t\t\t<h3 class=\"w3ls-title w3ls-title1\">your profile\n");
      out.write("                     </h3>  \n");
      out.write("\t\t\t<div class=\"login-body\">\n");
      out.write("                            <form action=\"profile.jsp\" method=\"post\">\n");
      out.write("\t\t\t\t\t<input value=\"");
      out.print(ename);
      out.write("\" type=\"text\" class=\"user\" name=\"cusname\" placeholder=\"Enter Name\" required=\"\">\n");
      out.write("                                        <input value=\"");
      out.print( eaddress);
      out.write("\" type=\"text\" name=\"cusaddress\" class=\"lock\" placeholder=\"Enter address\" required=\"\">\n");
      out.write("                                        <input value=\"");
      out.print(phone);
      out.write(" \"type=\"text\" name=\"cuscontact\" class=\"lock\" placeholder=\"Enter contect\" required=\"\">\n");
      out.write("                                        <input value=\"");
      out.print(eemail);
      out.write(" \"type=\"text\" name=\"cusemail\" class=\"lock\" placeholder=\"Enter Email\" required=\"\">\n");
      out.write("                                        \n");
      out.write("                                        <input type=\"submit\" name=\"b1\" value=\"Update\">\n");
      out.write("             ");

                              try
                                {
                                    action=request.getParameter("b1");
                                    if(action!=null)
                                    {
                                        ename=request.getParameter("cusname");
                                        eaddress=request.getParameter("cusaddress");
                                        eemail=request.getParameter("cusemail");
                                        phone=request.getParameter("cuscontact");
                                        
                                        
                                        int i=st.executeUpdate("update employee set cust_name='"+ename+"',cust_address='"+eaddress+"',cust_phone='"+phone+"',cust_email='"+eemail+"' where cust_id='"+session.getAttribute("eid") +"'");
                                        if(i>0)
                                        {
                                            //session.removeAttribute("cid");
                                           response.sendRedirect("profile.jsp"); 
                                        }
                                        else
                                        {
                                            out.println("Not Updated");
                                        }
                                    }
                                }
                                catch(Exception e)
                                {
                                    out.println("Ex is"+e);
                                }
                                  
      out.write("\n");
      out.write("                                        \n");
      out.write("                                        \n");
      out.write("                           \n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t</form>\n");
      out.write("                                       \n");
      out.write("\t\t\t</div>  \n");
      out.write("                        \n");
      out.write("\t\t\t\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("                                  ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../employee/include/footer.jsp", out, false);
      out.write("\n");
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
