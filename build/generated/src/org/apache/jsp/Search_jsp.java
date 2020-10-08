package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class Search_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("    <title>Search</title>\r\n");
      out.write("    <!-- Required meta tags -->\r\n");
      out.write("    <meta charset=\"utf-8\" />\r\n");
      out.write("    <script src=\"https://kit.fontawesome.com/47101d2035.js\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\" />\r\n");
      out.write("\r\n");
      out.write("    <!-- Bootstrap CSS -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/main.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<style>\r\n");
      out.write("    * {\r\n");
      out.write("  box-sizing: border-box;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("body {\r\n");
      out.write("  font-family: Arial, Helvetica, sans-serif;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/* Float four columns side by side */\r\n");
      out.write(".column {\r\n");
      out.write("  float: left;\r\n");
      out.write("  width: 25%;\r\n");
      out.write("  padding: 0 10px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/* Remove extra left and right margins, due to padding in columns */\r\n");
      out.write(".row {margin: 0 -5px;}\r\n");
      out.write("\r\n");
      out.write("/* Clear floats after the columns */\r\n");
      out.write(".row:after {\r\n");
      out.write("  content: \"\";\r\n");
      out.write("  display: table;\r\n");
      out.write("  clear: both;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/* Style the counter cards */\r\n");
      out.write(".card {\r\n");
      out.write("  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2); /* this adds the \"card\" effect */\r\n");
      out.write("  padding: 16px;\r\n");
      out.write("  text-align: center;\r\n");
      out.write("  background-color: #f1f1f1;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/* Responsive columns - one column layout (vertical) on small screens */\r\n");
      out.write("@media screen and (max-width: 600px) {\r\n");
      out.write("  .column {\r\n");
      out.write("    width: 100%;\r\n");
      out.write("    display: block;\r\n");
      out.write("    margin-bottom: 20px;\r\n");
      out.write("  }\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("    <header class=\"site-header\">\r\n");
      out.write("        <nav class=\"navbar justify-content-center navbar-expand-md navbar-dark bg-primary fixed-top\">\r\n");
      out.write("            <div class=\"container\">\r\n");
      out.write("                <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarToggle\"\r\n");
      out.write("                    aria-controls=\"navbarToggle\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n");
      out.write("                    <span class=\"navbar-toggler-icon\"></span>\r\n");
      out.write("                </button>\r\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"navbarToggle\">\r\n");
      out.write("                    <!-- Navbr left Side -->\r\n");
      out.write("                    <div class=\"navbar-nav mr-auto\">\r\n");
      out.write("                        <a class=\"nav-item nav-link\" href=\"AfterLogin.jsp\">Why Donate Blood?</a>\r\n");
      out.write("                        <a class=\"nav-item nav-link\" href=\"AfterLogin.jsp#know\">Know and Learn</a>\r\n");
      out.write("                        <a class=\"nav-item nav-link\" href=\"AfterLogin.jsp#canidonate\">Can I donate?</a>\r\n");
      out.write("                        <a class=\"nav-item nav-link\" href=\"AfterLogin.jsp#about\">About Us</a>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <!-- Navbar Right Side -->\r\n");
      out.write("                    <div class=\"navbar-nav\">\r\n");
      out.write("                        <a class=\"nav-item nav-link\" href=\"RecipientForm.jsp\">I need blood!</a>\r\n");
      out.write("                        <a class=\"nav-item nav-link\" href=\"DonourForm.jsp\">I want to donate!</a>\r\n");
      out.write("                        <a class=\"nav-item nav-link\" href=\"index.jsp\">Log-out</a>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </nav>\r\n");
      out.write("    </header>\r\n");
      out.write("   \r\n");
      out.write("        \r\n");
      out.write("    <section class=\"searchbar\">\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("            <h1 class=\"mb-3 heading\"><i class=\"fas fa-search\"></i> Search for Donors or Recipients:</h1>\r\n");
      out.write("            <form>\r\n");
      out.write("            <div class=\"row no-gutters\">\r\n");
      out.write("                <div class=\"form-group col-4\">\r\n");
      out.write("                    <label for=\"phone\">City:</label>\r\n");
      out.write("                    <input type=\"text\" class=\"form-control\" name=\"city\" required />\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"form-group col-4\">\r\n");
      out.write("                    <label>Blood Type: </label>\r\n");
      out.write("\r\n");
      out.write("                    <select class=\"form-control\" id=\"bloodtype\" name=\"blood\">\r\n");
      out.write("<!--                        <option value=\"\">I need...</option>-->\r\n");
      out.write("                        <option value=\"A Positive\">A+</option>\r\n");
      out.write("                        <option value=\"O Positive\">O+</option>\r\n");
      out.write("                        <option value=\"B Positive\">B+</option>\r\n");
      out.write("                        <option value=\"AB Positive\">AB+</option>\r\n");
      out.write("                        <option value=\"A Negetive\">A-</option>\r\n");
      out.write("                        <option value=\"O Negetive\">O-</option>\r\n");
      out.write("                        <option value=\"B Negetive\">B-</option>\r\n");
      out.write("                        <option value=\"AB Negetive\">AB-</option>\r\n");
      out.write("                    </select>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"form-group col-4\">\r\n");
      out.write("                    <label>Volunteer type: </label>\r\n");
      out.write("\r\n");
      out.write("                    <select class=\"form-control\" id=\"require\" name=\"require\">\r\n");
      out.write("                        <option value=\"\">I need...</option>\r\n");
      out.write("                        <option value=\"1\">Donor</option>\r\n");
      out.write("                        <option value=\"2\">Recipient</option>\r\n");
      out.write("                    </select>\r\n");
      out.write("                </div>\r\n");
      out.write("                \r\n");
      out.write("            </div>\r\n");
      out.write("       \r\n");
      out.write("                    <div class=\"text-center\">\r\n");
      out.write("        <input class=\"btn btn-primary mb-3\" type=\"submit\" value=\"Search\">\r\n");
      out.write("           </div>\r\n");
      out.write("                 </form>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("\r\n");
      out.write("    </section>\r\n");
      out.write("    \r\n");
      out.write("        ");

          try
          {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/blood_bank","blood", "blood");
                String city = request.getParameter("city");
               if (city!=null)
            {
            String blood = request.getParameter("blood");
            String require = request.getParameter("require");
            
                if(require.equals("1"))
                {
                    Statement st= conn.createStatement();
                    String sql="Select * from donorform WHERE `city`='"+city+"' AND `D_bloodgroup`='"+blood+"'";
                    ResultSet rs=st.executeQuery(sql);
             
                                 out.println("<table class='col-8 table table-hover' align=center>");
                    out.println("<thead class='thead-dark'>");        
                    out.print("<tr>");
                    out.print("<th scope='col'>Name</th> <th scope='col'>Mobile</th> <th scope='col'>Blood Group</th> <th scope='col'>Age</th> <th scope='col'>Address</th>");
                    out.print("</tr>");       
                    out.print("</thead>");
                    out.println("<tbody>");


                     while(rs.next())
                     {
                    String name=String.valueOf(rs.getString(1));
                    String mobile=rs.getString(2);
                    String D_bloodgroup=rs.getString(3);
                    String age=rs.getString(5);
                    String address=rs.getString(7);
                    
                    out.print("<tr>");
                    out.print("<th scope='col'>"+name+"</th> <td>"+mobile+"</td> <td>"+blood+"</td> <td>"+age+"</td> <td>"+address+"</td>");
                    out.print("</tr>");
 
                 }

             
                                         out.print("</tbody></table>");
            }
            
            else if(require.equals("2"))
            {
                Statement st= conn.createStatement();
                String sql="Select * from r_cipient WHERE `city`='"+city+"' AND `R_bloodgroup`='"+blood+"'";
             ResultSet rs=st.executeQuery(sql);
             
             out.println("<table class='col-8 table table-hover' align=center>");
                    out.println("<thead class='thead-dark'>");        
                    out.print("<tr>");
                    out.print("<th scope='col'>Name</th> <th scope='col'>Mobile</th> <th scope='col'>Blood Group</th> <th scope='col'>Age</th> <th scope='col'>Address</th>");
                    out.print("</tr>");       
                    out.print("</thead>");
                    out.println("<tbody>");
             
 
                     while(rs.next())
                     {
                    String name=String.valueOf(rs.getString(1));
                    String mobile=rs.getString(2);
                    String D_bloodgroup=rs.getString(3);
                    String age=rs.getString(5);
                    String address=rs.getString(7);
                    
                    out.print("<tr>");
                    out.print("<th scope='col'>"+name+"</th> <td>"+mobile+"</td> <td>"+blood+"</td> <td>"+age+"</td> <td>"+address+"</td>");
                    out.print("</tr>");
 
                 }

                    out.print("</tbody></table>");
            }

            }   
        }
          catch(Exception e)
          {
            out.println(e);
          }
             
        
      out.write("\r\n");
      out.write("    \r\n");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>");
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
