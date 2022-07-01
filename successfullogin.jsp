<%@ page import="java.sql.*"%>
<%@ page import="javax.servlet.http.*,java.lang.*"%>
<%
    response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
    String mail = (String)session.getAttribute("Email");
    try{
        Statement statement = null;
        ResultSet resultSet = null;
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@desktop-5n1p76c:1521:xe","system","sai");
        statement = con.createStatement();
        String sql = "SELECT username,usertype FROM registration where email='"+mail+"'";
        resultSet = statement.executeQuery(sql);
        String db_uname = "";
        String db_type = "";
        while(resultSet.next()){
            db_uname = resultSet.getString("username");
            db_type = resultSet.getString("usertype");
        }
        out.println("Hey! "+db_uname+" ("+db_type+")");
        HttpSession sessn = request.getSession();
        sessn.setAttribute("success-admin-login-uname",db_uname);
        sessn.setAttribute("success-admin-login-mail",mail);
    }
    catch(Exception e)
    {
        out.println(e);
    }
%>
<html>
    <script>
        setTimeout(function(){
            window.location.href = 'http://localhost:8081/Fdlab2/FDLAB2/adminlogin.jsp';
        },5000);
    </script>
    <p>Hey  </p>
    <p>You have successfully logged in!</p>
</html>