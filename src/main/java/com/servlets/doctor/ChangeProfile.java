package com.servlets.doctor;

import java.io.IOException;

import com.Conn.Connec;
import com.dao.DoctorDao;
import com.entity.Doctor;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/changeprofile")
public class ChangeProfile extends HttpServlet {
	
   @Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	   HttpSession hs = req.getSession();
	 
	   int id = Integer.parseInt(req.getParameter("hd"));
	   Doctor dob = new Doctor();
	   dob.setId(id);
	   dob.setName(req.getParameter("N"));
	   dob.setQualification(req.getParameter("Q"));
	   dob.setSpecialist(req.getParameter("S"));
	   dob.setEmail(req.getParameter("E"));
	   dob.setMob(req.getParameter("C"));
	   
	   DoctorDao dd = new DoctorDao(Connec.getCon());
	  
	   if(dd.changeProfile(dob)) {
		   hs.setAttribute("sucP", "Profile Updated Succellfully....");
		   resp.sendRedirect("Doctor/edit.jsp");
	   }else {
		   hs.setAttribute("unsucP", "Something Went Wrong Try Again.....");
		   resp.sendRedirect("Doctor/edit.jsp");
	   }
	   
	}


}
