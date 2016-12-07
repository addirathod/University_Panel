<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/project1" user="root" password="password"/>
<sql:update dataSource="${snapshot}" var="login_master">
            Update login_master SET type="${param.request}" where id="${param.id}";
</sql:update> 
           
<sql:update dataSource="${snapshot}" var="requests2">
            Delete from requests where id="${param.id}"
</sql:update>            
            
            <% request.setAttribute("msg5","Successfully changed role");
            RequestDispatcher rd=request.getRequestDispatcher("requests.jsp");
             rd.forward(request, response); %>