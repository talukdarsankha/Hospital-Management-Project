package com.servlets.appointment;

import java.io.IOException;

import com.Conn.Connec;
import com.dao.AppointmentDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/updateStatus")
public class UpdateAppointment extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int apoid=Integer.parseInt(req.getParameter("hai"));
		String comment = req.getParameter("com");
		AppointmentDao ad = new AppointmentDao(Connec.getCon());
		HttpSession hs = req.getSession();
		if(ad.updateStatus(apoid, comment)) {
			hs.setAttribute("suc", "Status Updated....");
			resp.sendRedirect("Doctor/pitent.jsp");
		}else {
			hs.setAttribute("unsuc", "Status Not Updated.....");
			resp.sendRedirect("Doctor/pitent.jsp");
		}
	}

	 
}
