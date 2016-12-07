
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html xmlns="http://www.w3.org/1999/xhtml">
    
<head>
<title>Education</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
    <body>
        <%@include file="header.jsp" %>
        <%@include file="menu.jsp" %>
        <%@include file="BODY1.jsp" %>
        <div id="content">
    <div class="content_box">
      <h2>CHANGE ROLE</h2>
      <br><br>
      <div class="cleaner_h20"></div>
      <form action="change_role_final.jsp" method="post">
             <center>
          
          
              Choose your role:&nbsp;&nbsp;
              <Select name="role">
                  <option value ="student">Student</option>
                  <option value ="admin">Admin</option>
                  <option value ="faculty">Faculty</option>
                  <option value ="hod">H.O.D.</option>
              </Select>
          
             </center>
          <br><br><br><br>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          
          
          <Input type="submit">                        
      </form>
      
      <% if(request.getAttribute("msg3")!=null)
            {
                  out.println(request.getAttribute("msg3")); 
                  request.setAttribute("msg3",null); 
            }%>
      
      
      
      </div>
      <div class="cleaner"></div>
    </div>
    <div class="content_box_bottom"></div>
    
 
<div class="cleaner"></div>
</div>
        <div class="sidebar_box">
        
            
            <%@include file="FOOTER.jsp" %>
      
       <center>
