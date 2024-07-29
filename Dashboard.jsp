<html>
    <style>
        body{
            background-image:url('media/law2.jpg');
            background-size:100%;
            background-repeat:no-repeat;
 
        }
        .feedbacktheme
        
        {
            margin-top:70px;
            margin-left: 500px;
            
        }
        .mapdiv
        {
            margin-top:800px;
        }
        
        .tabtheme{
            color:black;
            font-family:Arial;
            font-size:20px;
            text-transform: uppercase; 
            text-align: center;
            background-color:rgba(0,0,0,0.3);
            height: 80px;
        }
            
              a{
                  text-decoration: none;
                  color:white;
                  
              }
    
         </style>
         
         <%
             response.addHeader("pragma","no-cache");
             response.addHeader("Cache-Control","no-store");
             String value = (String)session.getAttribute("user");
             
             if(value==null){
                response.sendRedirect("Home.jsp");
             }
             
             if(session==null){
                response.sendRedirect("Home.jsp");
             }
             
         %>
         
    <body>
        <%@include  file="userheader.jsp" %>
        </div>
       <div class="mapdiv"><iframe width="520" height="400" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" id="gmap_canvas" src="https://maps.google.com/maps?width=520&amp;height=400&amp;hl=en&amp;q=230/4santram%20sindhi%20colony%20UJJAIN+(map)&amp;t=&amp;z=12&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"></iframe></div>
       