package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Appointment;

public class AppointmentDao {

	private Connection con;
	public AppointmentDao(Connection con) {
		this.con=con;
	}
	
	public boolean add(Appointment ob) {
		boolean f=false;
		try {
			String s="insert into appointment(userid,fullname,age,email,disease,gender,appointmentdate, phoneno,doctorid,address,status) values(?,?,?,?,?,?,?,?,?,?,?); ";
			PreparedStatement ps = con.prepareStatement(s);
			ps.setInt(1, ob.getUserid());
			ps.setString(2, ob.getFullname());
			ps.setString(3, ob.getAge());
			ps.setString(4, ob.getEmail());
			ps.setString(5, ob.getDisease());
			ps.setString(6, ob.getGender());
			ps.setString(7, ob.getDate());
			ps.setString(8, ob.getPhoneno());
			ps.setInt(9, ob.getDoctorid());
			ps.setString(10, ob.getAddress());
			ps.setString(11, ob.getStatus());
			
			int a = ps.executeUpdate();
			if(a==1) f=true;
		}
		catch (Exception e) {
			System.out.print(e);
		}
		return f;
	}
	 
	public List<Appointment> getAllAppointment(){
		List<Appointment> ll = new ArrayList<Appointment>();
		Appointment ob = null;
		try {
			PreparedStatement ps = con.prepareStatement("select * from appointment");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				ob=new Appointment();
				 ob.setId(rs.getInt(1));
				   ob.setUserid(rs.getInt(2));
				   ob.setFullname(rs.getString(3));
				   ob.setAge(rs.getString(4));
				   ob.setEmail(rs.getString(5));
				   ob.setDisease(rs.getString(6));
				   ob.setGender(rs.getString(7));
				   ob.setDate(rs.getString(8));
				   ob.setPhoneno(rs.getString(9));
				   ob.setDoctorid(rs.getInt(10));
				   ob.setAddress(rs.getString(11));
				   ob.setStatus(rs.getString(12));
				   ll.add(ob);
			}
		}catch (Exception e) {
			System.out.print(e);
		}
		return ll;
	}
	
	public List<Appointment> getAll(int id) {
		List<Appointment> ll = new ArrayList<Appointment>();
		try {
			PreparedStatement ps = con.prepareStatement("select * from appointment where userid=?");
		   ps.setInt(1, id);
		   ResultSet rs = ps.executeQuery();
		   while(rs.next()) {
			   Appointment ob = new Appointment();
			   ob.setId(rs.getInt(1));
			   ob.setUserid(rs.getInt(2));
			   ob.setFullname(rs.getString(3));
			   ob.setAge(rs.getString(4));
			   ob.setEmail(rs.getString(5));
			   ob.setDisease(rs.getString(6));
			   ob.setGender(rs.getString(7));
			   ob.setDate(rs.getString(8));
			   ob.setPhoneno(rs.getString(9));
			   ob.setDoctorid(rs.getInt(10));
			   ob.setAddress(rs.getString(11));
			   ob.setStatus(rs.getString(12));
			   ll.add(ob);
		   }
		  
		}
		catch (Exception e) {
			System.out.print(e);
		}
		return ll;
	}
	
	
	public List<Appointment> getAllbydocid(int id){
		List<Appointment> ll = new ArrayList<Appointment>();
		try {
			PreparedStatement ps = con.prepareStatement("select * from appointment where doctorid=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Appointment ao= new Appointment();
				ao.setId(rs.getInt(1));
				ao.setUserid(rs.getInt(2));
				ao.setFullname(rs.getString(3));
				ao.setAge(rs.getString(4));
				ao.setEmail(rs.getString(5));
				ao.setDisease(rs.getString(6));
				ao.setGender(rs.getString(7));
				ao.setDate(rs.getString(8));
				ao.setPhoneno(rs.getString(9));
				ao.setDoctorid(rs.getInt(10));
				ao.setAddress(rs.getString(11));
				ao.setStatus(rs.getString(12));
				ll.add(ao);
			}
		}catch (Exception e) {
			System.out.print(e);
		}
		return ll;
	}
	
	
	public Appointment getAppoinById(int id) {
		Appointment ao= null;
		try {
			PreparedStatement ps = con.prepareStatement("select * from Appointment where id =?");
		   ps.setInt(1, id);
		   ResultSet rs = ps.executeQuery();
		   while(rs.next()) {
			   ao=new Appointment();
			   ao.setId(rs.getInt(1));
				ao.setUserid(rs.getInt(2));
				ao.setFullname(rs.getString(3));
				ao.setAge(rs.getString(4));
				ao.setEmail(rs.getString(5));
				ao.setDisease(rs.getString(6));
				ao.setGender(rs.getString(7));
				ao.setDate(rs.getString(8));
				ao.setPhoneno(rs.getString(9));
				ao.setDoctorid(rs.getInt(10));
				ao.setAddress(rs.getString(11));
				ao.setStatus(rs.getString(12));
		   }
		}
		catch (Exception e) {
			System.out.print(e);
		}
		return ao;
	}
	
	public boolean updateStatus(int id,String status) {
		boolean f=false;
		try {
			PreparedStatement ps = con.prepareStatement("update appointment set status=? where id =?");
		ps.setString(1, status);
		ps.setInt(2, id);
		int a = ps.executeUpdate();
		if(a==1)f=true;
		}
		catch (Exception e) {
			System.out.print(e);
		}
		return f;
	}
	
	
	
	public int countDoctors() {
		int count=0;
		try {
			PreparedStatement ps = con.prepareStatement("select * from doctor");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				count++;
			}
		}catch (Exception e) {
			System.out.print(e);
		}
		return count;
	}
	
	public int countSepcialist() {
		int count=0;
		try {
			PreparedStatement ps = con.prepareStatement("select * from specialist");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				count++;
			}
		}catch (Exception e) {
			System.out.print(e);
		}
		return count;
	}
	
	public int countUsers() {
		int count=0;
		try {
			PreparedStatement ps = con.prepareStatement("select * from user");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				count++;
			}
		}catch (Exception e) {
			System.out.print(e);
		}
		return count;
	}
	
	public int countAppointment() {
		int count=0;
		try {
			PreparedStatement ps = con.prepareStatement("select * from appointment");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				count++;
			}
		}catch (Exception e) {
			System.out.print(e);
		}
		return count;
	}
	
	
}
