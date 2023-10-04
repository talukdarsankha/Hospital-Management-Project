package com.servlets.doctor;

import java.io.IOException;
import java.sql.Connection;

import com.Conn.Connec;
import com.dao.DoctorDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/ChanDocPass")
public class ChangePassword extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("h"));
		String old=req.getParameter("DOP");
		String ne = req.getParameter("DNP");
		DoctorDao dd = new DoctorDao(Connec.getCon());
		HttpSession hs = req.getSession();
		if(dd.changepass(id, ne, old)) {
			hs.setAttribute("suc", "Password Changed");
			resp.sendRedirect("Doctor/edit.jsp");
		}else {
			hs.setAttribute("unsuc", "Wrong Password");
			resp.sendRedirect("Doctor/edit.jsp");
		}
		
	}

}
