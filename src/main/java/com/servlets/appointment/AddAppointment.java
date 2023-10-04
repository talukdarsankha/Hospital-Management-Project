package com.servlets.appointment;

import java.io.IOException;
import java.sql.Connection;

import com.Conn.Connec;
import com.dao.AppointmentDao;
import com.entity.Appointment;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/addappointment")
public class AddAppointment extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Appointment ob = new Appointment();
       int userid= Integer.parseInt(req.getParameter("hid"));
       String name=req.getParameter("AN");
       String age= req.getParameter("AA");
       String email=req.getParameter("AE");
       String disease = req.getParameter("AD");
       String gender = req.getParameter("AG");
       String date = req.getParameter("ADT");
       String phone = req.getParameter("AP");
       String address = req.getParameter("AADD");
       int doctorid= Integer.parseInt(req.getParameter("AS"));
       
       
       Appointment obj = new Appointment(userid, name, age, email, disease, gender, date, phone, doctorid, address, "Pending");   
       
       AppointmentDao ad = new AppointmentDao(Connec.getCon());
        boolean f=ad.add(obj);
        HttpSession hs = req.getSession();
        if(f) {
        	hs.setAttribute("suc", "Appointment Created Successfully.......");
        	resp.sendRedirect("userAppoinment.jsp");
        	
        }else {
        	hs.setAttribute("unsuc", "Something went wrong......");
        	resp.sendRedirect("userAppoinment.jsp");
        }
   
}
}
