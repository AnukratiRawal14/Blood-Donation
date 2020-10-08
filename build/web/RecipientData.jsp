  <%@page import="java.sql.*"%>
     
 <%  
        String name= request.getParameter("name");
        if(name!=null)
        {
            String mobile = request.getParameter("mobile");
            String blood = request.getParameter("blood");
            String day = request.getParameter("day");
            String month = request.getParameter("month");
            String year = request.getParameter("year");
            int intyear = Integer.parseInt(year);
            String bdate = day+" "+month+" "+year; 
            String city = request.getParameter("city");
            String state = request.getParameter("state");
            String currentyear = new java.text.SimpleDateFormat("yyyy").format(new java.util.Date());
            int intcurrentyear = Integer.parseInt(currentyear);
            int age= (intcurrentyear)-(intyear);
            String address = city+", "+state;
             String sql="INSERT INTO `r_cipient`(`name`, `mobile`, `R_bloodgroup`, `birth_date`, `age`, `city`, `address`) VALUES ('"+name+"','"+mobile+"', '"+blood+"','"+bdate+"', '"+age+"', '"+city+"', '"+address+"')";
             try {
                      Class.forName("com.mysql.jdbc.Driver");
                      Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/blood_bank","blood", "blood");
                      Statement st=conn.createStatement();
                      int n=st.executeUpdate(sql);
                      if(n>0) {
                              response.sendRedirect("Search.jsp?city="+city+" &blood="+blood+" &require=1");
                      }
               } catch(Exception e) {  
%> 
                                     <script> alert("Request with current mobile number aready exists!"); </script>
 <%
                 }
         
          }
 %>
               