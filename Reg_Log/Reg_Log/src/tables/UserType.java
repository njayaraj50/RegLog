package tables;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class UserType {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/reg_log", "root", "root");
			Statement stmt=c.createStatement();
			String sql="create table usertype(id int Not Null Auto_Increment,type varchar(40),Primary key(id))";
			boolean count=stmt.execute(sql);
			System.out.println(count+"row affected");
			String sql1="insert into usertype(id,type) values('1','Customer')";
			boolean count1=stmt.execute(sql1);
			System.out.println(count1+"row affected");
			String sql2="insert into usertype(id,type) values('2','Seller')";
			boolean count2=stmt.execute(sql2);
			System.out.println(count2+"row affected");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
	}
	}

}
