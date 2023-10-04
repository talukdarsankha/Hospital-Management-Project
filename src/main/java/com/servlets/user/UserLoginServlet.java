package com.servlets.user;

import java.io.IOException;

import com.Conn.Connec;
import com.dao.Dao;
import com.entity.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/usloginservlet")
public class UserLoginServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email=req.getParameter("ULE");
		String password=req.getParameter("ULP");

		Dao da = new Dao(Connec.getCon());
		User uo= da.isUser(email, password);
		 HttpSession hs = req.getSession();
		 
		if(uo!=null) {
			hs.setAttribute("log", uo);
			resp.sendRedirect("index.jsp");
		}else {
			hs.setAttribute("unlog", "Incorrect email or password!!!!");
			resp.sendRedirect("userLogin.jsp");
		}
	}
  
}
