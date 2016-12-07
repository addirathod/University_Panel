
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/project1" user="root" password="password"/>
<sql:query dataSource="${snapshot}" var="news_master">
            SELECT * from news_master where type!="super-admin" and type!="student"
            </sql:query> 

<div id="sidebar">
    <div class="sidebar_box">
      <h2>BRANCH NOTICE</h2>
      <marquee direction="up"  onmouseover="stop()"  onmouseout="start()"> 
        
          
          <c:forEach var="c" items="${news_master.rows}">

      <div class="news_box"> <a href='?q=${c.title}'><h3>${c.title}</h3>.</a>
          <p class="post_info">Posted by <a href="#">${c.type}</a> on <span>${c.date}</span></p>
      </div>
      
      </c:forEach>
          
          
     </marquee>
    </div>
    <div class="sidebar_box_bottom"></div>
    <div class="sidebar_box">
      <h2>Newsletter</h2>
      <form action="#" method="get">
        <label>Please enter your email address to subscribe our newsletter.</label>
        <input type="text" value="" name="username" size="10" id="input_field" />
        <input type="submit" name="login" value="Subscribe" alt="login" id="submit_btn" />
      </form>
      <div class="cleaner"></div>
    </div>
    <div class="sidebar_box_bottom"></div>
    </div>

            <% if(request.getParameter("q")!=null){
                request.setAttribute("news1",request.getParameter("q"));
                 RequestDispatcher rd= request.getRequestDispatcher("show_news.jsp");
                 rd.forward(request, response); 
            }
                
            %>
                    