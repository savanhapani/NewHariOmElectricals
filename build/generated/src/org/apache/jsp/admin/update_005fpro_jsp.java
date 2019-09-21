package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class update_005fpro_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../admin/include/css_data.jsp", out, false);
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../admin/include/header1.jsp", out, false);
      out.write("\n");
      out.write("           ");

            String p_id=null;
            p_id=request.getParameter("pid");
            if(p_id!=null)
            {
                session.setAttribute("p_id",p_id);
            }
              Connection con=null;
                                Statement st=null;
                                ResultSet rs=null;
                                String pname=null,pdes=null,pprice=null,stock=null,simage=null,bimage=null,action=null;
                                
                                try
                                {
                                    Class.forName("com.mysql.jdbc.Driver");   
                                    con=DriverManager.getConnection("jdbc:mysql://localhost/he","root","");
                                    st=con.createStatement();
                                    rs=st.executeQuery("select *from product_detail where pro_id='"+session.getAttribute("p_id") +"'");
                                    while(rs.next())
                                                                               {
                                        pname=rs.getString(2);
                                        pdes=rs.getString(3);
                                        pprice=rs.getString(4);
                                        stock=rs.getString(5);
                                    }
                                }
                                catch(Exception e)
                                {
                                    out.println("Ex is:"+e);
                                }
        
      out.write("\n");
      out.write("         <div class=\"login-page\">\n");
      out.write("\t\t<div class=\"container\"> \n");
      out.write("\t\t\t<h3 class=\"w3ls-title w3ls-title1\">product</h3>  \n");
      out.write("\t\t\t<div class=\"login-body\">\n");
      out.write("                            <form action=\"update_pro.jsp\" method=\"post\">\n");
      out.write("                                <input value=\"");
      out.print( pname);
      out.write("\" type=\"text\" class=\"user\" name=\"proname\" placeholder=\"Enter product\" required=\"\">\n");
      out.write("\t\t\t\t\t<input value=\"");
      out.print( pdes);
      out.write("\" type=\"text\" name=\"prodes\" class=\"lock\" placeholder=\"Enter Description\" required=\"\">\n");
      out.write("                                        <input value=\"");
      out.print( pprice);
      out.write("\" type=\"text\" class=\"user\" name=\"proprice\" placeholder=\"Enter price\" required=\"\">\n");
      out.write("                                        <input value=\"");
      out.print( stock);
      out.write("\" type=\"text\" class=\"user\" name=\"prostock\" placeholder=\"Enter stock\" required=\"\">\n");
      out.write("                                       \n");
      out.write("                                        \n");
      out.write("                                        <input type=\"submit\" value=\"Update\" name=\"b1\">\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t</form>\n");
      out.write("                            ");

                                
                                try
                                {
                                    action=request.getParameter("b1");
                                    if(action!=null)
                                    {
                                        pname=request.getParameter("proname");
                                        pdes=request.getParameter("prodes");
                                        pprice=request.getParameter("proprice");
                                        stock=request.getParameter("prostock");
                                        
                                        
                                        int i=st.executeUpdate("update product_detail set pro_name='"+pname+"',pro_desc='"+pdes+"',pro_price='"+pprice+"',stock='"+stock+"' where pro_id='"+session.getAttribute("p_id") +"'");
                                        if(i>0)
                                        {
                                            session.removeAttribute("p_id");
                                           response.sendRedirect("product.jsp"); 
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
      out.write("\t\t\t</div>  \n");
      out.write("                        \n");
      out.write("                        <br/><br/>\n");
      out.write("                        \n");
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
