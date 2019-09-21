package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class product_jsp extends org.apache.jasper.runtime.HttpJspBase
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

            String sub_cat_id=null;
            sub_cat_id=request.getParameter("scat_id");
            if(sub_cat_id!=null)
            {
                session.setAttribute("scat_id",sub_cat_id);
            }
        
      out.write("\n");
      out.write("         <div class=\"login-page\">\n");
      out.write("\t\t<div class=\"container\"> \n");
      out.write("\t\t\t<h3 class=\"w3ls-title w3ls-title1\">product</h3>  \n");
      out.write("\t\t\t<div class=\"login-body\">\n");
      out.write("                            <form action=\"product.jsp\" method=\"post\">\n");
      out.write("\t\t\t\t\t<input type=\"text\" class=\"user\" name=\"proname\" placeholder=\"Enter product\" required=\"\">\n");
      out.write("\t\t\t\t\t<textarea name=\"catdes\" style=\"    font-size: 1em;\n");
      out.write("    padding: 0.9em 1em;\n");
      out.write("    width: 100%;\n");
      out.write("    color: #999;\n");
      out.write("   \n");
      out.write("    outline: none;\n");
      out.write("    border: 1px solid #E2DCDC;\n");
      out.write("    background: #FFFFFF;\" placeholder=\"Enter\">\n");
      out.write("                                Enter Description</textarea>\n");
      out.write("                                        \n");
      out.write("                                        <input type=\"text\" class=\"user\" name=\"proprice\" placeholder=\"Enter price\" required=\"\">\n");
      out.write("                                        <input type=\"text\" class=\"user\" name=\"prostock\" placeholder=\"Enter stock\" required=\"\">\n");
      out.write("                                       \n");
      out.write("                                        \n");
      out.write("                                        <input type=\"submit\" value=\"Submit\" name=\"b1\">\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t</form>\n");
      out.write("                            ");

                                Connection con=null;
                                Statement st=null;
                                ResultSet rs=null;
                                String pname=null,pdes=null,pprice=null,stock=null,simage=null,bimage=null,action=null;
                                
                                try
                                {
                                  Class.forName("com.mysql.jdbc.Driver");   
                                    con=DriverManager.getConnection("jdbc:mysql://localhost/he","root","");
                                    st=con.createStatement();
                                    action=request.getParameter("b1");
                                    if(action!=null)
                                    {
                                        pname=request.getParameter("proname");
                                        pdes=request.getParameter("prodes");
                                        pprice=request.getParameter("proprice");
                                        stock=request.getParameter("prostock");
                                        
                                        
                                        int i=st.executeUpdate("insert into product_detail(pro_name,pro_desc,pro_price,stock,sub_cat_id)values('"+pname+"','"+pdes+"','"+pprice+"','"+stock+"','"+session.getAttribute("scat_id") +"')");
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
      out.write("                        <table style=\"border-color: #0280e1; border-style: solid; margin-left:100px;\">\n");
      out.write("                            <tr>\n");
      out.write("                                <th style=\"width: 150px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1;\"></th>\n");
      out.write("                                <th style=\"width: 150px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1;\">Name</th>\n");
      out.write("                                <th style=\"width: 250px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; \">Description</th>\n");
      out.write("                                <th style=\"width: 100px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; \">Price</th>\n");
      out.write("                                <th style=\"width: 100px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; \">Stock</th>\n");
      out.write("                                <th style=\"width: 100px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; \">Image1</th>\n");
      out.write("                                <th style=\"width: 100px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; \">Image2</th>\n");
      out.write("                                <th style=\"width: 100px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; \">Delete</th>\n");
      out.write("                               <th style=\"width: 100px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; \">Update</th>\n");
      out.write("                               <th style=\"width: 250px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; \">Upload Image</th>\n");
      out.write("                            </tr>\n");
      out.write("                            ");

                                rs=st.executeQuery("select *from product_detail where sub_cat_id='"+session.getAttribute("scat_id") +"' ");
                                while(rs.next())
                                {
                                    out.println("<tr>");
                                     out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;><img src=../image_product/"+rs.getString(6) +" width=50px height=50px></td>");
                                    out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;>"+rs.getString(2) +"</td>");
                                    out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;>"+rs.getString(3) +"</td>");
                                    out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;>"+rs.getString(4) +"</td>");
                                    out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;>"+rs.getString(5) +"</td>");
                                   out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;>"+rs.getString(6) +"</td>");
                                   out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;>"+rs.getString(7) +"</td>");
                                   out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;><a href=delete_pro.jsp?pid="+rs.getString(1) +">Delete</a></td>");
                                    out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;><a href=update_pro.jsp?pid="+rs.getString(1) +">Update</a></td>");
                                    out.println("<td style=text-align:center;border-bottom-style:solid;border-color:#000;color:#0280e1;height:30px;><a href=upload_product.jsp?up_id="+rs.getString(1) +">Upload Image</a></td>");
                                    out.println("</tr>");
                                }
                            
      out.write("\n");
      out.write("                        </table>\n");
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
