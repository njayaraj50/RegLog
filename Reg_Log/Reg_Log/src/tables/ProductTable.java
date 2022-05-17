package tables;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class ProductTable {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/reg_log", "root", "root");
			Statement stmt=c.createStatement();
			String sql="create table producttable(id int Not Null Auto_Increment,productname varchar(40),description varchar(40),createdby int Not Null,Primary key(id),Constraint FK_createdby Foreign Key(createdby) References usertable(id))";
			boolean count=stmt.execute(sql);
			System.out.println(count+"row affected");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
	}
	}
	
}
