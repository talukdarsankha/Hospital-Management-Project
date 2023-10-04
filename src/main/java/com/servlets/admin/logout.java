package com.servlets.admin;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/adminlogout")
public class logout extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession hs= req.getSession();
		hs.removeAttribute("admin");
		hs.setAttribute("logout", "logout Successfully.....");
		resp.sendRedirect("adminLogin.jsp");
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
