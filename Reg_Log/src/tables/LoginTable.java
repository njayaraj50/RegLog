package tables;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class LoginTable {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/reg_log", "root", "root");
			Statement stmt=c.createStatement();
			String sql="create table logintable(id int Not Null Auto_Increment,userid int Not Null,usertypeid int Not Null,username varchar(40),password varchar(40),Primary key(id),Constraint FK_userid Foreign Key(userid) References usertable(id),Constraint FK_usertypeid1 Foreign Key(usertypeid) References usertype(id))";
			boolean count=stmt.execute(sql);
			System.out.println(count+"row affected");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
	}
	}
	
}
