<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/project1" user="root" password="password"/>
<sql:query dataSource="${snapshot}" var="news_master3">
            SELECT * from news_master where type="super-admin"
            </sql:query> 
<div id="content">
    <div class="content_box">
      <h2>UNIVERSITY NOTICE</h2>
      <p> Notices by university admins will be found here </p>
      <div class="cleaner_h20"></div>
      <div class="image_fl"> <img src="images/images01.jpg" alt="" /> </div>
      <div class="section_w250 float_r">
          <ul class="list_01">
              <marquee onmouseover="stop()"  onmouseout="start()">
                  <c:forEach var="c" items="${news_master3.rows}">
                      
                   <a href='?u=${c.title}'><li>${c.title}</li></a>
                  </c:forEach>
              </marquee>
        </ul>
      </div>
      <div class="cleaner"></div>
    </div>
    <div class="content_box_bottom"></div>
    <div class="content_box">
      <h2>STUDENT GROUPS</h2>
      <div>
        <sql:query dataSource="${snapshot}" var="news_master4">
            SELECT * from news_master where type="student"
            </sql:query> 
            <ul class="list_01">
            <c:forEach var="d" items="${news_master4.rows}">
                <marquee onmouseover="stop()"  onmouseout="start()"><p><li><a href='?u=${d.title}'>${d.title}</a></li></p></marquee>
            </c:forEach>
            </ul>
            </div>
      
      <div class="cleaner"></div>
    </div>
    <div class="content_box_bottom"></div>
  </div>
<div class="cleaner"></div>

</div>

<% if(request.getParameter("u")!=null){
                request.setAttribute("news1",request.getParameter("u"));
                 RequestDispatcher rd= request.getRequestDispatcher("show_news.jsp");
                 rd.forward(request, response); 
            }
                
            %>