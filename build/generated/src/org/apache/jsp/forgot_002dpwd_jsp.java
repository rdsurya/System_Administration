package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import dBConn.Conn;
import Config.Config;

public final class forgot_002dpwd_jsp extends org.apache.jasper.runtime.HttpJspBase
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

    Config.getBase_url(request);
    Config.getFile_url(session);
    Conn conn = new Conn();
    //out.print(conn.getIpCall());

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("\n");
      out.write("        \n");
      out.write("        <!-- header -->\n");
      out.write("    <div w3-include-html=\"libraries/header.html\"></div>\n");
      out.write("    <link href=\"assets/css/login.css\" rel=\"stylesheet\">\n");
      out.write("    <!-- header -->\n");
      out.write("</head> \n");
      out.write("<body>\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <div class=\"card card-container\">\n");
      out.write("            <!-- <img class=\"profile-img-card\" src=\"//lh3.googleusercontent.com/-6V8xOA6M7BA/AAAAAAAAAAI/AAAAAAAAAAA/rzlHcD0KYwo/photo.jpg?sz=120\" alt=\"\" /> -->\n");
      out.write("            <div class=\"profile-img-card\">\n");
      out.write("                <i class=\"fa fa-user-md\" aria-hidden=\"true\" style=\"color: #666; font-size: 100px;\"></i>\n");
      out.write("            </div>\n");
      out.write("            <h2 style=\"text-align: center;\">eMedica</h2>\n");
      out.write("            <p id=\"profile-name\" class=\"profile-name-card\">Clinical Support System</p>\n");
      out.write("            <form class=\"form-signin\" id=\"leForm\" >\n");
      out.write("                <span id=\"reauth-email\" class=\"reauth-email\"></span>\n");
      out.write("                <input type=\"text\" id=\"inputUserID\" class=\"form-control\" placeholder=\"User ID\" name=\"username\" required autofocus>\n");
      out.write("                <input type=\"password\" id=\"inputPassword\" class=\"form-control\" placeholder=\"Password\" name=\"password\" required>\n");
      out.write("<!--                <div id=\"remember\" class=\"checkbox\">\n");
      out.write("                    <label>\n");
      out.write("                        <input type=\"checkbox\" value=\"remember-me\"> Remember me\n");
      out.write("                    </label>\n");
      out.write("                </div>-->\n");
      out.write("\n");
      out.write("            </form><!-- /form -->\n");
      out.write("            <button class=\"btn btn-lg btn-primary btn-block btn-signin\" id=\"btnSign\">Sign in</button>\n");
      out.write("            <a href=\"forgot-pwd.jsp\" class=\"forgot-password\">\n");
      out.write("                Forgot the password?\n");
      out.write("            </a>\n");
      out.write("        </div><!-- /card-container -->\n");
      out.write("    </div><!-- /container -->\n");
      out.write("\n");
      out.write("\n");
      out.write("    <!-- Bootstrap core JavaScript\n");
      out.write("    ================================================== -->\n");
      out.write("    <!-- Placed at the end of the document so the pages load faster -->\n");
      out.write("\n");
      out.write("    <div w3-include-html=\"libraries/script.html\"></div>\n");
      out.write("    <!--<script src=\"Dashboard_files\\jquery.min.js.download\"></script>\n");
      out.write("    <script src=\"http://www.w3schools.com/lib/w3data.js\"></script>-->\n");
      out.write("    \n");
      out.write("    <script src=\"assets/js/jquery-3.1.1.min.js\" type=\"text/javascript\"></script>\n");
      out.write("    <script src=\"assets/js/w3data.js\" type=\"text/javascript\"></script>\n");
      out.write("    <script>\n");
      out.write("        w3IncludeHTML();\n");
      out.write("        $(document).ready(function () {\n");
      out.write("\n");
      out.write("            $(document).bind('keypress', pressed);\n");
      out.write("        });\n");
      out.write("\n");
      out.write("        function pressed(e)\n");
      out.write("        {\n");
      out.write("            if (e.keyCode === 13)\n");
      out.write("            {\n");
      out.write("                //alert('enter pressed');\n");
      out.write("                login();\n");
      out.write("                //put button.click() here\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        $('#btnSign').on('click', function () {\n");
      out.write("\n");
      out.write("            login();\n");
      out.write("\n");
      out.write("        });\n");
      out.write("\n");
      out.write("        function login() {\n");
      out.write("\n");
      out.write("            var userID = $(\"#inputUserID\").val();\n");
      out.write("            var password = $(\"#inputPassword\").val();\n");
      out.write("\n");
      out.write("            if (userID === \"\") {\n");
      out.write("                alert(\"Fill in the User ID\");\n");
      out.write("                $(\"#inputUserID\").focus();\n");
      out.write("            } else if (password === \"\") {\n");
      out.write("                alert(\"Fill in the password\");\n");
      out.write("                $(\"#inputPassword\").focus();\n");
      out.write("            } else {\n");
      out.write("\n");
      out.write("                $.ajax({\n");
      out.write("                    url: \"login_process2.jsp\",\n");
      out.write("                    type: \"post\",\n");
      out.write("                    data: {userID: userID,\n");
      out.write("                        password: password\n");
      out.write("                    },\n");
      out.write("                    timeout: 3000,\n");
      out.write("                    success: function (data) {\n");
      out.write("                        var num = parseInt(data);\n");
      out.write("\n");
      out.write("                        if (num === 2)\n");
      out.write("                            window.location = \"facility.jsp\";\n");
      out.write("                        else if (num === 1)\n");
      out.write("                            alert(\"Wrong password\");\n");
      out.write("                        else if (num === 0)\n");
      out.write("                            alert(\"User ID does not exist\");\n");
      out.write("                        else if (num === 3)\n");
      out.write("                            alert(\"You don't have proper user access. Contact your admin to configure your user access\");\n");
      out.write("                        else \n");
      out.write("                            alert(\"Error\");\n");
      out.write("                    },\n");
      out.write("                    error: function (err) {\n");
      out.write("                        alert(\"error :\" + err.toString());\n");
      out.write("                    }\n");
      out.write("\n");
      out.write("                });\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("    </script>\n");
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
