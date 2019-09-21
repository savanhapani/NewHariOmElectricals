package org.apache.jsp.customer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class view_005fcart_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("      \n");
      out.write("    </head>\n");
      out.write("    <body>   ");

        
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
      out.write("        \n");
      out.write("        ");
      out.write("\n");
      out.write("        <div class=\"login-page\">\n");
      out.write("\t\t<div class=\"container\"> \n");
      out.write("\t\t\t<h3 class=\"w3ls-title w3ls-title1\">Your Cart...\n");
      out.write("                     </h3>  \n");
      out.write("\t\t");

                    Connection con=null;
                    long t_amount=0;
                                Statement st=null;
                                ResultSet rs=null;
                                
                                StringBuffer sbpname=null,sbrate=null,sbqty=null,sbpid=null;
                                sbpid=new StringBuffer();
                                sbpname=new StringBuffer();
                                sbqty=new StringBuffer();
                                sbrate=new StringBuffer();
                                try
                                {
                                  Class.forName("com.mysql.jdbc.Driver");   
                                    con=DriverManager.getConnection("jdbc:mysql://localhost/he","root","");
                                    st=con.createStatement();
                                }
                                catch(Exception e)
                                {
                                }
                                    
                
      out.write("\n");
      out.write("                    \n");
      out.write("                <div class=\"login-body\" style=\"width: 800px;\">\n");
      out.write("                            \n");
      out.write("                            <table style=\"border-color: #0280e1; border-style: solid;width: 700px;\">\n");
      out.write("                            <tr>\n");
      out.write("                                  \n");
      out.write("                                <th style=\"width: 250px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1;\">PRODUCT NAME</th>\n");
      out.write("                                <th style=\"width: 100px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; \">PRICE</th>\n");
      out.write("                                <th style=\"width: 100px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; \">QTY</th>\n");
      out.write("                                <th style=\"width: 100px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; \">AMOUNT</th>\n");
      out.write("                                <th style=\"width: 100px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; \">DELETE</th>\n");
      out.write("                            </tr>\n");
      out.write("                            ");

                            
                               rs=st.executeQuery("select product_detail.pro_name,product_detail.pro_price,add_to_cart.qty,add_to_cart.acid,add_to_cart.pid from product_detail,add_to_cart where product_detail.pro_id=add_to_cart.pid and add_to_cart.cid='"+session.getAttribute("cid") +"'");
                               while(rs.next())
                               {
                                   sbpname.append(rs.getString(1)+",");
                                   sbrate.append(rs.getString(2)+",");
                                   sbqty.append(rs.getString(3)+",");
                                   sbpid.append(rs.getString(5)+",");
                                   long amount=((Long.parseLong(rs.getString(2))) *(Long.parseLong(rs.getString(3))));
                                   t_amount=t_amount+amount;
                            
      out.write("\n");
      out.write("                            <tr>\n");
      out.write("                                <td style=\"width: 250px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1;\">");
      out.print( rs.getString(1));
      out.write("</td>\n");
      out.write("                                  <td style=\"width: 100px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; \">");
      out.print( rs.getString(2));
      out.write("</td>\n");
      out.write("                                <td style=\"width: 100px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; \">");
      out.print( rs.getString(3));
      out.write("</td>\n");
      out.write("                             <td style=\"width: 100px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; \">");
      out.print( amount);
      out.write("</td> \n");
      out.write("                             <td style=\"width: 100px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; \"><a href=delete_cart.jsp?acid=");
      out.print(rs.getString(4));
      out.write(">DELETE</a></td>\n");
      out.write("                            </tr>      \n");
      out.write("                           ");

                               }
                            
      out.write("\n");
      out.write("                             <tr>\n");
      out.write("                                 <th colspan=\"2\" style=\"width: 100px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; \">Total Amount</th>\n");
      out.write("                                 <td colspan=\"3\" style=\"font-weight:bold;width: 100px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; \">");
      out.print( t_amount);
      out.write("</td> \n");
      out.write("                            </tr>\n");
      out.write("                            </table>\n");
      out.write("                            \n");
      out.write("                            <br/>\n");
      out.write("                            <form action=\"\" method=\"post\">\n");
      out.write("\t\t\t\t\t\n");
      out.write("                                      \n");
      out.write("                                        <input type=\"submit\" value=\"Make Order\" name=\"b1\"/>\n");
      out.write("                            </form>\n");
      out.write("                             ");

                                String action=null;
                                action=request.getParameter("b1");
                                 //out.println("---"+action);
                                try
                                                                               {
                                if(action!=null)
                                {
                                    out.println("---"+action);
                                    if(action.equals("Make Order"))
                                    {
                                         
                                        session.setAttribute("sbpid", sbpid+"");
                                        session.setAttribute("sbpname", sbpname+"");
                                        session.setAttribute("sbqty", sbqty+"");
                                        session.setAttribute("sbrate", sbrate+"");
                                        session.setAttribute("sbtamount", t_amount+"");
                                        response.sendRedirect("order.jsp");
                                    //out.println("<script> alert('You Must Be Login'); doucment.location.href='order.jsp';</script>");
                                   }
                                }
                                                               }
                                catch(Exception e )
                                                                               {
                                    out.println("ex is:"+e);
                                }
                             
      out.write("\n");
      out.write("                           \n");
      out.write("                        </div>\n");
      out.write("                    \n");
      out.write("                    \n");
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
