package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.User;

public class Dao {
	Connection con;
  public Dao(Connection con) {
	  this.con=con;
  }
  
  public boolean insertUser(User us) {
	  boolean f=false;
	  try {
		 PreparedStatement psd= con.prepareStatement("insert into user (name,email,password) values (?,?,?)");
	     psd.setString(1, us.getName());
	     psd.setString(2, us.getEmail());
	     psd.setString(3, us.getPassword());
	     int a = psd.executeUpdate();
	     if(a==1) {
	    	 f=true;
	     }
	  }
	  catch (Exception e) {
		System.out.print(e);
	}

	  return f;
  }
  
public User isUser(String email,String password) {
	User ob=null;
	try {
		PreparedStatement ps =con.prepareStatement("select * from user where email=? and password=?");
	    ps.setString(2, password);
	    ps.setString(1, email);
	   ResultSet rs= ps.executeQuery();
	   while(rs.next()) {
		  
		   ob=new User();
		   ob.setId(rs.getInt(1));
		   ob.setName(rs.getString(2));
		   ob.setEmail(rs.getString(3));
		   ob.setPassword(rs.getString(4));
	   }
	}catch (Exception e) {
		System.out.print(e);
	}
	return ob;
}

public boolean changepassword(int id,String oldpassword,String newpassword) {
	boolean f = false;
	try {
		PreparedStatement ps =con.prepareStatement("update user set password=? where id=? and password=?");
	    ps.setString(1, newpassword);
	    ps.setString(3, oldpassword);
	    ps.setInt(2, id);
	    int a =ps.executeUpdate();
	    if(a==1)f=true;
	}
	catch (Exception e) {
		System.out.print(e);
	}
	return f;
}
  
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
