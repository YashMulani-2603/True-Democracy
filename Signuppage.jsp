<%-- 
    Document   : Signuppage
    Created on : Jan 24, 2024, 9:30:02 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up page</title>
    </head>
    <style>
        body{
            background-image:url('media/law2.jpg');
            background-size:100%;
            background-repeat:no-repeat;
        }
        .divtheme 
    {
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
        .tdtheme{
            box-shadow: 12px  10px  15px  black;    
            background-color:rgba(255,255,255,255.8);      
              }
              .logintab{
                  font-size:20px;
                  font-family:Arial;  
                  color:white; 
               
              }
              .fieldtheme
              {
                  width:250px;
                  height: 30px;
                  font-size:15px;
                  color:Black;
              }
              .btntheme
               {
                  width:100px;
                  height: 30px;
                  font-size:15px;
                  background-color:black;
                  color:white;
                  text-transform: uppercase;
                  font-family:Arial;  
                  align:center;
              }
    </style>
    <body>
          <table width="100%"  class="tabtheme">
            <tr>
              
               <td class="tdtheme"><a href="Contact.jsp">Contact</a</td>
               
            </tr>
        </table>
        <div class="divtheme">

            <form  action="Signup.jsp">
            
            <table  width="50%"  align="center" class="logintab" cellspacing="10px" >
                <tr align="center"  style="font-size:20px;font-family:arial">
                    <td colspan="2">USER SIGN UP</td>
                </tr>
                <tr align="center">
                    <td>Full Name</td>
                        <td><input type="text"  class="fieldtheme"   name="fNm"></td>
                </tr>
                <tr align="center">
                    <td>Last Name</td>
                    <td><input type="text"  class="fieldtheme"  name="lNm"></td>
                </tr>
                <tr align="center">
                    <td>AdharCard Number</td>
                    <td><input type="text"  class="fieldtheme"  name="AdharCardNumber"></td>
                </tr>
                </tr>
                <tr align="center">
                    <td>DOB</td>
                    <td><input type="date"  class="fieldtheme"  name="dob"></td>
                </tr>
                <tr align="center">
                    <td>Email</td>
                    <td><input type="mail"  class="fieldtheme"  name="mailid"></td>
                </tr>
                <tr align="center">
                    <td>Contact</td>
                    <td><input type="number"  class="fieldtheme"  name="contact"></td>
                </tr>
                 <tr align="center">
                    <td>Password</td>
                    <td><input type="Password"  class="fieldtheme"  name="Password"></td>
                </tr>
                <tr align="center">
                    <td colspan="2"><input type="submit" value="signup">
                    </td>
                </tr>
            </table>
</form>
        </div>
    </body>
        </html>