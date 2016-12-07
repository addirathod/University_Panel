
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Class.Validate.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/project1" user="root" password="password"/>


<% session.setAttribute("id",request.getAttribute("id")); %>
<%
try{
        
        Connection con=DbConnection.dbcon();
        PreparedStatement pst = con.prepareStatement("Select * from login_master where id=?" );
             pst.setString(1,(String)session.getAttribute("id"));
             
             ResultSet rs=pst.executeQuery();
             
             if(rs.next())
             {
                 session.setAttribute("name",rs.getString(1));
                 session.setAttribute("type",rs.getString(4));
             }
}
catch(Exception e)
{
    System.out.println(e);
}
%>             

<% if(((String)session.getAttribute("type")).equalsIgnoreCase("super-admin"))
        response.sendRedirect("template_s_admin.jsp"); 
    else
        response.sendRedirect("template.jsp");
%>