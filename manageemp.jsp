<%@page import= "java.sql.Connection"%>;
 <%@page import="java.sql.DriverManager"%>;
 <%@page import="java.sql.PreparedStatement"%>;
 <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/truedemocracy","root","root");
            
   String EmployeeId = request.getParameter("empid");
            String EmployeeName = request.getParameter("empname");
            String password = request.getParameter("Password");
            String Contact = request.getParameter("contact");
            String DateOfBirth = request.getParameter("dob");
            String Address = request.getParameter("Address");
            String Email = request.getParameter("mailid");
            
            PreparedStatement emptableTableInsertQ = con.prepareStatement("insert into emplogintable values(?,?,?,?,?,?,?");
            emptableTableInsertQ.setString(1,EmployeeId);
            emptableTableInsertQ.setString(2,password);
            emptableTableInsertQ.setString(3,Contact);
            emptableTableInsertQ.setString(4,DateOfBirth);
            emptableTableInsertQ.setString(5,Address);
            emptableTableInsertQ.setString(6,Email);
            
            con.close();
        }
    }   
%>




 <div class="divtheme">

            <form  action="manageemp.jsp">
            
            <table  width="50%"  align="center" class="logintab" cellspacing="10px" >
                <tr align="center"  style="font-size:20px;font-family:arial">
                    <td colspan="2">USER SIGN UP</td>
                </tr>
                <tr align="center">
                    <td>Employee Id</td>
                        <td><input type="text"  class="fieldtheme"   name="empid"></td>
                </tr>
                <tr align="center">
                    <td>Employee Name<td>
                    <td><input type="text"  class="fieldtheme"  name="empNm"></td>
                </tr>
                <tr align="center">
                    <td>Contact</td>
                    <td><input type="text"  class="fieldtheme"  name="Contact"></td>
                </tr>
                </tr>
                <tr align="center">
                    <td>DOB</td>
                    <td><input type="date"  class="fieldtheme"  name="dob"></td>
                </tr>
                <tr align="center">
                    <td>Address</td>
                    <td><input type="text"  class="fieldtheme"  name="Address"></td>
                </tr>
                <tr align="center">
                    <td>Email id</td>
                    <td><input type="mail"  class="fieldtheme"  name="mail"></td>
                </tr>
   
                <tr align="center">
                    <td colspan="2"><input type="submit" value="create">
                    </td>
                </tr>
            </table>
</form>
        </div>
    </body>
        </html>