<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>

<%
   String userid=request.getParameter("uId");
   String Password=request.getParameter("pass");
      String post=request.getParameter("post");

      Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/truedemocracy","root","root");

if(post.equalsIgnoreCase("admin"))
{
   PreparedStatement st1=
 con.prepareStatement("select  *  from admintab where userid=? and Password=?");
   st1.setString(1,userid);
   st1.setString(2,Password);
   ResultSet rs=st1.executeQuery();
   
     
                          
   if(rs.next())
   {
   Cookie ck=new Cookie("TrueDemocracy",Password);
                        ck.setMaxAge(1000000);
                        response.addCookie(ck);
                        session.setAttribute("user",userid);
       response.sendRedirect("ManagerDash.jsp");
   }
   else 
   {
       out.println("invalid id/password");
   }
}

if(post.equalsIgnoreCase("manager"))
{
   PreparedStatement st1=
 con.prepareStatement("select * from employeelogintab where empid=? and password=?");
   st1.setString(1,userid);
   st1.setString(2,Password);
   ResultSet rs=st1.executeQuery();
   if(rs.next())
   {
       response.sendRedirect("managerdashboard.jsp");
   }
   else 
   {
       out.println("invalid id/password");
   }
}
if(post.equalsIgnoreCase("operator"))
{
   PreparedStatement st1=
 con.prepareStatement("select  *  from  employeelogintab where empid=? and password=?");
   st1.setString(1,userid);
   st1.setString(2,Password);
   ResultSet rs=st1.executeQuery();
   if(rs.next())
   {
       response.sendRedirect("dashboard.jsp");
   }
   else 
   {
       out.println("invalid id/password");
   }
}
%>