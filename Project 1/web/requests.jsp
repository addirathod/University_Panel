<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/project1" user="root" password="password"/>
<sql:query dataSource="${snapshot}" var="requests">
            SELECT * from requests;
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
      <h2>CHANGE ROLE REQUESTS</h2>
      <div class="cleaner_h20"></div>
      
      
       <center>
        <table border="1" >
            <tr>
                <h3><td>ID</td>
                <td>NAME</td>
                <td>REQUEST</td>
                <td>ASSIGN ROLE</td></h3>
            </tr>
            <c:forEach var="r" items="${requests.rows}">
                <form action="requests_final.jsp">
              <tr>
                  
                  <td><Input type="text" value="${r.id}" name="id"></td>
                  <td><label style="color: black" >${r.name}</label></td>
                    <td><Input type="text" value="${r.request}" name="request" width="20"></td>
                    <td><center><Input type="submit" value="Assign"></center></td>
                    
                </tr>
                </form>
           </c:forEach>
           
        </table>
        </center>
      <br>
          <br>
           <% if(request.getAttribute("msg5")!=null)
            {
                  out.println(request.getAttribute("msg5")); 
                  request.setAttribute("msg5",null); 
            }%>
            
      </div>
      <div class="cleaner"></div>
    </div>
    <div class="content_box_bottom"></div>
    
      
      
        
      
    
    
  
<div class="cleaner"></div>
</div>
        <div class="sidebar_box">
        
            
            <%@include file="FOOTER.jsp" %>
          