<%@ page import="java.sql.*"%>
<%
String email = (String) session.getAttribute("Email");
%>
<html>
    <script>
        setTimeout(function(){
            window.location.href = 'http://localhost:8081/Fdlab2/FDLAB2/registrationform.html';
        },5000);
    </script>
    <p>Hey </p>
    <p>It seem's like you're not registered yet </p>
</html>