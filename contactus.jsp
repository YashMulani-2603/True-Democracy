<%@page import= "java.sql.Connection"%>;
<%@page import="java.sql.DriverManager"%>;
<%@page import="java.sql.PreparedStatement"%>;

<%
Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/truedemocracy","root","root");
            
            
            String fNm = request.getParameter("fNm");
            String Num = request.getParameter("Num");
            String Query = request.getParameter("Query");
           String button = request.getParameter("btn");

           if(button!=null && button.equalsIgnoreCase("CSUBMIT")){
    PreparedStatement contactTableInsertQ = con.prepareStatement("insert into contact values(?,?,?)");
	
                       contactTableInsertQ.setString(1,fNm);
                       contactTableInsertQ.setString(2,Num);
	    contactTableInsertQ.setString(3,Query);
    
            
            contactTableInsertQ.executeUpdate();
            con.close();
            response.sendRedirect("Dashboard.jsp");
    }
                      %>