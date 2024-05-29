<%@ page import="java.sql.*" %>
<%
String Username=request.getParameter("uname");
String Email=request.getParameter("email");
int Contact_no=request.getParameter("con-no");
String Password=request.getParameter("psw");

try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@desktop-5n1p76c:1521:xe","system","sai");
	String quer1="insert into emp values(?,?,?,?)";
	PreparedStatement pstmt=con.prepareStatement(quer1);
	pstmt.setString(1,Username);
	pstmt.setString(2,Email);
	pstmt.setInt(3,Contact_no);
	pstmt.setString(4,Password);
		int var1=pstmt.executeUpdate();
out.println(var1+" rows are inserted");
	
}
catch(Exception e)
{
	out.print(e);
}
%>