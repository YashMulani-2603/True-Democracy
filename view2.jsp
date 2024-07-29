<%@ page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.util.ArrayList"%>
<%

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/truedemocracy","root","root"); 
PreparedStatement st=con.prepareStatement("select * from feedbacktable");

ArrayList list1=new ArrayList();
ArrayList list2=new ArrayList();
ArrayList list3=new ArrayList();
ArrayList list4=new ArrayList();
ResultSet rs=st.executeQuery();
while(rs.next())
{
list1.add(rs.getString(1));
list2.add(rs.getString(2));
list3.add(rs.getString(3));
list4.add(rs.getString(4));

}
con.close();

%>
<table width="100%">
    <%for(int i=0;i<list1.size();i++)
    {
    
%>
    <tr>
        <td width="30%"><%=list1.get(i)%></td>
        <td width="20%"><%=list2.get(i)%></td>
        <td width="20%"><%=list3.get(i)%></td>
        <td width="30%"><%=list4.get(i)%></td>
 
        
    </tr>
    <%}%>
</table>