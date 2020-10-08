<!DOCTYPE html>
<html lang="en">

<head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
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
<%@page import="java.sql.*"%>
<%
          try {
                 Class.forName("com.mysql.jdbc.Driver");
                 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/blood_bank","blood", "blood");
                  String city = request.getParameter("city");
                  
                  if (city!=null) {
                       String blood = request.getParameter("blood");
                       String require = request.getParameter("require");
            
                       if(require.equals("1")) {
                              Statement st= conn.createStatement();
                              ResultSet rs=st.executeQuery("Select * from donorform WHERE city="+city+" AND D_bloodgroup="+blood);
                              
                              for(int i=0;i<4;i++) {
                                     out.println("<div class='row'>");
                                     
                                     for(int j=0; j<4; j++) {
                                             String name=String.valueOf(rs.getInt(1));
                                             String mobile=rs.getString(2);
                                             String D_bloodgroup=rs.getString(3);
                                             String age=rs.getString(4);
                                             String address=rs.getString(5);
                                             out.println("<div class='col-3'>");
                                             out.println("<div class='card'>"); 
                                             out.println(name);
                                             out.println(mobile);
                                             out.println(D_bloodgroup);
                                             out.println(age);
                                             out.println(address);
                                             out.println("</div>");
                                             out.println("</div>");
                                     }
                                     out.println("</div>");
                             }
                      } 
               }   
          }  catch(Exception e) {
                out.println(e);
          }             
 %>
    
</body>
</html>