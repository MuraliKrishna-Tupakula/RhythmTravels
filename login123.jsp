<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.*,java.lang.*"%>
<%
    response.setHeader("Cache-Control","no-cache, no-store, must-revalidate"); // HTTP 1.1
%>
<%
String Username=request.getParameter("uname");
String Password=request.getParameter("psw");
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@desktop-5n1p76c:1521:xe","system","sai");
Statement statement = null;	
ResultSet resultSet = null;
statement = con.createStatement();
        String sql = "SELECT email,password,usertype FROM registration where email='"+Username+"'";
        resultSet = statement.executeQuery(sql);
        String db_mail = "";
        String db_pwd = "";
        String db_type = "";
        while(resultSet.next()){
            db_mail = resultSet.getString("email");
            db_pwd = resultSet.getString("password");
        }
        if( Username.equals(db_mail)&&Password.equals(db_pwd)&&db_type.equals("admin")){
            session.setAttribute("Username",Username);
            response.sendRedirect("http://localhost:8081/Fdlab2/FDLAB2/successfullogin.jsp");
        }
        if(Username=="" && db_pwd==""){
            session.setAttribute("Username",Username);
            response.sendRedirect("http://localhost:8081/Fdlab2/FDLAB2/unsuccessfulogin.jsp");
        }
        if(Username.equals(db_mail)&&Password.equals(db_pwd)){
            session.setAttribute("Username",Username);
            response.sendRedirect("http://localhost:8081/Fdlab2/FDLAB2/successfullogin.jsp");
        }
        if(Username!=db_mail || Password != db_pwd){
            session.setAttribute("Username",Username);
            response.sendRedirect("http://localhost:8081/Fdlab2/FDLAB2/incorrectunameorpassword.jsp");
        }
        if(Username!= db_mail && Password!= db_pwd){
            session.setAttribute("Username",Username);
            response.sendRedirect("http://localhost:8081/Fdlab2/FDLAB2/unsuccessfulogin.jsp");
        }
    }
    catch(Exception e)
    {
        out.println(e);
    }
%>
<html>
    <script>
        setTimeout(function(){
            window.location.href = 'http://localhost:8081/Fdlab2/FDLAB2/home7.html';
        },5000);
    </script>
</html>