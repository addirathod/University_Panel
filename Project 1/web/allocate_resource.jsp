<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/project1" user="root" password="password"/>
<sql:query dataSource="${snapshot}" var="login_master2">
            SELECT * from login_master;
            </sql:query>   
          
 <% int f=0; %>           
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
      <h2>RESOURCE ALLOCATION</h2>
      <div class="cleaner_h20"></div>
      
      
       <center>
           <form action="allocate_resource.jsp">
           SELECT USER:&nbsp&nbsp
           
           <Select name="users" onchange="form.submit()" >
                     <c:if test="${param.users ne null}">
                   <sql:query dataSource="${snapshot}" var="login_master3">
                       SELECT * from login_master where id="${param.users}";
                      </sql:query>       
                       <c:forEach var="e" items="${login_master3.rows}">
                  <option value ="${e.name}" selected="">${e.name}</option>
                        </c:forEach> 
                  </c:if>
                  
                  <c:forEach var="d" items="${login_master2.rows}">
                     
                       <option value="${d.id}">${d.name}</option>
                                     
                    </c:forEach>
                   
             </select>
           </center>
      <br><br>
              </form>
           <% if(request.getParameter("users")!=null) {
               session.setAttribute("user",request.getParameter("users"));
           %>  
              
              <form action="allocate_resource_final.jsp">
                  
               <sql:query dataSource="${snapshot}" var="resource_master">
                   SELECT * from resource_master;
            </sql:query>   
                   <sql:query dataSource="${snapshot}" var="check">
                   Select * from user_resource_map where id="${param.users}";
            </sql:query> 
               <c:forEach var="r" items="${resource_master.rows}">
                   
                   
                   
                   <c:forEach var="l" items="${check.rows}">
                       <c:if test="${r.resource eq l.resource}">
                          <% f=1; %> 
                       </c:if>
                       
                    </c:forEach>     
                   <% if(f==0) { %>
                  &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                   <Input type ="checkbox" name="resource" value="${r.resource}">
                       &nbsp&nbsp&nbsp&nbsp
                       ${r.resource}
                       <br>
                        <% } 
                           f=0;  %>         
                    </c:forEach>
                     &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                     &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                     &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                     &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                     &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                     &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                     &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    <Input type ="submit" value="Allocate">
           </form>
                 
             <% } %>
             <% if(request.getAttribute("msg2")!=null)
            {
                  out.println(request.getAttribute("msg2")); 
                  request.setAttribute("msg2",null); 
            }%>
            
      </div>
      <div class="cleaner"></div>
    </div>
    <div class="content_box_bottom"></div>
    
      
      
        
      
    
    
  
<div class="cleaner"></div>
</div>
        <div class="sidebar_box">
        
            
            <%@include file="FOOTER.jsp" %>