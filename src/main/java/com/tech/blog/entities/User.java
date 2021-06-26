package com.tech.blog.entities;
public class User {
public User(int id, String name, String password, String gender, String email) {
	super();
	this.name = name;
	this.password = password;
	this.gender = gender;
	this.email = email;
}
public User() {
	
}

public User(String name, String password, String gender, String email) {
	super();
	this.name = name;
	this.password = password;
	this.gender = gender;
	this.email = email;
}

private String name;
private String password;
private String gender;
private String email;
private String profile;

public String getProfile() {
	return profile;
}
public void setProfile(String profile) {
	this.profile = profile;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}


}