package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import br.bandejabr;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.PreparedStatement;
import dao.bd;
import java.sql.Connection;
import buscador.practica;
import dao.login;
import be.usuario;

public final class loginweb_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>Login</title>\r\n");
      out.write("        <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link href=\"css/estilo.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link href=\"//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css\" rel=\"stylesheet\" id=\"bootstrap-css\">\r\n");
      out.write("        <script src=\"//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js\"></script>\r\n");
      out.write("        <script src=\"//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <div class=\"wrapper fadeInDown\">\r\n");
      out.write("  <div id=\"formContent\">\r\n");
      out.write("    <!-- Tabs Titles -->\r\n");
      out.write("\r\n");
      out.write("    <!-- Icon -->\r\n");
      out.write("    <div class=\"fadeIn first\">\r\n");
      out.write("        <br>\r\n");
      out.write("        <img src=\"img\\Login.png\" id=\"icon\" alt=\"User Icon\"/>\r\n");
      out.write("        <br>\r\n");
      out.write("        <br>\r\n");
      out.write("      <h1>Corporación V'lirio</h1>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <!-- Login Form -->\r\n");
      out.write("    <form id=\"form1\">\r\n");
      out.write("      <input type=\"text\" id=\"login\" class=\"fadeIn second\" name=\"login\" placeholder=\"Usuario\">\r\n");
      out.write("      <input type=\"password\" id=\"password\" class=\"fadeIn third\" name=\"password\" placeholder=\"password\">\r\n");
      out.write("      <br>\r\n");
      out.write("      <br>\r\n");
      out.write("      <input type=\"submit\" name =\"Entrar\" value=\"Entrar\" class=\"fadeIn fourth\">\r\n");
      out.write("      <input type=\"button\" name =\"Inicio\" value=\"Inicio\" class=\"fadeIn fourth\" onclick=\"window.location='principal.jsp'\">\r\n");
      out.write("    </form>\r\n");
      out.write("  </div>\r\n");
      out.write("</div>\r\n");
      out.write("    </body>\r\n");
      out.write("    ");

            
            if(request.getParameter("Entrar") != null){
                String usuari = request.getParameter("login");
                String password = request.getParameter("password");
                int c=1;
                int d=2;
                usuario a = new usuario(usuari, null, null, password,c);
                usuario b = new usuario(usuari, null, null, password,d);
               // session.setAttribute("sus", a);
                int ingreso = new login().Ingresar2(a);
                int ingres2 = new login().Ingresar2(b);
                if(ingreso != 0) {
                    response.sendRedirect("principal2.jsp");
                    //usuario b = (usuario) session.getAttribute("sban");
                    session.setAttribute("us", usuari);
                    session.setAttribute("con", password);
                    //out.print("Binevenido");
                }
                else {
                    out.print("USUARIO INCORRECTO");
                }
                if(ingres2 != 0) {
                    response.sendRedirect("principal3.jsp");
                    //usuario b = (usuario) session.getAttribute("sban");
                    session.setAttribute("us", usuari);
                    session.setAttribute("con", password);
                    //out.print("Binevenido");
                }
                else {
                    out.print("USUARIO INCORRECTO");
                }
            }
            if(request.getParameter("cerrar")!=null){
                session.invalidate();
                }
        
      out.write("\r\n");
      out.write("</html>\r\n");
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
