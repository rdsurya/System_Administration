package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import java.sql.*;
import dBConn.Conn;
import Config.Config;
import main.RMIConnector;

public final class profile_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/SystemAdmin/validateSession.jsp");
  }

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
      out.write("\n");
      out.write("\n");
      out.write("\n");
 if (session.getAttribute("USER_ID") == null) {
        response.sendRedirect("../index.jsp");
    }
      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <!-- header -->\n");
      out.write("    <div w3-include-html=\"libraries/header.html\"></div>\n");
      out.write("    <!--<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js\"></script>-->\n");
      out.write("    <link rel=\"stylesheet\" href=\"//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css\">\n");
      out.write("   \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    <!-- header -->\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    <!-- menu top -->\n");
      out.write("    <div w3-include-html=\"libraries/topMenus.jsp\"></div>\n");
      out.write("    <!-- menu top -->\n");
      out.write("\n");
      out.write("    <div class=\"container-fluid\">\n");
      out.write("        <div class=\"row\">       \n");
      out.write("            <!-- menu side -->\t\t\n");
      out.write("<!--            <div w3-include-html=\"libraries/sideMenus.jsp\"></div>-->\n");
      out.write("            <!-- menu side -->\t\n");
      out.write("\n");
      out.write("            <!-- main -->\t\n");
      out.write("\n");
      out.write("            <div class=\"col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main\" style=\"background: #f2f4f8;\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-12\">\n");
      out.write("                        <div class=\"thumbnail\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                            <!-- Tab Menu -->\n");
      out.write("                        \n");
      out.write("                            <div class=\"tabbable-panel\">\n");
      out.write("                                <h1>User Administration Maintenance</h1>\n");
      out.write("                                <div class=\"tabbable-line\">\n");
      out.write("                                    <ul class=\"nav nav-tabs \">\n");
      out.write("                                        <li class=\"active\">\n");
      out.write("                                            <a href=\"#UAM_tab1\" data-toggle=\"tab\">\n");
      out.write("                                                USER </a>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li>\n");
      out.write("                                            <a href=\"#UAM_tab2\" data-toggle=\"tab\">\n");
      out.write("                                                ROLE </a>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li>\n");
      out.write("                                            <a href=\"#UAM_tab3\" data-toggle=\"tab\">\n");
      out.write("                                                ASSIGN ROLE TO USER </a>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li>\n");
      out.write("                                            <a href=\"#UAM_tab4\" data-toggle=\"tab\">\n");
      out.write("                                                ASSIGN RESPONSIBILITY TO ROLE </a>\n");
      out.write("                                        </li>\n");
      out.write("\n");
      out.write("                                    </ul>\n");
      out.write("                                    <!-- tab content -->\n");
      out.write("                                    <div class=\"tab-content\">\n");
      out.write("                                        <div class=\"tab-pane active\" id=\"UAM_tab1\">\n");
      out.write("\n");
      out.write("                                            <div id=\"user\">\n");
      out.write("\n");
      out.write("                                                <div id=\"userMain\">\n");
      out.write("                                                </div>\n");
      out.write("                                                <div id=\"userTable\">\n");
      out.write("                                                </div>\n");
      out.write("\n");
      out.write("                                            </div>\n");
      out.write("\n");
      out.write("                                        </div>\n");
      out.write("                                       <div class=\"tab-pane\" id=\"UAM_tab2\">\n");
      out.write("\n");
      out.write("                                            <div id=\"role\">\n");
      out.write("                                                <div id=\"roleMain\">\n");
      out.write("                                                </div>\n");
      out.write("                                                <div id=\"roleTable\">\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"tab-pane\" id=\"UAM_tab3\">\n");
      out.write("\n");
      out.write("                                            <div id=\"accessrole\">\n");
      out.write("                                                <div id=\"accessRoleMain\">\n");
      out.write("                                                </div>\n");
      out.write("                                                <div id=\"accessRoleTable\">\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"tab-pane\" id=\"UAM_tab4\">\n");
      out.write("\n");
      out.write("                                            <div id=\"responsibility\">\n");
      out.write("                                                <div id=\"responsibilityMain\">\n");
      out.write("                                                </div>\n");
      out.write("                                                <div id=\"responsibilityTable\">\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("\n");
      out.write("                                        </div>\n");
      out.write("\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <!-- Tab Menu -->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <!-- main -->\t\t\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    <!-- Bootstrap core JavaScript\n");
      out.write("    ================================================== -->\n");
      out.write("    <!-- Placed at the end of the document so the pages load faster -->\n");
      out.write("    <!-- Bootstrap core JavaScript\n");
      out.write("    ================================================== -->\n");
      out.write("    <!-- Placed at the end of the document so the pages load faster -->\n");
      out.write("    <!--<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js\"></script>-->\n");
      out.write("    <script src=\"libraries/jquery-3.1.1.min.js\" type=\"text/javascript\"></script>\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-1.12.4.js\"></script>\n");
      out.write("    <script src=\"https://code.jquery.com/ui/1.12.1/jquery-ui.js\"></script>\n");
      out.write("    <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("    <!--<script src=\"http://www.w3schools.com/lib/w3data.js\"></script>-->\n");
      out.write("    <script src=\"libraries/w3data.js\" type=\"text/javascript\"></script>\n");
      out.write("    <script src=\"bootstrap-3.3.6-dist/js/jquery.dataTables.min.js\"></script>\n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/bootbox.js/4.4.0/bootbox.min.js\"></script>\n");
      out.write("    <script src=\"bootstrap-3.3.6-dist/js/jquery.dataTables.min.js\"></script>\n");
      out.write("    <script src=\"bootstrap-3.3.6-dist/js/dataTables.bootstrap.min.js\" type=\"text/javascript\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <script>\n");
      out.write("        w3IncludeHTML();\n");
      out.write("\n");
      out.write("        $(document).ready(function () {\n");
      out.write("            \n");
      out.write("            $(\"#userMain\").load(\"user_main.jsp\");\n");
      out.write("            $(\"#userTable\").load(\"user_table.jsp\");\n");
      out.write("            \n");
      out.write("            $(\"#roleMain\").load(\"role_main.jsp\");\n");
      out.write("            $(\"#roleTable\").load(\"role_table.jsp\");\n");
      out.write("            \n");
      out.write("            $(\"#accessRoleMain\").load(\"accessRole_main.jsp\");\n");
      out.write("            $(\"#accessRoleTable\").load(\"accessRole_table.jsp\");\n");
      out.write("            \n");
      out.write("            $(\"#responsibilityMain\").load(\"responsibility_main.jsp\");\n");
      out.write("            $(\"#responsibilityTable\").load(\"responsibility_table.jsp\");\n");
      out.write("                \n");
      out.write("           \n");
      out.write("        });\n");
      out.write("\n");
      out.write("    </script>\n");
      out.write("\n");
      out.write("</body>\n");
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
