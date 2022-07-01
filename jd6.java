import java.sql.*;
import java.util.*;
class Dynamic3
{
	public static void main(String args[])
	{
		try
		{
		//load driver =thin driver type4
		Class.forName("oracle.jdbc.driver.OracleDriver");
		System.out.println("Loaded");
		Connection con1=DriverManager.getConnection("jdbc:oracle:thin:@desktop-5n1p76c:1521:xe","system","sai");
		
		System.out.println("Established");
 		Scanner ob=new Scanner(System.in);
		System.out.println("Enter your student id");
		int emp=ob.nextInt();
		System.out.println("Enter your student name");
		String st=ob.next();
		String sql1="insert into student values(?,?)";// where eid="+emp and ename="+st and age="+empa 
		PreparedStatement ps=con1.prepareStatement(sql1);
		ps.setInt(1,emp);
		ps.setString(2,st);
		int noofrows=ps.executeUpdate();
		String sql2="select * from student";
		Statement sct=con1.createStatement();
		ResultSet rs1=sct.executeQuery(sql2);
		System.out.println("Success");
		while(rs1.next())
		{
			
			
				System.out.println("hello your rolno is : "+rs1.getInt(1));
				
				System.out.println("hello your name is : "+rs1.getString(2));
		}
			
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}
}