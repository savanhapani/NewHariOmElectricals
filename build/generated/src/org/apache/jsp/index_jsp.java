package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "include/css_data.jsp", out, false);
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "include/header1.jsp", out, false);
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "include/menu.jsp", out, false);
      out.write("\n");
      out.write("        <div class=\"banner\">\n");
      out.write("\t\t<div id=\"kb\" class=\"carousel kb_elastic animate_text kb_wrapper\" data-ride=\"carousel\" data-interval=\"6000\" data-pause=\"hover\">\n");
      out.write("\t\t\t<!-- Wrapper-for-Slides -->\n");
      out.write("            <div class=\"carousel-inner\" role=\"listbox\">  \n");
      out.write("                <div class=\"item active\"><!-- First-Slide -->\n");
      out.write("                    <img src=\"images/ac.jpg\" alt=\"\" class=\"img-responsive\" />\n");
      out.write("                    <div class=\"carousel-caption kb_caption kb_caption_right\">\n");
      out.write("                       \n");
      out.write("                    </div>\n");
      out.write("                </div>  \n");
      out.write("                <div class=\"item\"> <!-- Second-Slide -->\n");
      out.write("                    <img src=\"images/fen.jpg\" alt=\"\" class=\"img-responsive\" />\n");
      out.write("                    <div class=\"carousel-caption kb_caption kb_caption_right\">\n");
      out.write("                       \n");
      out.write("                    </div>\n");
      out.write("                </div> \n");
      out.write("                <div class=\"item\"><!-- Third-Slide -->\n");
      out.write("                    <img src=\"images/3.jpg\" alt=\"\" class=\"img-responsive\"/>\n");
      out.write("                    <div class=\"carousel-caption kb_caption kb_caption_center\">\n");
      out.write("                        \n");
      out.write("                    </div>\n");
      out.write("                </div> \n");
      out.write("            </div> \n");
      out.write("            <!-- Left-Button -->\n");
      out.write("            <a class=\"left carousel-control kb_control_left\" href=\"#kb\" role=\"button\" data-slide=\"prev\">\n");
      out.write("\t\t\t\t<span class=\"fa fa-angle-left kb_icons\" aria-hidden=\"true\"></span>\n");
      out.write("                <span class=\"sr-only\">Previous</span>\n");
      out.write("            </a> \n");
      out.write("            <!-- Right-Button -->\n");
      out.write("            <a class=\"right carousel-control kb_control_right\" href=\"#kb\" role=\"button\" data-slide=\"next\">\n");
      out.write("                <span class=\"fa fa-angle-right kb_icons\" aria-hidden=\"true\"></span>\n");
      out.write("                <span class=\"sr-only\">Next</span>\n");
      out.write("            </a> \n");
      out.write("        </div>\n");
      out.write("\t\t<script src=\"js/custom.js\"></script>\n");
      out.write("\t</div>\n");
      out.write("\n");
      out.write("        \n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "include/footer.jsp", out, false);
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "include/js_data.jsp", out, false);
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
