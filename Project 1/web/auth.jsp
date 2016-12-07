<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/project1" user="root" password="password"/>
<sql:query dataSource="${snapshot}" var="login_master2">
            SELECT * from login_master where status="inactive";
            </sql:query>   
<html xmlns="http://www.w3.org/1999/xhtml">
    
<head>
<title>Education</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
    <body>
         <%@include file="header_s_admin.jsp" %>
        <%@include file="menu_s_admin.jsp" %>
        <%@include file="BODY1.jsp" %>
        
        <div id="content">
    <div class="content_box">
      <h2>USER VALIDIFICATION</h2>
      <div class="cleaner_h20"></div>
      
      
       <center>
        <table border="1" >
            <tr>
                <h3><td>ID</td>
                <td>NAME</td>
                <td>CLICK TO AUTHENTICATE</td></h3>
            </tr>
            <c:forEach var="d" items="${login_master2.rows}">
                <form action="auth_final">
              <tr>
                  
                  <td><Input type="text" value="${d.id}" name="id"></td>
                    <td><Input type="text" value="${d.name}" name="name"></td>
                    <td><center><Input type="submit" value="Activate"></center></td>
                    
                </tr>
                </form>
           </c:forEach>
           
        </table>
        </center>
           <% if(request.getAttribute("msg")!=null)
            {
                  out.println(request.getAttribute("msg")); 
                  request.setAttribute("msg",null); 
            }%>
            
      </div>
      <div class="cleaner"></div>
    </div>
    <div class="content_box_bottom"></div>
    
      
      
        
      
    
    
  
<div class="cleaner"></div>
</div>
        <div class="sidebar_box">
        
            
            <%@include file="FOOTER.jsp" %>
          