package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.Conn.Connec;
import com.entity.Specialist;
import com.mysql.cj.xdevapi.Statement;

public class SpecialistDao {
	private Connection con;
	public SpecialistDao(Connection con) {
		this.con=con;
	}
	
	public boolean addSepcialist(Specialist ob) {
		boolean f = false;
		try {
		PreparedStatement ps= con.prepareStatement("insert into specialist (name)values(?)");
		ps.setString(1, ob.getName());
		int a=ps.executeUpdate();
		if(a==1) f=true;
		}catch (Exception e) {
			System.out.print(e);
		}
		return f;
	}
	
   public List<Specialist> getAllSpecialist(){
	   List<Specialist> ll =new ArrayList<>();
	    try {
	    	PreparedStatement ps= con.prepareStatement("select * from specialist");
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				Specialist ob = new Specialist();
				ob.setId(rs.getInt(1));
				ob.setName(rs.getString(2));
				ll.add(ob);
			}
	    }catch (Exception e) {
			System.out.print(e);
		}
	   
	   return ll;
   }
	
	
	 

}
