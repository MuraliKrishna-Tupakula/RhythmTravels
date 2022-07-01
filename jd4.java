import java.sql.*;
import java.util.*;
class Dynamic
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
 		Scanner ob=new Scanner(System.in);
		System.out.println("Enter your emp id");
		int emp=ob.nextInt();
		Statement sct1=con1.createStatement();
		boolean res=false;
		System.out.println("Success");
		String sql12="select * from student127";
		ResultSet rs1=sct1.executeQuery(sql12);
		System.out.println("created");
		while(rs1.next())
		{
			
			if(emp==rs1.getInt(1))
			{
				System.out.println("you are valid user");
				System.out.println("hello"+rs1.getString(2));
				res=true;
				break;
			}	
		}
			if(res==false)
			{
				System.out.println("you are invalid user");
				
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}
}