import java.sql.*;
class DBdemo
{
	public static void main(String args[])
	{
		try
		{
		//load driver =thin driver type4
		Class.forName("oracle.jdbc.driver.OracleDriver");
		System.out.println("Loaded");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@ntsocietyserver:1521:oralbrce","IPC127","IPC127");
		
		System.out.println("Established");
		Statement sct=con.createStatement();
		String sql="insert into student values('1','abc')";
		int no=sct.executeUpdate(sql);
		System.out.println("Success");
		String sql1="select * from student";
		//execute select select Query
		//result set holds mixed type of columns and records
		ResultSet rs=sct.executeQuery(sql1);
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