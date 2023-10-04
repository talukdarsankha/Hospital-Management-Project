package com.servlets.admin;

import java.io.IOException;
import java.sql.Connection;

import com.Conn.Connec;
import com.dao.DoctorDao;
import com.entity.Doctor;
import com.entity.Specialist;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/adddoctor")
public class AddDoctor extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name=req.getParameter("DN");
		String qu=req.getParameter("DQ");
		String specialist = req.getParameter("DS");
		String email = req.getParameter("DE");
		String mob =req.getParameter("DM");
		String pass= req.getParameter("DP");
		Doctor doc = new Doctor(name,qu,specialist,email,mob,pass);
		DoctorDao dd = new DoctorDao(Connec.getCon());
		boolean f = dd.addDoctor(doc);
		HttpSession hs = req.getSession();
		if(f) {
			hs.setAttribute("dadd", "Doctor Added Successfully......");
			resp.sendRedirect("admin/doctor.jsp");
		}else {
			hs.setAttribute("dnotadd", "Something went Wrong on Server......Try again...");
			resp.sendRedirect("admin/doctor.jsp");
		}
		
	}
 
}
