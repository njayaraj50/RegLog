package tables;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class UserTable {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/reg_log", "root", "root");
			Statement stmt=c.createStatement();
			String sql="create table usertable(id int Not Null Auto_Increment,firstname varchar(40),lastname varchar(40),mobile varchar(40),email varchar(40),Primary key(id))";
			boolean count=stmt.execute(sql);
			System.out.println(count+"row affected");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
	}
	}
}
