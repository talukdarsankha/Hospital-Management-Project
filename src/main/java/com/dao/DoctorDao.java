package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Doctor;

import jakarta.servlet.http.HttpServlet;


public class DoctorDao {
	private Connection con;
	public DoctorDao(Connection con) {
		this.con=con; 
	}
	
	public boolean addDoctor(Doctor ob) {
		boolean f = false;
		try {
			String s="insert into doctor (name,qualification,specialist,email,mobile,password) values(?,?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(s);
			ps.setString(1, ob.getName());
			ps.setString(2, ob.getQualification());
			ps.setString(4, ob.getEmail());
			ps.setString(3, ob.getSpecialist());
			ps.setInt(5, Integer.parseInt(ob.getMob()));
			ps.setInt(6, Integer.parseInt(ob.getPassword()));
			int a=ps.executeUpdate();
			if(a==1) f=true;
		}catch (Exception e) {
			System.out.print(e);
		}
		return f;
	}
	
	public List<Doctor> getAllDoctor(){
		List<Doctor> ll = new ArrayList<>();
		try {
			PreparedStatement ps = con.prepareStatement("select * from doctor");
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				Doctor doc = new Doctor();
				doc.setId(rs.getInt(1));
				doc.setName(rs.getString(2));
				
				doc.setQualification(rs.getString(3));
				doc.setSpecialist(rs.getString(4));
				doc.setEmail(rs.getString(5));
				doc.setMob(rs.getString(6));
				doc.setPassword(rs.getString(7));
				ll.add(doc);
			}
		}
		catch (Exception e) {
			System.out.print(e);
		}
		return ll;
	}
	
	public Doctor getDoctorById(int id) {
		Doctor dob=null;
		try {
			PreparedStatement ps = con.prepareStatement("select * from doctor where id=?");
			ps.setInt(1, id);
			ResultSet rs= ps.executeQuery();
			while(rs.next()) {
				dob = new Doctor();
				dob.setId(rs.getInt(1));
				dob.setName(rs.getString(2));
				dob.setQualification(rs.getString(3));
				dob.setSpecialist(rs.getString(4));
				dob.setEmail(rs.getString(5));
				dob.setMob(rs.getString(6));
				dob.setPassword(rs.getString(7));
			}
		}
		catch (Exception e) {
			System.out.print(e);
		}
		return dob;
	}
	
	public boolean update(Doctor ob) {
		boolean f=false;
		try {
			PreparedStatement ps = con.prepareStatement("update doctor set name=?,qualification=?,specialist=?,email=?,mobile=?,password=? where id=?");
		 ps.setString(1, ob.getName());
		 ps.setString(2,ob.getQualification());
		 ps.setString(3, ob.getSpecialist());
		 ps.setString(4,ob.getEmail());
		 ps.setInt(5, Integer.parseInt(ob.getMob()));
		 ps.setInt(6,Integer.parseInt(ob.getPassword()));
		 ps.setInt(7,ob.getId());
		 int a=ps.executeUpdate();
		 if(a==1) return f=true;
		}catch (Exception e) {
			System.out.print(e);
		}
		return f;
	}

	
	 public boolean delete(int id) {
		 boolean f=false;
		 try {
		 PreparedStatement ps = con.prepareStatement("delete from doctor where id=?");
		 ps.setInt(1, id);
		 int a=ps.executeUpdate();
		 if(a==1) f=true;
		 }
		 catch (Exception e) {
				System.out.print(e);
			}
			return f;
			
		 }
	 
	 public Doctor isPresent(String email,int pasword) {
		 Doctor doc=null;
		 try {
			 PreparedStatement ps = con.prepareStatement("select * from doctor where email=? and password=?");
			 ps.setString(1, email);
			 ps.setInt(2, pasword);
			 ResultSet rs= ps.executeQuery();
			 while(rs.next()) {
				 doc = new Doctor();
				 doc.setId(rs.getInt(1));
				 doc.setName(rs.getString(2));
				 doc.setQualification(rs.getString(3));
				 doc.setSpecialist(rs.getString(4));
				 doc.setEmail(rs.getString(5));
				 doc.setMob(rs.getString(6));
				 doc.setPassword(rs.getString(7));
				
			 }
		 }
			 catch (Exception e) {
					System.out.print(e);
				}
		
		 return doc;
	 }
	 
//	 public String getDctor(int id) {
//		 String name=null;
//		try {
//		PreparedStatement ps = con.prepareStatement("select name from doctor where id=?");	
//		ps.setInt(1, id);
//		ResultSet rs = ps.executeQuery();
//		while(rs.next()) {
//			name=rs.getString(1);
//		}
//		} catch (Exception e) {
//			System.out.print(e);
//		}
//		return name;
//	}
	 
	 
	 public boolean changepass(int id,String password,String old) {
		 boolean f= false;
		 try {
			 PreparedStatement ps = con.prepareStatement("update doctor set password=? where id=? and password=?");
			 ps.setString(1, password);
			 ps.setInt(2, id);
			 ps.setString(3, old);
			 int a =ps.executeUpdate();
			 if(a==1) f=true;
		 } catch (Exception e) {
				System.out.print(e);
			}
		 return f;
	 }
	 
	 public boolean changeProfile(Doctor ob) {
		 boolean f=false;
		 try {
			 PreparedStatement ps = con.prepareStatement("update doctor set name=?,qualification=?,specialist=?,email=?,mobile=? where id=? ");
			 ps.setString(1, ob.getName());
			 ps.setString(2, ob.getQualification());
			 ps.setString(3, ob.getSpecialist());
			 ps.setInt(5, Integer.parseInt(ob.getMob()));
			 ps.setString(4, ob.getEmail());
			 ps.setInt(6, ob.getId());
			 
			 int a =ps.executeUpdate();
			 if(a==1) f=true;
		 } catch (Exception e) {
				System.out.print(e);
			}
		 return f;
	 }
}
