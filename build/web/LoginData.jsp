  <%@page import="java.sql.*"%>
                 <%
                       String email= request.getParameter("email");
                       try{
                             if(email!=null) {
                                     String password = request.getParameter("password");   
                                     Class.forName("com.mysql.jdbc.Driver");
                                     Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/blood_bank","blood", "blood");
                                     Statement st=conn.createStatement();
                                     ResultSet rs= st.executeQuery("SELECT * FROM `user` WHERE email='"+email+"' AND password='"+password+"'");
                                     if(rs.next()) {
                                             response.sendRedirect("AfterLogin.jsp"); 
                              }else{
                 %>
                                <script>
                                          alert("Invalid Credentials");
                                </script>
                       <%
                              }
                             }
                       } catch(Exception e) {
                                out.println("Error"+e.getMessage());
}
               %>
 