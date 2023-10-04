<%@page import="com.dao.DoctorDao"%>
<%@page import="com.Conn.Connec"%>
<%@page import="com.dao.AppointmentDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.*" %>
    <%@page import="com.entity.Appointment" %>
    <%@page import="com.entity.Doctor" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@include file="navbar.jsp" %>
<div style="width: 95%;  padding:15px; margin: auto; box-shadow: 0px 0px 12px; margin-top:25px; border-radius: 12px; margin-bottom:70px;">

<h3 style="text-align: center; margin: 15px;"> Patient Details</h3>

<table class="table">
  <thead>
    <tr>
      <th scope="col">Full Name</th>
      <th scope="col">Gender</th>
      <th scope="col">Age</th>
      <th scope="col">Appointment Date</th>
      <th scope="col">Email</th>
      <th scope="col">Phone no.</th>
      <th scope="col">Disease</th>
      <th scope="col">Doctor Name</th>
      <th scope="col">Full Address</th>
      <th scope="col">Status</th>
      
    </tr>
  </thead>
  <tbody>
  
  <%AppointmentDao ad = new AppointmentDao(Connec.getCon()) ;
  DoctorDao dd = new DoctorDao(Connec.getCon());
   List<Appointment>ll=ad.getAllAppointment();
   for(Appointment e: ll){
    Doctor dob=dd.getDoctorById(e.getDoctorid());
   %>
	   <tr>
      <th scope="row"><%=e.getFullname() %></th>
      <td><%=e.getGender() %></td>
      <td><%=e.getAge() %></td>
      <td><%=e.getDate() %></td>
      <td><%=e.getEmail() %></td>
      <td><%=e.getPhoneno() %></td>
      <td><%=e.getDisease() %></td>
      <td><%=dob.getName() %></td>
      <td><%=e.getAddress() %></td>
      <td>
      <%if(e.getStatus().equals("Pending")){%> 
      <button type="button" class="btn btn-warning"> Pending  <i class="fa-regular fa-clock fa-sm"></i> </button>
      
      <% }else{%>
    	  <button type="button" class="btn btn-primary">Solved <i class="fa-solid fa-certificate" style="color: #51fe06;"> </i></button>
    	     
     <%}
      %>
      </td>
      
    </tr>
  <% }
  %>
    
    
  </tbody>
</table>



</div>
  <footer style="background-color: black">
     <p style="color: white; padding: 4px; text-align: center; height: 60px; padding-top: 25px;"> &#169;Copyright hospital management.com All right reserved</p>
  </footer>

</body>
</html>