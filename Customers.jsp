<%@page import=" java.sql.ResultSet"%>;
<%@page import=" java.sql.SQLException"%>;
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>

<%@include file="Adminheader.jsp"%>

<%Class.forName("com.mysql.jdbc.Driver"); 
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/truedemocracy","root","root");
            PreparedStatement st1=con.prepareStatement("select *  from employeelogintable");
            ResultSet rs=st1.executeQuery();
            while(rs.next()){
                String EmployeeId= rs.getString(1);
                String EmployeeName=rs.getString(2);
                String Password=rs.getString(3);
                String Contact= rs.getString(4);
                String DOB= rs.getString(5);
                String Address= rs.getString(6);
                String Email= rs.getString(7);
                
           }
%>
<html>
    <body>
<table width="100%">
<tr bgcolor="white">
<td width="10%">Employee Id</td>
<td width="20%">Employee Name</td>
<TD width="10%">password</TD>
<TD width="20%">Contact</TD>
<TD width="10%">Date Of Birth</TD>
<TD width="20%">Email</TD>

</table>
    <iframe src="view.jsp" width="100%" height="200px" scroll="true">
    </iframe>
       TAKE PRINT
       
<form style="margin-top:20px;align:center" action="">
<table align="center">
<tr>
   
<td>
<input type="text" placeholder="type id to load customer data" class="fieldtheme" name="sid">
<input type="submit" value="LOAD" class="btntheme" name="btn1">
</td>
<td width="100px">&nbsp;</td>
<td>
<input type="text" placeholder="type id to delete customer data" class="fieldtheme" name="delid">
<input type="submit" value="DELETE" class="btntheme" name="btn2">
</td>
</tr>
</body>
</html>


       <%-- if(searchbutton!= null && searchbutton.equals("LOAD"))

{ 

<table width="100%" style="background-color:white"
<tr align="center">
<th colspan="2">Employee Record</th>
<tr>
       
<tr align="center">
<th>Employee Id</th>
<td><%=%></td>
<th>EmployeeId</th>
<td><%=EmployeeId%></td>
<tr align="center">
    
<th>EmployeeName</th>
<td><%=EmployeeName%></td>

<th>password</th>
<td><%=password%></td>
</tr>

<tr align="center">
<th>GENDER</th>
<td><%=gender%></td>

<th>EMAIL</th>
<td><%=email%></td>

<tr align="center">
<td colspan="2"><%=%></td>
--%>
</table>
</body>
</html>