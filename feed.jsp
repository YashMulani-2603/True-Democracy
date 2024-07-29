 <%@page import= "java.sql.Connection"%>;
 <%@page import="java.sql.DriverManager"%>;
 <%@page import="java.sql.PreparedStatement"%>;
 <%@page import="java.sql.ResultSet"%>;
 
 <%
     Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/truedemocracy","root","root"); 
            
           String Ano = request.getParameter("Ano");
           String FNm = request.getParameter("FNm");
           String rating = request.getParameter("rating");
           String Discription = request.getParameter("Discription");
           
     
          
PreparedStatement feedbacktableTableInsertQ = con.prepareStatement("insert into feedbacktable values(?,?,?,?)");
            
            feedbacktableTableInsertQ.setString(1,Ano);
           feedbacktableTableInsertQ.setString(2,FNm);
           feedbacktableTableInsertQ.setString(3,rating);
           feedbacktableTableInsertQ.setString(4,Discription);
           
           feedbacktableTableInsertQ.executeUpdate();
            con.close();
     response.sendRedirect("Dashboard.jsp");
     
    
%>