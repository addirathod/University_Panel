<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%
     try{
       if((request.getParameter("name")).length()>0 && (request.getParameter("id").length()>0) && (request.getParameter("pass").length()>0) ) { %>
    
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/project1" user="root" password="password"/>
<sql:update dataSource="${snapshot}" var="login_master">
            INSERT INTO login_master VALUES ("${param.name}","${param.id}","${param.pass}","student","inactive");
</sql:update>
            
            <%   request.setAttribute("err","Registered Successfully.Please wait till admin validation");
                 RequestDispatcher rd= request.getRequestDispatcher("register.jsp");
                 rd.forward(request, response);
              }
       else{
            request.setAttribute("err","Please fill up all the fields");
                 RequestDispatcher rd= request.getRequestDispatcher("register.jsp");
                 rd.forward(request, response);} }
            catch(Exception e)
            {
                request.setAttribute("err","Id already exists.Please try another id.");
                 RequestDispatcher rd= request.getRequestDispatcher("register.jsp");
                 rd.forward(request, response);
            }
%>