import java.sql.*;
class DBdemo12
{
	public static void main(String args[])
	{
		try
		{
		//load driver =thin driver type4
		Class.forName("oracle.jdbc.driver.OracleDriver");
		System.out.println("Loaded");
		Connection con1=DriverManager.getConnection("jdbc:oracle:thin:@ntsocietyserver:1521:oralbrce","IPC127","IPC127");
		
		System.out.println("Established");
		Statement sct1=con1.createStatement();
		//String sq="create table student125(rolno int,Names1 varchar(20))";
		//int no=sct1.executeUpdate(sq);
		String sqll="update student125 set branch='cse' where rolno='1'";
		sct1.executeUpdate(sqll);
		String sqll23=" update student125 set branch='cse&it' where rolno='2'";
		sct1.executeUpdate(sqll23);
		System.out.println("Success");
		String sql12="select * from student125";
		ResultSet rs1=sct1.executeQuery(sql12);
		System.out.println("created");
		while(rs1.next())
		{
			System.out.println(rs1.getInt(1)+" "+rs1.getString(2)+" "+rs1.getString(3));
			
		}
			
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}
}