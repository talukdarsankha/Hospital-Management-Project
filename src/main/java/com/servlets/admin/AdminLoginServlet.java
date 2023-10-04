package com.servlets.admin;

import java.io.IOException;

import com.entity.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/admin")
public class AdminLoginServlet extends HttpServlet {
	

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email=req.getParameter("AE");
		String password=req.getParameter("AP");
		HttpSession hs= req.getSession();
		if(email.equals("admin@gmail.com")&&password.equals("1234")) {
			hs.setAttribute("admin", "Login Successfull...");
			resp.sendRedirect("admin/index.jsp");
		}else {
			hs.setAttribute("invalid", "Invalid password or email....");
			resp.sendRedirect("adminLogin.jsp");
		}
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
