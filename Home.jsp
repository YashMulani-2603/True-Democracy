<html>
<style>
 body{
            background-image:url('media/law2.jpg');
            background-size:100%;
            background-repeat:no-repeat;
 }
          .divtheme:hover
         {
            width:50%;
            height: 300px;
            background-image:url('media/law2.jpg');
            background-size:100%;
            background-repeat:no-repeat;
            margin:auto;
            margin-top:50px;
            border:null;
            opacity: 0.8;
        }
        .tabtheme{
            color:Black;
            font-family:Arial;
            font-size:20px;
            text-transform: uppercase; 
            text-align: center;
            background-color:rgba(255,255,255,0.3);
            height: 50px;
        }
         .tdtheme:hover{
            background-color:rgba(255,255,255,0.8);      
         }
           
              .logintab{
               font-size:20px;
               font-family: Arial;  
               color:white; 
              }
              .fieldtheme{
               width:250px;
               height: 30px;
               font-size:15px;
               
 
              }
              .btntheme{
               width:100px;
               height: 30px;
               font-size:20px;
               background-color:black;
               color:white;
               text-transform:uppercase;
               font-family:Arial;  
               align:center;
              }
                a{
                  text-decoration:none;
                  color:Black;
                }
              
    </style>

    <%@page import= "java.sql.Connection"%>
    <%@page import="java.sql.DriverManager"%>
    <%@page import="java.sql.PreparedStatement"%>
    <%@page import="java.sql.ResultSet"%>

<%
        int COUNT=0;
       int RESULT=0;
       String aNo=request.getParameter("adhar");
        String pass=request.getParameter("pas");
       String btn = request.getParameter("btn");
       
       if(btn!=null && btn.equals("login")){ 
       
       
        if(aNo.equals("")){
            COUNT=1;
       }
       else if(pass.equals("")){
            COUNT=2;
       }
       else{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/truedemocracy","root","root");
        
       PreparedStatement signUpTableInsertQ = con.prepareStatement("select * from signuptable where AdharCardNumber=? and Password=?" );
                              signUpTableInsertQ.setString(1,aNo);
                              signUpTableInsertQ.setString(2,pass);

                   ResultSet rs=signUpTableInsertQ.executeQuery();
            if(btn!=null && btn.equals("login")){     

                   if(rs.next()){
                        Cookie ck=new Cookie("TrueDemocracy",pass);
                        ck.setMaxAge(1000000);
                        response.addCookie(ck);
                        session.setAttribute("user",aNo);
                   response.sendRedirect("Dashboard.jsp");
                   }
                   else
           {
           RESULT=1;
           }
                }
       
       }
    }
%>       

    <body>
 
        <div class="divtheme">
            <form action="">
                <table  class="Logintab"  cellspacing="10px" align="center"  cellpadding='2'>
                <%
                    if(btn!=null && RESULT==1){ 
                    %>
                    <tr>
                        <td><font color="white">Id/Pas is Incorrect</td></font>
                        </tr>
                        <%}%>
                <%
                    if(btn!=null && COUNT==1){ 
                    %>
                    <tr>
                        <td><font color="white">Id is required</td><font>
                        </tr>
                        <%}%>
                        
                        <%
                            if(btn!=null && COUNT==2){
                           %>
                           <tr></tr>
                           <%}%>
                
                <tr>
                 <td>Adhar Card Number</td>
                </tr>
                
                <tr>
                    <td><input type="text" placeholder="Enter Adhar Card Number"  class="fieldtheme" name="adhar"></td>
                </tr>
                
                <tr>
                <td>Password</td>
                </tr>
                
                <tr>
                    <td><input type="password" placeholder="enter password"  class="fieldtheme" name="pas"></td>
                </tr>
                
                <tr align='center'>
                <td>
                 <input type="submit"  value="login"  class="btntheme" name="btn">
                 </td>
                </tr>
                
                <tr>
                 <td>
                 <a href="Signuppage.jsp">new user</a>
                 <a href="fogot.jsp">Forgot Password</a>
                 </td>
                </tr>
 </table>
              
                </form>
 </div>
</body>
</html>