package com.servlets.user;

import java.io.IOException;

import com.Conn.Connec;
import com.dao.Dao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/changepass")
public class ChangePassword extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id= Integer.parseInt(req.getParameter("h"));
				
		String oldpass= req.getParameter("COP");
		String newpass= req.getParameter("CNP");
		
		Dao d = new Dao(Connec.getCon());
		HttpSession hs = req.getSession();
		if(d.changepassword(id, oldpass, newpass)) {
			hs.setAttribute("upd", "Password Changed Successfully");
			resp.sendRedirect("changePassword.jsp");
		}
		else {
			hs.setAttribute("notupd", "Incorrect Old Password");
			resp.sendRedirect("changePassword.jsp");
		}
		
		
	}

}
