 <%@page import="java.sql.*"%>
 <%
        try {
            
               Class.forName("com.mysql.jdbc.Driver");
               Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/blood_bank","blood", "blood");
               String city = request.getParameter("city");
               
               if (city!=null) {
                      String blood = request.getParameter("blood");
                      String newblood = blood+'+';
                      Statement st= conn.createStatement();
                      String sql="Select * from donorform WHERE `city`='"+city+"' AND `D_bloodgroup`='"+blood+"+'";
                      ResultSet rs=st.executeQuery(sql);
                      
                      if(rs.next()) {
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
          } catch(Exception e) {
                out.println(e);
          }
 %>