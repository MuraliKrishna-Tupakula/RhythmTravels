<%@ page import="java.sql.*"%>
<%
String email = (String) session.getAttribute("Email");
%>
<html>
    <script>
        setTimeout(function(){
            window.location.href = 'http://localhost:8081/Fdlab2/FDLAB2/login.html';
        },7000);
    </script>
    <p>Hey </p>
    <p>Seem like you entered email or password wrong</p>
    <p>Please try again</p>
</html>