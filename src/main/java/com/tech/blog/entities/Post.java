package com.tech.blog.entities;
import java.sql.*;


public class Post {
private int pid;
private String pTitle;
private String pContent;
private String pCode;
private String pPic;
private int userId;
private int catid;
public Post(String pTitle, String pContent, String pCode, String pPic,int pid, int catid, int user_id) {
	super();
	
	this.pTitle = pTitle;
	this.pContent = pContent;
	this.pCode = pCode;
	this.pPic = pPic;
	this.catid=catid;
	this.userId=user_id;
	this.pid = pid;
}
public Post(String pTitle, String pContent, String pCode, String pPic, Timestamp pDate) {
	super();
	this.pTitle = pTitle;
	this.pContent = pContent;
	this.pCode = pCode;
	this.pPic = pPic;
	
}
public Post() {
	super();
}
public int getPid() {
	return pid;
}
public void setPid(int pid) {
	this.pid = pid;
}
public String getTitle() {
	return pTitle;
}
public void setTitle(String title) {
	this.pTitle = title;
}
public String getpContent() {
	return pContent;
}
public void setpContent(String pContent) {
	this.pContent = pContent;
}
public String getpCode() {
	return pCode;
}
public void setpCode(String pCode) {
	this.pCode = pCode;
}
public String getpPic() {
	return pPic;
}
public void setpPic(String pPic) {
	this.pPic = pPic;
}

public int getCatid() {
	return catid;
}
public void setCatid(int catid) {
	this.catid = catid;
}
public int getUserId() {
	return userId;
}
public void setUserId(int userId) {
	this.userId = userId;
}



}
