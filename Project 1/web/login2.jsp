
   <% if(((String)session.getAttribute("type"))==null) 
    {%>      

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
   
<head>
<title>Education</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
    <body>
         <%@include file="header_login.jsp" %>
         <center>
             <br><br><br><br>
        <form action="login">
          &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp  ID:&nbsp&nbsp&nbsp&nbsp
            <Input type ="text" name="user" placeholder="Enter id">
                <br><br>
            PASSWORD:&nbsp&nbsp&nbsp&nbsp
        <Input type="password" name="pass" placeholder="Enter password">
            <br><br>
          Remember Me:&nbsp&nbsp&nbsp&nbsp
                <Input type="checkbox" name="rem">        
                <br>
          
        <br> <br>   
        <Input type="submit" name="login">
        </form>
             
       <br>
           <h3><a href="register.jsp">New User? Register Here</a></h3>
        </center>
         <br><br><br><br>
                   <label style="color:white;">          
               <% 
            if(request.getAttribute("error")!=null)
            out.println(request.getAttribute("error"));
        %> 
        </label>
    </body>
</html>
<% } 
   else if(((String)session.getAttribute("type")).equals("super-admin"))
    response.sendRedirect("template_s_admin.jsp");
else
response.sendRedirect("template.jsp");
%>