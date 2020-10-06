     <%@page import= "java.sql.*" %>
     <%
     
         String email = (String)session.getAttribute("email"); 
         if(email!=null) {
         String name = (String)session.getAttribute("name");
         String phone = (String)session.getAttribute("phone");
         String password = (String)session.getAttribute("password");
         int otp = (Integer)session.getAttribute("otp");
         String mobile = request.getParameter("mobile");
         String otpvalue = request.getParameter("otpvalue");
         int enterOtp = Integer.parseInt(otpvalue);
                         if(otp == enterOtp){
                            // out.print("otp matched");
                               String sql="INSERT INTO `userdata`(`email`, `password`, `name`, `mobile`) VALUES ('"+email+"','"+password+"', '"+name+"', '"+mobile+"')";
                               try{
                                       Class.forName("com.mysql.cj.jdbc.Driver");
                                       Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blood_bank?serverTimezone=UTC","root","");
                                       Statement st = con.createStatement();
                                       int n=st.executeUpdate(sql);
                                       if(n>0){
                                                  response.sendRedirect("OTP.jsp?email="+email+" &name="+name+" &mobile="+mobile+" &password="+password);
                                       }
                               }
                              catch(Exception e){
   %>
                                                           <script>
                                                     alert("User Already Exists");
                                           </script>
   <%
                       }//else{
                         //  out.print("incorrect otp");
                   // }   
        }  
        
     %>