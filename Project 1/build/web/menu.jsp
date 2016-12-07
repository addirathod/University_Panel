<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/project1" user="root" password="password"/>
<sql:query dataSource="${snapshot}" var="user_resource_map">
    SELECT * from user_resource_map where id="<%out.print(session.getAttribute("id"));%>";
            </sql:query>   
            
<div id="menu_wrapper">
  <div id="menu">
      
    <ul>
        <li><a href="template.jsp" class="current">Home</a></li>
        
        <c:forEach var="c" items="${user_resource_map.rows}">
                     
                       
                                     
                    
      <li><a href="${c.resource}">${c.resource}</a></li>
      </c:forEach>
      <li><a href="Logout">Logout</a></li>
    </ul>
  </div>
  <!-- end of menu -->
</div>
<div id="content_wrapper">