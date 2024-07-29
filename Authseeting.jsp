 </head>
    <style>
        body{
            background-image:url('media/law2.jpg');
            background-size:100%;
            background-repeat:no-repeat;
        }
        .divtable 
    <style>heme{
            width:90%;
            height: 500px;
         
            background-size:100%;
            background-repeat:no-repeat;
            margin:auto;
            margin-top:60px;
            
        }
        .tabtheme{
            color:black;
            font-family:Arial;
            font-size:15px;
            text-transform: uppercase; 
            text-align: center;
            background-color:rgba(255,255,255,0.3);
            height: 50px;
        }
                a{
                  text-decoration:none;
                  color:Black;
                }
               
    </style>
                <body>
                     <body>
                         
        <div class="divtheme">
                    
            <form action="">
            <table  class="logintab"  cellspacing="10px" align="center"  cellpadding='2'>
                <tr align="center">
                    <td>ADMIN PASSWORD SETTING FORM</td> 
                </tr>
                <tr>
                    <td>Userid</td>
                </tr>
                <tr>
                    <td><input type="text" placeholder="enter id"  class="fieldtheme" name="uid"></td>
                </tr>
                <tr>
                    <td>PASSWORD</td>
                </tr>
                <tr>
                    <td><input type="password" placeholder="enter password"  class="fieldtheme" name="Password"></td>
                </tr>
                <tr>
                    <td>NEW PASSWORD</td>
                </tr>
                <tr>
                    <td><input type="password" placeholder="enter password"  class="fieldtheme" name="pass"></td>
                </tr>
                <tr>
                    <td>CONFIRM NEW  PASSWORD</td>
                </tr>
                <tr>
                    <td><input type="password" placeholder="enter password"  class="fieldtheme" name="Cpass"></td>
                </tr>
                <tr align='center'>
                    <td>
                        <input type="submit"  value="change"  class="btntheme">
                    </td>
                </tr>
            </table>
                </form> 
        </div>
    </body>
 </html>
 
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
  <%
String button=request.getParameter("btn");
int RESULT1=0;
int RESULT2=0;
       if(button!=null && button.equals("change"))
       {
   String uid=request.getParameter("userid");
   String Pas=request.getParameter("Password");
   String newPass=request.getParameter("pass");
   String CPass=request.getParameter("cpass");
   
      
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/truedemocracy","root","root");
   PreparedStatement st1=
 con.prepareStatement("select * from admintab where userid=? and Password=?");
   st1.setString(1,uid);
   st1.setString(2,Pas);
   st1.setString(3,newPass);
   st1.setString(4,CPass);
   ResultSet rs=st1.executeQuery();
   if(rs.next())
   {
       if(newPass.equals(CPass))
       {
   PreparedStatement st2=
 con.prepareStatement("update  admintab set Password=? where userid=?");
   st2.setString(1,newPass);
   st2.setString(2,uid);
   st2.executeUpdate();
   response.sendRedirect("Home.jsp");
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