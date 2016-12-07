<% if(session!=null)
{
    session.invalidate();
    session=null;
    request.setAttribute("error","You have successfully logged out.");
    RequestDispatcher rd=request.getRequestDispatcher("login2.jsp");
    rd.forward(request, response);
}
%>