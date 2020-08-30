package org.apache.jsp.controles;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import br.productobr;
import java.util.List;
import be.productobe;

public final class MosProductos_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
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

    String scat=request.getParameter("selcategoria");
    String sfab=request.getParameter("selfabricante");
    
    int cat=0;
    if(scat==null){
        cat=0;
    }else{
        cat=Integer.parseInt(scat);
    }
    int fab =0;
    if(sfab==null){
        fab=0;
    }else{
        fab=Integer.parseInt(sfab);
    }
productobr r = new productobr();
List<productobe> lista = r.listaProList(cat,fab);

      out.write("\n");
      out.write("<table class=\"table\">\n");
      out.write("    <thead class=\"thead-light\">\n");
      out.write("        <tr>\n");
      out.write("            <th>Producto</th>\n");
      out.write("            <th></th>\n");
      out.write("        </tr>\n");
      out.write("    </thead>\n");
      out.write("    <tbody>\n");
      out.write("        ");
 for(productobe e:lista){
            
      out.write("\n");
      out.write("            <tr>\n");
      out.write("                <td>");
      out.print(e.getCodigo());
      out.write("\n");
      out.write("                    <br>");
      out.print(e.getNombre());
      out.write("<br>");
      out.print(e.getPrecio());
      out.write("</td>\n");
      out.write("                <td><input type=\"button\" class=\"btn btn-primary\" data-toggle=\"button\" aria-pressed=\"false\" autocomplete=\"off\" value=\"Agregar\" onclick='Agregar(\"");
      out.print(e.getCodigo());
      out.write("\",\"");
      out.print(e.getNombre());
      out.write('"');
      out.write(',');
      out.print(e.getPrecio());
      out.write(")'></td>\n");
      out.write("             \n");
      out.write("            </tr>\n");
      out.write("        ");

        }
        
      out.write("\n");
      out.write("    </tbody>\n");
      out.write("</table>");
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
