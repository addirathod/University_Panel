<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/project1" user="root" password="password"/>

<html xmlns="http://www.w3.org/1999/xhtml">
    
<head>
<title>Education</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
    <body>
        <%@include file="header_s_admin.jsp" %>
        <%@include file="menu_s_admin.jsp" %>
        
<sql:query dataSource="${snapshot}" var="news_master">
            SELECT * from news_master where type!="super-admin" and type!="student"
            </sql:query> 

<div id="sidebar">
    <div class="sidebar_box">
      <h2>BRANCH NOTICE</h2>
      <marquee direction="up"  onmouseover="stop()"  onmouseout="start()"> 
        
          
          <c:forEach var="c" items="${news_master.rows}">

      <div class="news_box"> <a href='?q=${c.title}'><h3>${c.title}</h3>.</a>
          <p class="post_info">Posted by <a href="#">${c.type}</a> on <span>${c.date}</span></p>
      </div>
      
      </c:forEach>
          
          
     </marquee>
    </div>
    <div class="sidebar_box_bottom"></div>
    <div class="sidebar_box">
      <h2>Newsletter</h2>
      <form action="#" method="get">
        <label>Please enter your email address to subscribe our newsletter.</label>
        <input type="text" value="" name="username" size="10" id="input_field" />
        <input type="submit" name="login" value="Subscribe" alt="login" id="submit_btn" />
      </form>
      <div class="cleaner"></div>
    </div>
    <div class="sidebar_box_bottom"></div>
    </div>
        <div id="content">
    <div class="content_box">
        
        
        
        
      <h2><% out.println(request.getAttribute("news1")); %></h2>
      <div class="cleaner_h20"></div>
      
      
      <sql:query dataSource="${snapshot}" var="news_master2">
                       SELECT * from news_master where title="<% out.print(request.getAttribute("news1")); %>"
                      </sql:query>       
                       <c:forEach var="e" items="${news_master2.rows}">
                  ${e.details}
                        </c:forEach> 
                  
      
      
 </div>
      <div class="cleaner"></div>
    </div>
    <div class="content_box_bottom"></div>
    
      
      
        
      
    
    
  
<div class="cleaner"></div>
</div>
        <div class="sidebar_box">
        
            
            <%@include file="FOOTER.jsp" %>
          