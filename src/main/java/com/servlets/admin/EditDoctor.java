package com.servlets.admin;

import java.io.IOException;
import java.sql.Connection;

import com.Conn.Connec;
import com.dao.DoctorDao;
import com.entity.Doctor;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/editdoctor")
public class EditDoctor extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("EN");
		String qualification = req.getParameter("EQ");
		String specialist = req.getParameter("ES") ;
		String email = req.getParameter("EE");
		String mob = req.getParameter("EM");
		String password = req.getParameter("EP");
		Doctor dc = new Doctor();
		dc.setId(Integer.parseInt(req.getParameter("hid")));
		dc.setName(name);
		dc.setQualification(qualification);
		dc.setSpecialist(specialist);
		dc.setEmail(email);
		dc.setMob(mob);
		dc.setPassword(password);
		
		DoctorDao dd = new DoctorDao(Connec.getCon());
		boolean f=dd.update(dc);
		HttpSession hs = req.getSession();
		if(f) {
			hs.setAttribute("suc", "Successfully Updated......");
			resp.sendRedirect("admin/doctor.jsp");
		}else {
			hs.setAttribute("unsuc", "Unable to update Somthing went Wrong......");
			resp.sendRedirect("admin/doctor.jsp");
		}
		
		
		
		
	}

}
