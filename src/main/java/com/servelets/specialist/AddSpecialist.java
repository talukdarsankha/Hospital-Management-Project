package com.servelets.specialist;

import java.io.IOException;

import com.Conn.Connec;
import com.dao.SpecialistDao;
import com.entity.Specialist;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/addSepcialist")
public class AddSpecialist extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String name=req.getParameter("SN");
		Specialist ob = new Specialist();
		
		ob.setName(name);
		SpecialistDao sd = new SpecialistDao(Connec.getCon());
		boolean f = sd.addSepcialist(ob);
		HttpSession hs = req.getSession();
		if(f) {
			hs.setAttribute("addspe", "Added Successfully......");
			resp.sendRedirect("admin/index.jsp");
		}else {
			hs.setAttribute("notaddspe", "Something went wrong......");
			resp.sendRedirect("admin/index.jsp");
		}
	}
  
}
