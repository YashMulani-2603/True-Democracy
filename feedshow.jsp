<%@page import=" java.sql.ResultSet"%>;
<%@page import=" java.sql.SQLException"%>;
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>

<%@include file="Adminheader.jsp"%>

<%Class.forName("com.mysql.jdbc.Driver"); 
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/truedemocracy","root","root");
            PreparedStatement st1=con.prepareStatement("select *  from feedbacktable");
            ResultSet rs=st1.executeQuery();
            while(rs.next())
            {
                String AdharCardNumber= rs.getString(1);
                String FullName=rs.getString(2);
                String Rating=rs.getString(3);
                String Discription= rs.getString(4);
              
           }
%>
<table width="100%" class="head">
<tr bgcolor="white">+
<td width="30%">AdharCatrdNumber</td>
<td width="20%">FullName</td>
<TD width="20%">Rating</TD>
<TD width="30%">Discription</TD>

</table>
    <iframe src="view2.jsp" width="100%" height="200px" scroll="true">
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