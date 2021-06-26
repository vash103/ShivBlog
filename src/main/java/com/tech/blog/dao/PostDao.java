package com.tech.blog.dao;
import java.sql.*;

import java.util.ArrayList;
import java.util.List;

import com.tech.blog.entities.Category;
import com.tech.blog.entities.Post;
public class PostDao {
 Connection con;

public PostDao(Connection con) {
	super();
	this.con = con;
}
 public ArrayList<Category> getAllCategories(){
	 
	ArrayList<Category> list = new ArrayList();
	
	 
	 try {
		 String q="select * from categories";
		 Statement st=this.con.createStatement();
		 ResultSet set=st.executeQuery(q);
		 while(set.next())
		 {
			 int cid=set.getInt("cid");
			 String name=set.getString("name");
			 String description=set.getString("description");
			 Category c=new Category(cid,name,description);
			 list.add(c);
		 }
		 
	 }catch(Exception e) {
	 e.printStackTrace();
 } return list;
}

 public boolean savePost(Post p)

 {
	 boolean f=false;
	 try {
		 String q="insert into posts(pTitle,pContent,pCode,pPic,catid,user_id,pid) values(?,?,?,?,post_sequence.nextval,post_sequence1.nextval,post_sequence.currval)";
		 PreparedStatement pstmt=con.prepareStatement(q);
		 
		 pstmt.setString(1, p.getTitle());
		 pstmt.setString(2,p.getpContent());
		 pstmt.setString(3, p.getpCode());
		 pstmt.setString(4,p.getpPic());
		 
		 pstmt.executeUpdate();
		 f=true;
	 }catch(Exception e)
	 {
		 e.printStackTrace();
	 }
	return f;
 }

public List<Post> getAllPosts(){
	
	List<Post> list =new ArrayList<>();
	try {
		PreparedStatement p= con.prepareStatement("select * from posts");
		ResultSet set=p.executeQuery();
		
		while(set.next())
		{
			
			String pTitle=set.getString("pTitle");
			String pContent=set.getString("pContent");
			String pCode=set.getString("pCode");
			String pPic=set.getString("pPic");
			int pid=set.getInt("pid");
			int catid=set.getInt("catid");
			int user_id=set.getInt("user_id");
			
			Post post=new Post(pTitle,pContent,pCode,pPic,pid,catid,user_id);
			list.add(post);
		}
	}catch(Exception e)
	{
		e.printStackTrace();
	}
	return list;
}
public List<Post> getPostByCatid(String name)
{
	List<Post> list = new ArrayList<>();
	try {
		PreparedStatement p= con.prepareStatement("select * from posts where name=?");
		p.setString(1, name);
		ResultSet set=p.executeQuery();
		
		while(set.next())
		{
			
			String pTitle=set.getString("pTitle");
			String pContent=set.getString("pContent");
			String pCode=set.getString("pCode");
			String pPic=set.getString("pPic");
			int pid=set.getInt("pid");
			int catid=set.getInt("catid");
			int user_id=set.getInt("user_id");
			
			Post post=new Post(pTitle,pContent,pCode,pPic,pid,catid,user_id);
			list.add(post);
			
		}
	}catch(Exception e)
	{
		e.printStackTrace();
	}
	return list;
}
}