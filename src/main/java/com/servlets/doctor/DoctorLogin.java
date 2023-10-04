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

@WebServlet("/doctorloginSer")
public class DoctorLogin extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("DOE");
		int password=Integer.parseInt(req.getParameter("DOP"));
		
		DoctorDao dd = new DoctorDao(Connec.getCon());
		 Doctor doc=dd.isPresent(email, password);
		 HttpSession hs = req.getSession();
		 if(doc!=null) {
			 hs.setAttribute("doclog", doc);
			 resp.sendRedirect("Doctor/doctor.jsp");
		 }else {
			 hs.setAttribute("docunlog", "No doctor present by this email and password");
			 resp.sendRedirect("doctorLogin.jsp");
		 }
	}

}
