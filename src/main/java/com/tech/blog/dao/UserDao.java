package com.tech.blog.dao;
import java.sql.*;

import javax.servlet.http.HttpServlet;

import com.tech.blog.entities.User;
public class UserDao {
private  Connection con;
public UserDao(Connection con)
{
	this.con=con;
}

public boolean saveUser(User user)
{ 
	boolean f=false;
	try {
		
		String query="insert into myuser(name,email,password,gender,profile,id) values(?,?,?,?,?,myseq.nextval)";
		PreparedStatement pstmt=this.con.prepareStatement(query);
		pstmt.setString(1, user.getName());
		pstmt.setString(2, user.getEmail());
		pstmt.setString(3, user.getPassword());
		pstmt.setString(4, user.getGender());
		pstmt.setString(5, user.getProfile());
		
		pstmt.executeUpdate();
		f=true;
	}catch(Exception e)
	{
	e.printStackTrace();	
	}
	return f;
}
public User getUserByEmailAndPassword(String email, String password) {
	
	User user=null;
	try {
		String query="select * from myuser where email =? and password=?";
		PreparedStatement pstmt=con.prepareStatement(query);
		
		pstmt.setString(1, email);
		pstmt.setString(2, password);
		
		ResultSet set=pstmt.executeQuery();
		
		if(set.next())
		{
			user=new User();
			String name=set.getString("name");
			user.setName(name);
			user.setEmail(set.getString("email"));
			user.setGender(set.getString("gender"));
			user.setProfile(set.getString("profile"));
		}
	}catch(Exception e) {
		e.printStackTrace();
	}
	
	return user;
}


}