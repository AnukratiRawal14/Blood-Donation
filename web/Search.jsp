<!DOCTYPE html>
<html lang="en">

<head>
    <title>Search</title>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <script src="https://kit.fontawesome.com/47101d2035.js" crossorigin="anonymous"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">

</head>
<style>
    * {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

/* Float four columns side by side */
.column {
  float: left;
  width: 25%;
  padding: 0 10px;
}

/* Remove extra left and right margins, due to padding in columns */
.row {margin: 0 -5px;}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Style the counter cards */
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2); /* this adds the "card" effect */
  padding: 16px;
  text-align: center;
  background-color: #f1f1f1;
}

/* Responsive columns - one column layout (vertical) on small screens */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
}
</style>

<body>
    <header class="site-header">
        <nav class="navbar justify-content-center navbar-expand-md navbar-dark bg-primary fixed-top">
            <div class="container">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggle"
                    aria-controls="navbarToggle" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarToggle">
                    <!-- Navbr left Side -->
                    <div class="navbar-nav mr-auto">
                        <a class="nav-item nav-link" href="AfterLogin.jsp">Why Donate Blood?</a>
                        <a class="nav-item nav-link" href="AfterLogin.jsp#know">Know and Learn</a>
                        <a class="nav-item nav-link" href="AfterLogin.jsp#canidonate">Can I donate?</a>
                        <a class="nav-item nav-link" href="AfterLogin.jsp#about">About Us</a>
                    </div>
                    <!-- Navbar Right Side -->
                    <div class="navbar-nav">
                        <a class="nav-item nav-link" href="RecipientForm.jsp">I need blood!</a>
                        <a class="nav-item nav-link" href="DonourForm.jsp">I want to donate!</a>
                        <a class="nav-item nav-link" href="index.jsp">Log-out</a>
                    </div>
                </div>
            </div>
        </nav>
    </header>
   
        
    <section class="searchbar">
        <div class="container">
            <h1 class="mb-3 heading"><i class="fas fa-search"></i> Search for Donors or Recipients:</h1>
            <form>
            <div class="row no-gutters">
                <div class="form-group col-4">
                    <label for="phone">City:</label>
                    <input type="text" class="form-control" name="city" required />
                </div>
                <div class="form-group col-4">
                    <label>Blood Type: </label>

                    <select class="form-control" id="bloodtype" name="blood">
<!--                        <option value="">I need...</option>-->
                        <option value="A Positive">A+</option>
                        <option value="O Positive">O+</option>
                        <option value="B Positive">B+</option>
                        <option value="AB Positive">AB+</option>
                        <option value="A Negetive">A-</option>
                        <option value="O Negetive">O-</option>
                        <option value="B Negetive">B-</option>
                        <option value="AB Negetive">AB-</option>
                    </select>
                </div>
                <div class="form-group col-4">
                    <label>Volunteer type: </label>

                    <select class="form-control" id="require" name="require">
                        <option value="">I need...</option>
                        <option value="1">Donor</option>
                        <option value="2">Recipient</option>
                    </select>
                </div>
                
            </div>
       
                   <div class="text-center">
        <input class="btn btn-primary mb-3" type="submit" value="Search">
           </div>
                 </form>
        </div>

    

    </section>
<%@page import="java.sql.*"%>
 <%
      try {
            
          Class.forName("com.mysql.jdbc.Driver");
          Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/blood_bank","blood", "blood");
          String city = request.getParameter("city");
          if (city!=null)  {
            String blood = request.getParameter("blood");
            String require = request.getParameter("require");
            
               if(require.equals("1"))  {
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

                     while(rs.next()) {
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
               
               else if(require.equals("2")) {
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
             
                      while(rs.next()) {
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
        }   catch(Exception e)  {
               out.println(e);
       }
             
 %>
    
</body>

</html>