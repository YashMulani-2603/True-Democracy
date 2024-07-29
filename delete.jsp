<html>
    <style>
        body{
background-image:url('media/law2.jpg');
background-size:100%;
background-repeat:no-repeat;
        }
        .divtheme{
            width:90%;
            height: 500px;
background-image:url('media/law2.jpg');
background-size:100%;
background-repeat:no-repeat;
margin:auto;
margin-top:60px;
box-shadow: 12px  10px  15px  black;
border:inset ;
        }
        .tabtheme{
            color:black;
            font-family:berlin sans fb;
            font-size:20px;
            text-transform: uppercase; 
            text-align: center;
            background-color:rgba(255,255,255,0.3);
            height: 80px;
        }
        .tdtheme{
box-shadow: 12px  10px  15px  black;    
        }
              .tdtheme:hover
              {
            background-color:rgba(255,255,255,0.8);      
              }
              .logintab{
                  font-size:20px;
                  font-family: berlin sans fb;  
                  color:white; 
                  box-shadow: 12px  10px  15px  black;    
                  
              }
              .fieldtheme{
                  width:250px;
                  height: 30px;
                  font-size:15px;
              }
              .btntheme{
                  width:100px;
                  height: 30px;
                  font-size:15px;
                  background-color:black;
                  color:white;
                  text-transform: uppercase;
                  font-family: berlin sans fb;  
                  align:center;
              }
              a{
                  text-decoration: none;
                  color:white;
                  
              }
    </style>
    <body>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>


        
        <%
String button=request.getParameter("btn");
int RESULT1=0;
       if(button!=null && button.equalsIgnoreCase("Delete"))
       {
   String Ano=request.getParameter("AdharCardNumber");
   String Password=request.getParameter("pass");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/truedemocracy","root","root");
   PreparedStatement st1=
 con.prepareStatement("select * from  signuptable where AdharCardNumber=? and Password=?");
   st1.setString(1,Ano);
   st1.setString(2,Password);
   ResultSet rs=st1.executeQuery();
   if(rs.next())
   {
   PreparedStatement st2=
 con.prepareStatement("delete from  signuptable where AdharCardNumber=? and Password=?");
   st2.setString(1,Ano);
   st2.setString(2,Password);
   st2.executeUpdate();
   response.sendRedirect("Home.jsp");
       }
       else
       {
           RESULT1=1;
       }
   }
        
        %>
        
        
         <div class="divtheme">
            <form action="">
            <table  class="Logintab"  cellspacing="10px" align="center"  cellpadding='2'>
                <tr>
                 <td>Adhar Card Number</td>
                </tr>
                <tr>
                    <td><input type="text" placeholder="Enter Adhar Card Number"  class="fieldtheme" name="AdharCardNumber"<b></td>
                </tr>
                <tr>
                <td>Password</td>
                </tr>
                <tr>
                    <td><input type="password" placeholder="enter password"  class="fieldtheme" name="pass" <strong></td>
                </tr>
                <tr align='center'>
                <td>
                 <input type="submit"  value="Delete"  class="btntheme" name="btn">
</body>
        </html>
        
