package com.entity;

public class Doctor {
	private int id;
  private String name;
  private String qualification;
  private String specialist;
  private String email;
  private String mob;
  private String password;
  
  
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getQualification() {
	return qualification;
}
public void setQualification(String qualification) {
	this.qualification = qualification;
}
public String getSpecialist() {
	return specialist;
}
public void setSpecialist(String specialist) {
	this.specialist = specialist;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getMob() {
	return mob;
}
public void setMob(String mob) {
	this.mob = mob;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public Doctor() {
	super();
}
public Doctor(String name, String qualification, String specialist, String email, String mob, String password) {
	super();
	this.name = name;
	this.qualification = qualification;
	this.specialist = specialist;
	this.email = email;
	this.mob = mob;
	this.password = password;
}


  
  
}
