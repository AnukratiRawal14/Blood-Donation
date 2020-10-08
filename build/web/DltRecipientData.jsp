  
<%@page import="java.sql.* "%>
<%
                String mobile =request.getParameter("mobile");
                String  sql="delete from r_cipient where mobile= "+mobile;
                 try
                   {
                         Class.forName("com.mysql.jdbc.Driver");
                 
                      Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/blood_bank","blood", "blood");
                      Statement st=conn.createStatement();                
                        
                         int n=st.executeUpdate(sql);
                         if(n>0){
                                   response.sendRedirect("admin.jsp");
                         }
                         else{
                          out.println("Record  Not Deleted");
                         }
                 }
                catch(Exception e)
                {
                   out.println(e);
                }
            %>
        