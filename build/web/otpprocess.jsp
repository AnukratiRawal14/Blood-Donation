<%@page import="java.util.Random"%>
<%@page import="java.io.BufferedReader" %>
<%@page import ="java.io.IOException" %> 
<%@page import="java.io.InputStreamReader"%>
 <%@page import="java.net.URL"%>
<%@page import="java.net.URLConnection"%>
<%@page import=" java.net.URLEncoder"%>
<%@page import=" java.net.HttpURLConnection"%>
<%@page import="javax.net.ssl.HttpsURLConnection"%>     
 
<%
    try {
               String name=request.getParameter("name");
               String email=request.getParameter("email");
               String phone=request.getParameter("mobile");
               String password=request.getParameter("password");
               session.setAttribute("name",name);
               session.setAttribute("email",email);
               session.setAttribute("mobile",phone);
               session.setAttribute("password",password);
               String apikey="Vs9YqKPl7xfsfSepXielVgVZHNTm2vEfCDmIVkA269QHjH5lwIfrqHkI3Pzp";
               String sendId="FSTSMS";
               String number = phone;
               Random rand = new Random();
               int otp = rand.nextInt(900000) + 100000;
               session.setAttribute("otp",otp);
               String message=".your OTP is:"+otp;
               message=URLEncoder.encode(message, "UTF-8");
               //  out.println(message);
               String language="english";
               String route="p";
               String myUrl="https://www.fast2sms.com/dev/bulk?authorization="+apikey+"&sender_id="+sendId+"&message="+message+"&language="+language+"&route="+route+"&numbers="+number;
               //   out.println(myUrl);
               URL url=new URL(myUrl);
               HttpsURLConnection con=(HttpsURLConnection)url.openConnection();
               con.setRequestMethod("GET");
               con.setRequestProperty("User-Agent" , "Mozilla/5.0");
               con.setRequestProperty("cache-control", "no-cache");
               int code=con.getResponseCode();
               out.println(code);
               StringBuffer res=new StringBuffer();
               BufferedReader br=new BufferedReader(new InputStreamReader(con.getInputStream()));
               
               while(true) {
                      String line=br.readLine();
                      if(line==null) {
                              break;
                      }
                     res.append(line);
               }
              response.sendRedirect("OTP.jsp");
              br.close();
              
        } catch(Exception e) {
                e.printStackTrace();
       }
%>