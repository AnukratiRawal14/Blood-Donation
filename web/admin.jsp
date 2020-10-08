<html>
    <head>
        <title>Admin Page</title>
            <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <script src="https://kit.fontawesome.com/47101d2035.js" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/main.css">
   
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

<body

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
                     <a class="nav-item nav-link" href="#why">Hi   Admin  !</a>
               </div>
             
                          <!-- Navbar Right Side -->
                          
               <div class="navbar-nav">
                        <a class="nav-item nav-link" href="#donor">Donor</a>
                        <a class="nav-item nav-link" href="#recipient">Recipient</a>
                        <a class="nav-item nav-link" href="index.jsp">Logout</a>
                </div>
                </div>
            </div>
        </nav>
    </header>
    
    <br><br><br><br>
    
    
    <! ----donor table----!>
    
     
<! ----Recipient----!>
<section id="recipient">
     <table class="col-12 table table-hover">
              <thead class="thead-dark">
                   <div class="text-center">
                       <h1>Donor</h1>
                       <%@page import="java.sql.*"%>
                       <%
                      try {
                               Class.forName("com.mysql.jdbc.Driver");
                               Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/blood_bank","blood", "blood");          
                               Statement st= conn.createStatement();
                               String sql="Select * from donorform";
                               ResultSet rs=st.executeQuery(sql);
                               out.println("<table class='col-8 table table-hover' align=center>");
                               out.println("<thead class='thead-dark'>");        
                               out.print("<tr>");
                               out.print("<th scope='col'>Name</th> <th scope='col'>Mobile</th> <th scope='col'>Blood  Group</th> <th></th> <th scope='col'>Age</th><th></th> <th scope='col'>City</th> <th scope='col'>Address</th>  <th scope='col'>Delete</th>");
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
                                          out.print("<th scope='col'>"+name+"</th> <td>"+mobile+"</td> <td>"+D_bloodgroup+"</td><td>"+"</td> <td>"+age+"</td> <td>"+"</td> <td>"+city+"</td> <td>"+address+"</td></td>"+"<td><a href=DltRecipientData.jsp?mobile="+mobile+"></>Delete</td>");
                                          out.print("</tr>");
                               }
                               out.print("</tbody></table>");
                      } catch(Exception e) 
                       {
                             out.println(e);            
                       }   
                %>
                
    <br><br>
    
<! ----Recipient----!>
<section id="recipient">
     <table class="col-12 table table-hover">
              <thead class="thead-dark">
                   <div class="text-center">
                       <h1>Recipient</h1>
                       <%@page import="java.sql.*"%>
                       <%
                      try {
                               Class.forName("com.mysql.jdbc.Driver");
                               Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/blood_bank","blood", "blood");          
                               Statement st= conn.createStatement();
                               String sql="Select * from r_cipient";
                               ResultSet rs=st.executeQuery(sql);
                               out.println("<table class='col-8 table table-hover' align=center>");
                               out.println("<thead class='thead-dark'>");        
                               out.print("<tr>");
                               out.print("<th scope='col'>Name</th> <th scope='col'>Mobile</th> <th scope='col'>Blood  Group</th> <th></th> <th scope='col'>Age</th><th></th> <th scope='col'>City</th> <th scope='col'>Address</th> <th scope='col'>Send Msg</th> <th scope='col'>Delete</th>");
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
                                          out.print("<th scope='col'>"+name+"</th> <td>"+mobile+"</td> <td>"+R_bloodgroup+"</td><td>"+"</td> <td>"+age+"</td> <td>"+"</td> <td>"+city+"</td> <td>"+address+"</td><td><a href=otpprocess.jsp?mobile="+mobile+">Send Msg</td>"+"<td><a href=DltRecipientData.jsp?mobile="+mobile+"></>Delete</td>");
                                          out.print("</tr>");
                               }
                               out.print("</tbody></table>");
                      } catch(Exception e) 
                       {
                             out.println(e);            
                       }   
                %>
                