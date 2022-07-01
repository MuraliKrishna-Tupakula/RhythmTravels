<%@ page import="java.sql.*"%>


<%
String name=request.getParameter("name");
String id=request.getParameter("id");
out.println(name+" "+id);

	try{
		Connection con=null;
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con=DriverManager.getConnection("jdbc:oracle:thin:@desktop-5n1p76c:1521:xe","system","sai");
		PreparedStatement ps=conn.prepareStatement("insert into student values(?,?)");
		ps.setString(1,name);
		ps.setString(2,id);
		int i=ps.executeUpdate();
		if(i!=0){
			out.println("registration is completed");
		}
		else{
			out.println("once again please check the information");
		}
		con.close();
	}
	catch(Exception e){
		out.print(e);
	}
%>