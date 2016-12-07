<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/project1" user="root" password="password"/>
<%try{
    
    if(request.getParameter("role")!=null){ %>
 <sql:update dataSource="${snapshot}" var="requests">
    INSERT INTO requests values ("<% out.print(session.getAttribute("id")); %>","<% out.print(session.getAttribute("name")); %>","<% out.print(request.getParameter("role")); %>")
</sql:update> 
    
    <% 
            request.setAttribute("msg3","Request sent successfully. Wait till confirmation");
            RequestDispatcher rd=request.getRequestDispatcher("change_role.jsp");
             rd.forward(request, response); } 
            
            else
                {
                    request.setAttribute("msg3","Please select a role");
            RequestDispatcher rd=request.getRequestDispatcher("change_role.jsp");
             rd.forward(request, response); } 
    
}
catch(Exception e)
{
    request.setAttribute("msg3","Another request already exists from your id");
            RequestDispatcher rd=request.getRequestDispatcher("change_role.jsp");
             rd.forward(request, response);
}
                
            %>
    