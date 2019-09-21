<%-- 
    Document   : feedback
    Created on : Dec 7, 2017, 6:05:37 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page buffer="100kb" autoFlush="true" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      
    </head>
    <body>   <%
        
            if(session.getAttribute("cid")==null)
            {
                out.println("<script> alert('You Must Be Login'); document.location.href='../login.jsp';</script>");
            }
        %>
       
         <jsp:include page="../customer/include/css_data.jsp"></jsp:include>
        <jsp:include page="../customer/include/header1.jsp"></jsp:include>
        
        <%--<jsp:include page="include/menu.jsp"></jsp:include>--%>
        <div class="login-page">
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">Your Cart...
                     </h3>  
		<%
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
                                    
                %>
                    
                <div class="login-body" style="width: 800px;">
                            
                            <table style="border-color: #0280e1; border-style: solid;width: 700px;">
                            <tr>
                                  
                                <th style="width: 250px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1;">PRODUCT NAME</th>
                                <th style="width: 100px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; ">PRICE</th>
                                <th style="width: 100px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; ">QTY</th>
                                <th style="width: 100px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; ">AMOUNT</th>
                                <th style="width: 100px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; ">DELETE</th>
                            </tr>
                            <%
                            
                               rs=st.executeQuery("select product_detail.pro_name,product_detail.pro_price,add_to_cart.qty,add_to_cart.acid,add_to_cart.pid from product_detail,add_to_cart where product_detail.pro_id=add_to_cart.pid and add_to_cart.cid='"+session.getAttribute("cid") +"'");
                               while(rs.next())
                               {
                                   sbpname.append(rs.getString(1)+",");
                                   sbrate.append(rs.getString(2)+",");
                                   sbqty.append(rs.getString(3)+",");
                                   sbpid.append(rs.getString(5)+",");
                                   long amount=((Long.parseLong(rs.getString(2))) *(Long.parseLong(rs.getString(3))));
                                   t_amount=t_amount+amount;
                            %>
                            <tr>
                                <td style="width: 250px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1;"><%= rs.getString(1)%></td>
                                  <td style="width: 100px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; "><%= rs.getString(2)%></td>
                                <td style="width: 100px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; "><%= rs.getString(3)%></td>
                             <td style="width: 100px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; "><%= amount%></td> 
                             <td style="width: 100px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; "><a href=delete_cart.jsp?acid=<%=rs.getString(4)%>>DELETE</a></td>
                            </tr>      
                           <%
                               }
                            %>
                             <tr>
                                 <th colspan="2" style="width: 100px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; ">Total Amount</th>
                                 <td colspan="3" style="font-weight:bold;width: 100px;text-align: center; height: 40px; border-bottom-style: solid;border-color: #0280e1; "><%= t_amount%></td> 
                            </tr>
                            </table>
                            
                            <br/>
                            <form action="" method="post">
					
                                      
                                        <input type="submit" value="Make Order" name="b1"/>
                            </form>
                             <%
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
                             %>
                           
                        </div>
                    
                    
                            
                </div>
        </div>
                <jsp:include page="../customer/include/footer.jsp"></jsp:include>
        <jsp:include page="../customer/include/js_data.jsp"></jsp:include>                       
    </body>
</html>
