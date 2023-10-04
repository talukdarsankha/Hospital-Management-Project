package com.servlets.admin;

import java.io.IOException;

import com.Conn.Connec;
import com.dao.DoctorDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/deletedoctor")
public class DeleteDoctor extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		DoctorDao dd = new DoctorDao(Connec.getCon());
		int id = Integer.parseInt(req.getParameter("d"));
		boolean f=dd.delete(id);
		HttpSession hs= req.getSession();
		if(f) {
			hs.setAttribute("suc", "Deleted Successfully.........");
			resp.sendRedirect("admin/doctor.jsp");
		}else {
			hs.setAttribute("unsuc","Unable to Delete...... Try Again...");
			resp.sendRedirect("admin/doctor.jsp");
		}
	}
 
}
