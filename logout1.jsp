<%@ page import="java.sql.*"%>
<%@ page import="javax.servlet.http.*,java.lang.*"%>
<%
    response.setHeader("Cache-Control","no-cache, no-store, must-revalidate"); // HTTP 1.1
    if (session.getAttribute("success-login-uname")==null){
        response.sendRedirect("http://localhost:8081/Fdlab2/FDLAB2/logoutmsg.html");
    }
%>
<%
    String logout_name = (String)session.getAttribute("success-login-uname");
    try{
        session.removeAttribute("success-login-uname");
        session.invalidate();
    }
    catch(Exception e)
    {
        out.println(e);
    }
%>
