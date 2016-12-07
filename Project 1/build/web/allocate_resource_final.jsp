<%-- 
    Document   : auth_final
    Created on : Jun 11, 2016, 12:51:18 AM
    Author     : MAHE
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/project1" user="root" password="password"/>
  
     
<%     String items[]=request.getParameterValues("resource");
   if(items!=null){
 for(String s:items)
 {
     String user=(String)session.getAttribute("user");
 %>

<sql:update dataSource="${snapshot}" var="user_resource_map">
            INSERT INTO user_resource_map (id,resource) values ("<% out.print(user); %>","<% out.print(s); %>")
</sql:update> 
            <% }
            request.setAttribute("msg2","Successfully added resource");
            RequestDispatcher rd=request.getRequestDispatcher("allocate_resource.jsp");
             rd.forward(request, response); } 
            
            else
                {
                    request.setAttribute("msg2","Please select a resource to add");
            RequestDispatcher rd=request.getRequestDispatcher("allocate_resource.jsp");
             rd.forward(request, response); } 
                
            %>
             
             
             
            