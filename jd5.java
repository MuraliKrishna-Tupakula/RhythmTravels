import java.sql.*;
import java.util.*;
class Dynamic1
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
		Statement sct1=con1.createStatement();
		boolean res=false;
		
		String sql12="select * from student where ID="+emp;
		ResultSet rs1=sct1.executeQuery(sql12);
		System.out.println("Success");
		if(rs1.next())
		{
			
			
				System.out.println("you are valid user");
				System.out.println("hello your rolno is"+rs1.getInt(1));
				System.out.println("hello your name is"+rs1.getString(2));
				res=true;
				
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