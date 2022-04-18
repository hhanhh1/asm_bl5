package org.apache.jsp.login;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"cssLogin.css\">\n");
      out.write("        <script src=\"https://kit.fontawesome.com/d57e3d8d33.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <!--<form action=\"/Signup\" method=\"post\">-->\n");
      out.write("            <div class=\"container\">\n");
      out.write("        <i class=\"fa-solid fa-lock-keyhole\"></i>\n");
      out.write("\n");
      out.write("        <div class=\"sub1-container\">\n");
      out.write("            <img src=\"/login/plumefit.png\" alt=\"\">\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"sub2-container\">\n");
      out.write("            <div class=\"login\">\n");
      out.write("                <div class=\"imgLogo\">\n");
      out.write("                    <img src=\"plumefit.png\" alt=\"\">                  \n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                <div class=\"sublogin\">\n");
      out.write("                    <form action=\"\" method=\"\">\n");
      out.write("                        <td>                  \n");
      out.write("                            <h2 class=\"fas fa-sign-in-alt h\"> Login</h2>\n");
      out.write("                        </td>\n");
      out.write("                        <hr class=\"hr\">\n");
      out.write("                        <div class=\"iconInText\">\n");
      out.write("                            <td><input class=\"sub-text\" placeholder=\" Username\" type=\"text\" name=\"\" id=\"\"></td>\n");
      out.write("                            <i class=\"fas fa-user\"></i>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"iconInText\">\n");
      out.write("                            <td><input class=\"sub-text\" placeholder=\" Password\" type=\"password\" name=\"\" id=\"\"></td>\n");
      out.write("                            <i class=\"fas fa-lock\"></i>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"but\">\n");
      out.write("                            <td>\n");
      out.write("                                <p class=\"create\">Create an account</p>\n");
      out.write("                            </td>\n");
      out.write("                            <td><input class=\"sub-but\" type=\"submit\" name=\"\" id=\"log\" value=\"Login\"></td>\n");
      out.write("\n");
      out.write("                            <!-- <td><input class=\"sub-but\" type=\"submit\" name=\"\" id=\"res\" value=\"Registration\"></td> -->\n");
      out.write("                        </div>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("        <!--</form>-->\n");
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
