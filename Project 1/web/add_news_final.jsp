
<%@page import="org.apache.struts2.dispatcher.SessionMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/project1" user="root" password="password"/>
 
<%
     try{
       if((request.getParameter("title")).length()>0 && (request.getParameter("details").length()>0) ) { 
  

String id=(String)session.getAttribute("id");
    String name=(String)session.getAttribute("name");
    String type=(String)session.getAttribute("type");
 %>

<sql:update dataSource="${snapshot}" var="login_master2">
    INSERT INTO news_master values ("<%out.print(id);%>","<%out.print(name);%>","<%out.print(type);%>","${param.title}","${param.details}","<% out.println(new java.util.Date()); %>" )
            </sql:update> 
            <% request.setAttribute("err_an","News added successfully");
            RequestDispatcher rd= request.getRequestDispatcher("add_news.jsp");
                 rd.forward(request, response);
       }
       else
       {
        request.setAttribute("err_an","*Please fill up all the fields");
                 RequestDispatcher rd= request.getRequestDispatcher("add_news.jsp");
                 rd.forward(request, response);   
       }
     }
            catch(Exception e)
            {
               request.setAttribute("err_an","*Same title already exists"); 
               RequestDispatcher rd= request.getRequestDispatcher("add_news.jsp");
                 rd.forward(request, response);   
            }
     %>