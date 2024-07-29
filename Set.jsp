<%@page import="java.sql.ResultSet"%>;
<%@page import="java.sql.PreparedStatement"%>;
<%@page import="java.sql.Connection"%>;
<%@page import="java.sql.DriverManager"%>;
  <%
String button=request.getParameter("btn");
int RESULT1=0;
int RESULT2=0;
       if(button!=null && button.equals("change"))
       {
   String aid=request.getParameter("AdharCardNumber");
   String Pas=request.getParameter("password");
   String NPass=request.getParameter("pass");
   String CPass=request.getParameter("Cpass");
   
      
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/truedemocracy","root","root");
   PreparedStatement st1=
 con.prepareStatement("select * from signuptable where AdharCardNumber=? and password=?");
   st1.setString(1,aid);
   st1.setString(2,Pas);
   st1.setString(3,NPass);
   st1.setString(4,CPass);
   ResultSet rs=st1.executeQuery();
   if(rs.next())
   {
       if(NPass.equals(CPass))
       {
   PreparedStatement st2=
 con.prepareStatement("update  signuptable set password=? where id=?");
   st2.setString(1,NPass);
   st2.setString(2,aid);
   st2.executeUpdate();
   response.sendRedirect("Dashboard.jsp");
       }
       else
       {
           RESULT1=1;
       }
   }
   else 
   {
       RESULT2=1;
   }
       }        
        
        %>