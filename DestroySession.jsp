<%-- 
    Document   : DestroySession
    Created on : Feb 6, 2024, 7:37:55?PM
    Author     : hp
--%>

<%
    session.invalidate();
    response.sendRedirect("Home.jsp");
%>