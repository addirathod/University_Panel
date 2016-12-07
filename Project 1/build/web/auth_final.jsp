<%-- 
    Document   : auth_final
    Created on : Jun 11, 2016, 12:51:18 AM
    Author     : MAHE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/project1" user="root" password="password"/>
<sql:update dataSource="${snapshot}" var="login_master">
            Update login_master SET status="active" where id="${param.id}";
</sql:update>  
            <% request.setAttribute("msg","Successfully activated");
            RequestDispatcher rd=request.getRequestDispatcher("auth.jsp");
             rd.forward(request, response); %>