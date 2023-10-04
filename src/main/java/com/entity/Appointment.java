package com.entity;

public class Appointment {

	private int id;
	private int userid;
	private String fullname;
	private String age;
	private String email;
	private String disease;
	private String gender;
	private String date;
	private String phoneno;
	private int doctorid;
	private String address;
	private String status;
	
	
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDisease() {
		return disease;
	}
	public void setDisease(String disease) {
		this.disease = disease;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getPhoneno() {
		return phoneno;
	}
	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}
	public int getDoctorid() {
		return doctorid;
	}
	public void setDoctorid(int doctorid) {
		this.doctorid = doctorid;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
	
	
	public Appointment() {
		
	}
	public Appointment(int userid, String fullname, String age, String email, String disease, String gender,
			String date, String phoneno, int doctorid, String address, String status) {
		super();
		this.userid = userid;
		this.fullname = fullname;
		this.age = age;
		this.email = email;
		this.disease = disease;
		this.gender = gender;
		this.date = date;
		this.phoneno = phoneno;
		this.doctorid = doctorid;
		this.address = address;
		this.status = status;
	}
	
	
	
}
