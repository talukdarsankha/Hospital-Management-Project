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

@WebServlet("/resigter")
public class UserServlet extends HttpServlet {
  
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		User ob = new User(req.getParameter("N"),req.getParameter("E"),req.getParameter("P"));
		Dao o = new Dao(Connec.getCon());
		boolean f=o.insertUser(ob);
		HttpSession hs = req.getSession();
		if(f) {
			hs.setAttribute("su","You are Registered Successfully......");
			resp.sendRedirect("uregister.jsp");
		}else {
			hs.setAttribute("unsu","Register Not Successfully......try Agin");
			resp.sendRedirect("uregister.jsp");
		}
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
