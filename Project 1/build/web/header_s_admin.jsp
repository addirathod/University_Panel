<% if(session.getAttribute("id")==null)
    response.sendRedirect("login2.jsp");
else{
    
%>
<div id="header_wrapper">
  <div id="header">
    <div id="site_title">
      <h1><a href="#"> <img src="images/logo.png" alt="" /> <span>AR UNIVERSITY</span> </a></h1>
    </div>
      <%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/project1" user="root" password="password"/>
<sql:query dataSource="${snapshot}" var="login_master">
    SELECT * from login_master where id="<% out.print(session.getAttribute("id")); %> "
            </sql:query> 
            
              <c:forEach var="c" items="${login_master.rows}">

      <p>Hi, ${c.name}</p>
      
      </c:forEach>
    
  </div>
  
</div>

<% } %>