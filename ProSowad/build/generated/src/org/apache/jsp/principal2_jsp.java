package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import br.bandejabr;
import be.usuario;

public final class principal2_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/admin.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <script src=\"jquery.js\" type=\"text/javascript\"></script>\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "controles/Navegador2.jsp", out, false);
      out.write("\n");
      out.write("        <div align=\"center\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("         <div class=\"col-lg-12\">\n");
      out.write("          <div\n");
      out.write("            id=\"carouselExampleIndicators\"\n");
      out.write("            class=\"carousel slide my-4\"\n");
      out.write("            data-ride=\"carousel\"\n");
      out.write("          >\n");
      out.write("            <ol class=\"carousel-indicators\">\n");
      out.write("              <li\n");
      out.write("                data-target=\"#carouselExampleIndicators\"\n");
      out.write("                data-slide-to=\"0\"\n");
      out.write("                class=\"active\"\n");
      out.write("              ></li>\n");
      out.write("              <li\n");
      out.write("                data-target=\"#carouselExampleIndicators\"\n");
      out.write("                data-slide-to=\"1\"\n");
      out.write("              ></li>\n");
      out.write("              <li\n");
      out.write("                data-target=\"#carouselExampleIndicators\"\n");
      out.write("                data-slide-to=\"2\"\n");
      out.write("              ></li>\n");
      out.write("              <li\n");
      out.write("                data-target=\"#carouselExampleIndicators\"\n");
      out.write("                data-slide-to=\"3\"\n");
      out.write("              ></li>\n");
      out.write("            </ol>\n");
      out.write("            <div class=\"carousel-inner\" role=\"listbox\">\n");
      out.write("              <div class=\"carousel-item active\">\n");
      out.write("                <img\n");
      out.write("                  class=\"d-block img-fluid\"\n");
      out.write("                  src=\"img\\bn1.png\"\n");
      out.write("                  alt=\"First slide\"\n");
      out.write("                />\n");
      out.write("              </div>\n");
      out.write("              <div class=\"carousel-item\">\n");
      out.write("                <img\n");
      out.write("                  class=\"d-block img-fluid\"\n");
      out.write("                  src=\"img\\b7.png\"\n");
      out.write("                  alt=\"Second slide\"\n");
      out.write("                />\n");
      out.write("              </div>\n");
      out.write("              <div class=\"carousel-item\">\n");
      out.write("                <img\n");
      out.write("                  class=\"d-block img-fluid\"\n");
      out.write("                  src=\"img\\bn4.png\"\n");
      out.write("                  alt=\"Third slide\"\n");
      out.write("                />\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("            <a\n");
      out.write("              class=\"carousel-control-prev\"\n");
      out.write("              href=\"#carouselExampleIndicators\"\n");
      out.write("              role=\"button\"\n");
      out.write("              data-slide=\"prev\"\n");
      out.write("            >\n");
      out.write("              <span\n");
      out.write("                class=\"carousel-control-prev-icon\"\n");
      out.write("                aria-hidden=\"true\"\n");
      out.write("              ></span>\n");
      out.write("              <span class=\"sr-only\">Previous</span>\n");
      out.write("            </a>\n");
      out.write("            <a\n");
      out.write("              class=\"carousel-control-next\"\n");
      out.write("              href=\"#carouselExampleIndicators\"\n");
      out.write("              role=\"button\"\n");
      out.write("              data-slide=\"next\"\n");
      out.write("            >\n");
      out.write("              <span\n");
      out.write("                class=\"carousel-control-next-icon\"\n");
      out.write("                aria-hidden=\"true\"\n");
      out.write("              ></span>\n");
      out.write("              <span class=\"sr-only\">Next</span>\n");
      out.write("            </a>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("        </div>\n");
      out.write("          </div>\n");
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
