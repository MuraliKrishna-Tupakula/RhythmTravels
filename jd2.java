import java.sql.*;
class DBdemo1
{
	public static void main(String args[])
	{
		try
		{
		//load driver =thin driver type4
		Class.forName("oracle.jdbc.driver.OracleDriver");
		System.out.println("Loaded");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@desktop-5n1p76c:1521:xe","system","sai");
		
		System.out.println("Established");
		Statement sct=con.createStatement();
		String sql="create table student12(rolno int,Names1 varchar(20))";
		int no=sct.executeUpdate(sql);
		String sqll="insert into student12 values('1','sai'),('2','kumar')";
		int no1=sct.executeUpdate(sqll);
		System.out.println("Success");
		String sql1="select * from student12";
		//execute select select Query
		//result set holds mixed type of columns and records
		ResultSet rs=sct.executeQuery(sql1);
		System.out.println("created");
		while(rs.next())//checks wheter records exit or not
		{
			System.out.println(rs.getInt(1)+" "+rs.getString(2));
			
		}
			
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}
}