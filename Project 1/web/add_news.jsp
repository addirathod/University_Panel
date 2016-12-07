<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
      <h2>ADD NEWS</h2>
      <div class="cleaner_h20"></div>

      
      <form action="add_news_final.jsp">
          News Title: &nbsp&nbsp;
          <input type="text" name="title" placeholder="Enter title of news here">
              <br><br><br>
             News Details: &nbsp&nbsp;
             
             <br> 
             <textarea rows="6" cols="50" name="details" placeholder="Enter news details here"></textarea> 
             <br><br>
                     <center>    <Input type="submit" value="Add News"></center>
             </form>
      <br><label style="color: black">
       <%
            
            if(request.getAttribute("err_an")!=null){
           out.println(request.getAttribute("err_an"));
            request.setAttribute("err_an",null);
            }
            
        
        
        %>
             
          </label>   
          
                  
          
          
          
          
          
          
          
          
          
           </div>
      <div class="cleaner"></div>
    </div>
    <div class="content_box_bottom"></div>
    
      
      
        
      
    
    
  
<div class="cleaner"></div>
</div>
        <div class="sidebar_box">
        
            
            <%@include file="FOOTER.jsp" %>
          