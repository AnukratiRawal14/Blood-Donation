<%@page import= "java.sql.*" %>
 <%
        try{
         String email = (String)session.getAttribute("email"); 
         if(email!=null) {
         String name = (String)session.getAttribute("name");
         String mobile = (String)session.getAttribute("mobile");
         String password = (String)session.getAttribute("password");
         int otp = (Integer)session.getAttribute("otp");
         String otpvalue = request.getParameter("otpvalue");
         int enterOtp = Integer.parseInt(otpvalue);
         if(otp == enterOtp){
             // out.print("otp matched");
               Class.forName("com.mysql.jdbc.Driver");
               Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/blood_bank","blood", "blood");
               Statement st=conn.createStatement();
               String sql="INSERT INTO `user`(`name`, `email`,  `mobile`,`password`) VALUES ('"+name+"','"+email+"','"+mobile+"','"+password+"')";
               int i=st.executeUpdate(sql);
               if(i>0){
                      response.sendRedirect("AfterLogin.jsp");
               }
         }else{
 %>
                     <script> alert("Incorrect OTP");</script>
<%
          }
        } 
       } catch(Exception e) {
                 out.print(e);
       }   

  %>
                       
          

        


      
    