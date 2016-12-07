
<html xmlns="http://www.w3.org/1999/xhtml">
    
<head>
<title>Education</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
    <body>
         <%@include file="header_login.jsp" %>
        <form action="register">
            
<center>
    <br><br><br>
                <h1>REGISTRATION FORM</h1>
                <br><br>
   &nbsp&nbsp&nbsp&nbsp Enter name:&nbsp&nbsp
    <Input type="text" name="name">
    <br><br>
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;
           &nbsp&nbsp&nbsp Enter id:&nbsp&nbsp
    <Input type="text" name="id">
    <br><br>
    Enter password:&nbsp&nbsp
    <Input type="password" name="pass">
    <br><br>
    <Input type="submit" name="register">
</center>
            <br><br>
        <label style="color:white;">
             <%
            
            if(request.getAttribute("err")!=null){
           out.println(request.getAttribute("err"));
            request.setAttribute("err",null);
            }
            
        
        
        %>
        </label>
       

  
            
            </form>
        </body>
</html>  