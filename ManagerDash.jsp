<html>
<style>
 body{
            background-image:url('media/law2.jpg');
            background-size:100%;
            background-repeat:no-repeat;.
 }
        .tabtheme{
            color:black;
            font-family:Arial;
            font-size:20px;
            text-transform: uppercase; 
            text-align: center;
            background-color:rgba(255,255,255,0.3);
            height: 50px;
        }
         .tdtheme:hover{
            background-color:rgba(255,255,255,0.8);      
         }
              .btntheme{
               width:100px;
               height: 30px;
               font-size:20px;
               background-color:black;
               color:white;
               text-transform:uppercase;
               font-family:Arial;  
               align:center;
              }
              a{
                  text-decoration:none;
                  color:white;
                      
              }
    </style>
      <%
             response.addHeader("pragma","no-cache");
             response.addHeader("Cache-Control","no-store");
             String value = (String)session.getAttribute("user");
             
             if(value==null){
                response.sendRedirect("Auth.jsp");
             }
             
             if(session==null){
                response.sendRedirect("Auth.jsp");
             }
             
         %>
    <body>
        <%@include file="Adminheader.jsp"%>
        <div class="divtheme">
         
        </div>
    </body>
</html>
    
