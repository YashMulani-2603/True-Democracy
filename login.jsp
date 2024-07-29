<%-- 
<%@page import= "java.sql.Connection"%>;
 <%@page import="java.sql.DriverManager"%>;
 <%@page import="java.sql.PreparedStatement"%>;
 <%@page import="java.sql.ResultSet"%>

<%
Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/truedemocracy","root","root");
            String aNo = request.getParameter("AdharCardNumber");
            String pass = request.getParameter("pass");   
            PreparedStatement signUpTableInsertQ = con.prepareStatement("select * from signuptable where AdharCardNumber=? and Password=?" );
                       signUpTableInsertQ.setString(1,aNo);
                       signUpTableInsertQ.setString(2,pass);

            ResultSet rs=signUpTableInsertQ.executeQuery();
            if(rs.next())
            {
             response.sendRedirect("Dashboard.jsp");
            
}
            con.close();
          
                      %>
                      
                      
           --%>           
                      
 <%@page import= "java.sql.Connection"%>;
 <%@page import="java.sql.DriverManager"%>;
 <%@page import="java.sql.PreparedStatement"%>;
 <%@page import="java.sql.ResultSet"%>

<%
 int COUNT=0;
int RESULT=0;
Class.forName("com.mysql.jdbc.Driver");
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/truedemocracy","root","root");
 String aNo = request.getParameter("AdharCardNumber");
 String pass = request.getParameter("pass");
String btn = request.getParameter("btn");
PreparedStatement signUpTableInsertQ = con.prepareStatement("select * from signuptable where AdharCardNumber=? and Password=?" );
                       signUpTableInsertQ.setString(1,aNo);
                       signUpTableInsertQ.setString(2,pass);

            ResultSet rs=signUpTableInsertQ.executeQuery();
    if(aNo.equals(""))
   {
   COUNT=1;
   }
    if(pass.equals(""))
    {
    COUNT=2;
    }
else
{


    if(btn!=null && btn.equals("login"))
    {            

                if(rs.next())
                {
                Cookie ck=new Cookie("TrueDemocracy",pass);
                ck.setMaxAge(1000000);
                response.addCookie(ck);
                session.setAttribute("user",aNo);
                response.sendRedirect("Dashboard.jsp");
                }
    }
    else
    {
    RESULT=1;
    }
}

%>                  


        