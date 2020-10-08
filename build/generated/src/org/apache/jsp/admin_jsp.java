package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.sql.*;

public final class admin_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Admin Page</title>\n");
      out.write("            <meta charset=\"utf-8\" />\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\" />\n");
      out.write("\n");
      out.write("    <script src=\"https://kit.fontawesome.com/47101d2035.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/main.css\">\n");
      out.write("   \n");
      out.write("</head>\n");
      out.write("<style>\n");
      out.write("    * {\n");
      out.write("  box-sizing: border-box;\n");
      out.write("}\n");
      out.write("\n");
      out.write("body {\n");
      out.write("  font-family: Arial, Helvetica, sans-serif;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Float four columns side by side */\n");
      out.write(".column {\n");
      out.write("  float: left;\n");
      out.write("  width: 25%;\n");
      out.write("  padding: 0 10px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Remove extra left and right margins, due to padding in columns */\n");
      out.write(".row {margin: 0 -5px;}\n");
      out.write("\n");
      out.write("/* Clear floats after the columns */\n");
      out.write(".row:after {\n");
      out.write("  content: \"\";\n");
      out.write("  display: table;\n");
      out.write("  clear: both;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Style the counter cards */\n");
      out.write(".card {\n");
      out.write("  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2); /* this adds the \"card\" effect */\n");
      out.write("  padding: 16px;\n");
      out.write("  text-align: center;\n");
      out.write("  background-color: #f1f1f1;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Responsive columns - one column layout (vertical) on small screens */\n");
      out.write("@media screen and (max-width: 600px) {\n");
      out.write("  .column {\n");
      out.write("    width: 100%;\n");
      out.write("    display: block;\n");
      out.write("    margin-bottom: 20px;\n");
      out.write("  }\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("<body\n");
      out.write("\n");
      out.write("    <header class=\"site-header\">\n");
      out.write("        <nav class=\"navbar justify-content-center navbar-expand-md navbar-dark bg-primary fixed-top\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarToggle\"\n");
      out.write("                    aria-controls=\"navbarToggle\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                            <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("                </button>\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"navbarToggle\">\n");
      out.write("                    \n");
      out.write("                          <!-- Navbr left Side -->\n");
      out.write("                          \n");
      out.write("                     <div class=\"navbar-nav mr-auto\">\n");
      out.write("                     <a class=\"nav-item nav-link\" href=\"#why\">Hi   Admin  !</a>\n");
      out.write("               </div>\n");
      out.write("             \n");
      out.write("                          <!-- Navbar Right Side -->\n");
      out.write("                          \n");
      out.write("               <div class=\"navbar-nav\">\n");
      out.write("                        <a class=\"nav-item nav-link\" href=\"#donor\">Donor</a>\n");
      out.write("                        <a class=\"nav-item nav-link\" href=\"#recipient\">Recipient</a>\n");
      out.write("                        <a class=\"nav-item nav-link\" href=\"index.jsp\">Logout</a>\n");
      out.write("                </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("    </header>\n");
      out.write("    \n");
      out.write("    <br><br><br><br>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    <! ----donor table----!>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("<section id=\"donor\">\n");
      out.write("     <table class=\"col-12 table table-hover\">\n");
      out.write("              <thead class=\"thead-dark\">\n");
      out.write("                   <div class=\"text-center\">\n");
      out.write("                       <h1>Recipient</h1>\n");
      out.write("                    \n");
      out.write("                       ");

                      try {
                               Class.forName("com.mysql.jdbc.Driver");
                               Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/blood_bank","blood", "blood");          
                               Statement st= conn.createStatement();
                               String sql="Select * from donorform";
                               ResultSet rs=st.executeQuery(sql);
                               out.println("<table class='col-8 table table-hover' align=center>");
                               out.println("<thead class='thead-dark'>");        
                               out.print("<tr>");
                               out.print("<th scope='col'>Name</th> <th scope='col'>Mobile</th> <th scope='col'>Blood Group</th><th>DOB</th>  <th scope='col'>Age</th><th></th> <th scope='col'>City</th> <th scope='col'>Address</th> <th scope='col'>Send Msg</th> <th scope='col'>Delete</th>");
                               out.print("</tr>");       
                               out.print("</thead>");
                               out.println("<tbody>");
              
                               while(rs.next()) {
                                          String name=String.valueOf(rs.getString(1));
                                          String mobile=rs.getString(2);
                                          String D_bloodgroup=rs.getString(3);
                                          String dob =rs.getString(4);
                                          String age=rs.getString(5);
                                          String city=rs.getString(6);
                                          String address=rs.getString(7);
                                           out.print("<tr>");
                                          out.print("<th scope='col'>"+name+"</th> <td>"+mobile+"</td> <td>"+D_bloodgroup+"</td><td>"+dob+"</td><td>"+"</td> <td>"+age+"</td> <td>"+"</td> <td>"+city+"</td> <td>"+address+"</td><td><a href=otpprocess.jsp?mobile="+mobile+">Send Msg</td>"+"<td><a href=deleteData.jsp?mobile="+mobile+"></>Delete</td>");
                                          out.print("</tr>");
                                         
                               }
                               out.print("</tbody></table>");
                      } catch(Exception e) 
                       {
                             out.println(e);            
                       }   
                
      out.write("\n");
      out.write("</section>\n");
      out.write("    \n");
      out.write("    <br><br>\n");
      out.write("    \n");
      out.write("<! ----Recipient----!>\n");
      out.write("<section id=\"recipient\">\n");
      out.write("     <table class=\"col-12 table table-hover\">\n");
      out.write("              <thead class=\"thead-dark\">\n");
      out.write("                   <div class=\"text-center\">\n");
      out.write("                       <h1>Recipient</h1>\n");
      out.write("                       \n");
      out.write("                       ");

                      try {
                               Class.forName("com.mysql.jdbc.Driver");
                               Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/blood_bank","blood", "blood");          
                               Statement st= conn.createStatement();
                               String sql="Select * from r_cipient";
                               ResultSet rs=st.executeQuery(sql);
                               out.println("<table class='col-8 table table-hover' align=center>");
                               out.println("<thead class='thead-dark'>");        
                               out.print("<tr>");
                               out.print("<th scope='col'>Name</th> <th scope='col'>Mobile</th> <th scope='col'>Blood Group</th><th>DOB</th> <th></th> <th scope='col'>Age</th><th></th> <th scope='col'>City</th> <th scope='col'>Address</th> <th scope='col'>Send Msg</th> <th scope='col'>Delete</th>");
                               out.print("</tr>");       
                               out.print("</thead>");
                               out.println("<tbody>");
              
                               while(rs.next()) {
                                          String name=String.valueOf(rs.getString(1));
                                          String mobile=rs.getString(2);
                                          String R_bloodgroup=rs.getString(3);
                                          String dob =rs.getString(4);
                                          String age=rs.getString(5);
                                          String city=rs.getString(6);
                                          String address=rs.getString(7);
                                          out.print("<tr>");
                                          out.print("<th scope='col'>"+name+"</th> <td>"+mobile+"</td> <td>"+R_bloodgroup+"</td><td>"+dob+"</td><td>"+"</td> <td>"+age+"</td> <td>"+"</td> <td>"+city+"</td> <td>"+address+"</td><td><a href=otpprocess.jsp?mobile="+mobile+">Send Msg</td>"+"<td><a href=DltRecipientData.jsp?mobile="+mobile+"></>Delete</td>");
                                          out.print("</tr>");
                               }
                               out.print("</tbody></table>");
                      } catch(Exception e) 
                       {
                             out.println(e);            
                       }   
                
      out.write("\n");
      out.write("                ");
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
