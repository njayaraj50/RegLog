package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDetailsDao {

		public static Connection getConnection(){  
		    Connection con=null;  
		    try{  
		        Class.forName("com.mysql.jdbc.Driver");  
		        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/reg_log","root","root");  
		    }catch(Exception e){System.out.println(e);}  
		    return con;  
		}  
		public static int save(UserDetails u){  
		    int status=0,status1=0,status2=0;  
		    try{  
		        Connection con=getConnection();  
		        PreparedStatement ps=con.prepareStatement(  
		"INSERT INTO usertable(firstname,lastname,mobile,email) VALUES(?,?,?,?)");  
		        ps.setString(1,u.getFirstname());  
		        ps.setString(2,u.getLastname()); 
		        ps.setString(3,u.getMobile()); 
		        ps.setString(4,u.getEmail()); 
		        status1=ps.executeUpdate();  
		        PreparedStatement ps2=con.prepareStatement("SELECT MAX(id) FROM usertable");
		        ResultSet rs=ps2.executeQuery();
		        int id=0;
		        while(rs.next()) {
		        	id=rs.getInt(1);
		        }
		        
		        PreparedStatement ps1=con.prepareStatement("INSERT INTO logintable(userid,username,password) values(?,?,?)");
		        ps1.setInt(1, id);
		        ps1.setString(2, u.getUsername());
		        ps1.setString(3, u.getPassword());
		        status2=ps1.executeUpdate();
		        if(status1==1 && status2==1) {
		        	status=1;
		        }
		    }catch(Exception e){System.out.println(e);}  
		    return status;  
		}  
		public static int Checkuser(UserDetails u) {
			boolean status=false;
			int id=0;
			try{  
		        Connection con=getConnection();  
		        PreparedStatement ps=con.prepareStatement("select username,password from logintable where username=? and password=?"); 
		        ps.setString(1,u.getUsername());  
		        ps.setString(2, u.getPassword()); 
		        ResultSet rs=ps.executeQuery();
		        status=rs.next();
		        if(status) {
		        	PreparedStatement ps1=con.prepareStatement("SELECT id FROM logintable WHERE username=? and password=?");
		        	ps1.setString(1,u.getUsername());  
			        ps1.setString(2, u.getPassword());
			        ResultSet rs1=ps1.executeQuery();
			        while(rs1.next()) {
			        	id=rs1.getInt(1);
			        	System.out.println(id);
			        }
		        }
			}catch(Exception e){System.out.println(e);}  
		    return id;  
		}
		public static boolean Checkuser1(UserDetails u) {
			boolean status=false;
			int id=0;
			try{  
		        Connection con=getConnection();  
		        PreparedStatement ps=con.prepareStatement("select username,password from logintable where username=? and password=?"); 
		        ps.setString(1,u.getUsername());  
		        ps.setString(2, u.getPassword()); 
		        ResultSet rs=ps.executeQuery();
		        status=rs.next();
		        /*if(status) {
		        	PreparedStatement ps1=con.prepareStatement("SELECT id FROM logintable WHERE username=? and password=?");
		        	ps1.setString(1,u.getUsername());  
			        ps1.setString(2, u.getPassword());
			        ResultSet rs1=ps1.executeQuery();
			        while(rs1.next()) {
			        	id=rs1.getInt(1);
			        }
		        }*/
			}catch(Exception e){System.out.println(e);}  
		    return status;  
		}
		public static UserDetails getUserById(int id){  
			UserDetails   u=null;
		    try{  
		        Connection con=getConnection();  
		        PreparedStatement ps=con.prepareStatement("select usertable.id,usertable.firstname,usertable.lastname,usertable.mobile,usertable.email,logintable.username,logintable.password from usertable left join logintable on usertable.id=logintable.id where usertable.id=?;");  
		        ps.setInt(1,id);  
		        ResultSet rs=ps.executeQuery();  
		        while(rs.next()){  
		            u=new UserDetails();
		            u.setId(rs.getInt("id"));  
		            u.setFirstname(rs.getString("firstname"));
		            u.setLastname(rs.getString("lastname"));
		            u.setMobile(rs.getString("mobile"));  
		            u.setEmail(rs.getString("email"));
		            u.setUsername(rs.getString("username"));
		            u.setPassword(rs.getString("password"));
		        }  
		    }catch(Exception e){System.out.println(e);}  
		    return u;  
		}  
	}


