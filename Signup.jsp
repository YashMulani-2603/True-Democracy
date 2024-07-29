<%@page import= "java.sql.Connection"%>;
<%@page import="java.sql.DriverManager"%>;
<%@page import="java.sql.PreparedStatement"%>;
<%
Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/truedemocracy","root","root");
            
            
            String firstName = request.getParameter("fNm");
            String LastName = request.getParameter("lNm");
            String adharCardNumber = request.getParameter("AdharCardNumber");
            String DOB = request.getParameter("dob");
            String Email = request.getParameter("mailid");
            String Contact = request.getParameter("contact");    
            String password = request.getParameter("Password");

           
    PreparedStatement signUpTableInsertQ = con.prepareStatement("insert into signuptable values(?,?,?,?,?,?,?)");
	
                       signUpTableInsertQ.setString(1,firstName);
                       signUpTableInsertQ.setString(2,LastName);
	    signUpTableInsertQ.setString(3,adharCardNumber);
                       signUpTableInsertQ.setString(4,DOB);
	    signUpTableInsertQ.setString(5,Contact);
	    signUpTableInsertQ.setString(6,Email);
	    signUpTableInsertQ.setString(7,password);

            signUpTableInsertQ.executeUpdate();
            
            con.close();
            response.sendRedirect("Home.jsp");
                      %>