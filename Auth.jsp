<html>
<style>
            body{
            background-image:url('media/law6.jpg');
            background-size:100%;
            background-repeat:no-repeat;
    .logintab
                      {
                      font-size:20px;
                      font-family: Arial;  
                      color:white; 
                     
                        } 
                        .fieldtheme
                        {
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

    </style>
    <body>
            <form action="Authentication.jsp">
            <table  class="logintab"  cellspacing="10px" align="center"  cellpadding='2'>
                <tr>
                    <td>USER ID</td>
                </tr>
                <tr>
                    <td><input type="text" placeholder="enter id"  class="fieldtheme" name="uId"></td>
                </tr>
                <tr>
                    <td>PASSWORD</td>
                </tr>
                <tr>
                    <td><input type="password" placeholder="enter password"  class="fieldtheme" name="pass"></td>
                </tr>
                <tr>
<td><select  class="fieldtheme" name="post">
        <option>select post</option>
        <option>admin</option>
        <option>manager</option>
        <option>operator</option>
</select>
</td>
                </tr>

                <tr align='center'>
                    <td>
<input type="submit"  value="login"  class="btntheme">
                    </td>
                </tr>
            </table>
                </form>
    </body>
</html>