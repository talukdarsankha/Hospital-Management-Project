<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.Conn.Connec"%>
<%@page import="com.dao.AppointmentDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@page isELIgnored="false" %>
    <%@page import="com.dao.AppointmentDao" %>
    <%@page import="com.dao.DoctorDao" %>
    <%@page import="java.util.*" %>
    <%@page import="com.entity.Appointment" %>
    <%@page import="com.entity.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="boostrap.jsp" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<body>
    
    
    
    
    <c:if test="${empty log}">
<header>
   <nav style="display: flex; background-color: skyblue; padding-top: 10px; box-shadow: 0px 0px 10px gray;">
     <ul class="left" style="display: flex ; ">
      <li style="list-style: none; margin: 0px 10px; font-weight: bold; color: white;"><a href="index.jsp" style="color: white; text-decoration: none;"> <i class="fa-solid fa-house-medical fa-flip"></i> MEDICAL&nbsp;&nbsp;HOME </a></li>
      
     </ul>
     
     <input type="search" style=" border-radius: 7px; height: 46px ; margin-bottom: 3px;  margin-left: 40px; padding: 24px;" placeholder=Search><button style="width: 80px; background-color: greenyellow; margin-left: 10px; margin-top: 5px; height: 40px ;border-radius: 9px; display: flex;">Search <i class="fa-solid fa-magnifying-glass"></i> </button>
      <ul class="right" style="display: flex ; margin-left:  200px;">
      <li style="list-style: none; margin: 0px 10px; font-weight: bold; color: white;"><a href="adminLogin.jsp" style="color: white; text-decoration: none;"> <i class="fa-regular fa-hospital"></i> ADMIN </a></li>
      <li style="list-style: none; margin: 0px 10px; font-weight: bold; color: white;"><a href="doctorLogin.jsp" style="color: white; text-decoration: none;"> <i class="fa-solid fa-user-doctor fa-beat"></i> DOCTOR</a></li>
      <li style="list-style: none; margin: 0px 10px; font-weight: bold; color: white;"><a href="userAppoinment.jsp" style="color: white; text-decoration: none;"> <i class="fa-solid fa-calendar-check"></i> APPOINTMENT</a></li>
      <li style="list-style: none; margin: 0px 10px; font-weight: bold; color: white;"><a href="userLogin.jsp" style="color: white; text-decoration: none;"> <i class="fa-solid fa-right-to-bracket"></i> USER</a></li>
      
     </ul>
   </nav>
</header>
</c:if>





<c:if test="${not empty log}">
<header>
   <nav style="display: flex; background-color: skyblue; padding-top: 10px; box-shadow: 0px 0px 10px gray;">
     <ul class="left" style="display: flex ; ">
      <li style="list-style: none; margin: 0px 10px; font-weight: bold; color: white;"><a href="index.jsp" style="color: white; text-decoration: none;"> <i class="fa-solid fa-house-medical fa-flip"></i> MEDICAL&nbsp;&nbsp;HOME </a></li>
      
     </ul>
     
     <input type="search" style=" border-radius: 7px; height: 46px ; margin-bottom: 3px;  margin-left: 40px; padding: 24px;" placeholder=Search><button style="width: 80px; background-color: greenyellow; margin-left: 10px; margin-top: 5px; height: 40px ;border-radius: 9px; display: flex;">Search <i class="fa-solid fa-magnifying-glass"></i> </button>
      <ul class="right" style="display: flex ; margin-left:  250px;">
      <li style="list-style: none; margin: 0px 10px; font-weight: bold; color: white;"><a href="userAppoinment.jsp" style="color: white; text-decoration: none;"> <i class="fa-regular fa-calendar-check"></i> Appoinment</a></li>
      <li style="list-style: none; margin: 0px 10px; font-weight: bold; color: white;"><a href="viewappointment.jsp" style="color: white; text-decoration: none;"> <i class="fa-solid fa-calendar-check"></i> View Appoinments</a></li>
      
      
     </ul>
     
   
<div class="btn-group" style="margin: 6px 10px;  margin-bottom: 15px;">
  <button type="button" class="btn btn-success dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
    <i class="fa-regular fa-circle-user"></i> &nbsp${log.name}
  </button>
  <ul class="dropdown-menu">
    <li><a class="dropdown-item" href="#">Change password <i class="fa-solid fa-lock"></i></a></li>
    <li><a class="dropdown-item" href="#">Another action</a></li>
    <li><a class="dropdown-item" href="uselogout"> Logout <i class="fa-solid fa-right-from-bracket"></i> </a></li>
  </ul>
</div>
   </nav>
</header>
</c:if>

<div style="height: 200px; box-shadow: 0px 0px 12px gray; margin-bottom: 0px;">
    <img alt="" src="imgaes/stock-photo-modern-hospital-style-building-212251981.jpg" style="height: 200px; width: 100%">
</div>

 <div style="display: flex; box-shadow: 0px 0px 12px gray;  width: 100%; ">
 
	 <div style="padding: 10px; border-radius:9px; box-shadow: 0px 0px 12px gray; margin: 20px;  width: 900px; margin-left: 30px;">
	 <h3 style="text-align: center; color: green;">Your Appointments List</h3>
	 
		 <div style="padding: 10px;  ">
		 
		  <table class="table">
  <thead>
    <tr>
      <th scope="col">Name</th>
      <th scope="col">Age</th>
      <th scope="col">Email</th>
      <th scope="col">Disease</th>
      <th scope="col">Appointment Date</th>
  
      <th scope="col">Gender</th>
      <th scope="col">Doctor name</th>
      <th scope="col">Status</th>
    </tr>
  </thead>
  <tbody>
  
  <%AppointmentDao ad = new AppointmentDao(Connec.getCon());
  DoctorDao dd = new DoctorDao(Connec.getCon());
  User obj= (User)session.getAttribute("log");
  List<Appointment>ll=ad.getAll(obj.getId());
   for(Appointment e: ll){
   Doctor ob = dd.getDoctorById(e.getDoctorid());%>  
	   <tr>
      <th scope="row"><%=e.getFullname() %></th>
      <td><%=e.getAge() %></td>
      <td><%=e.getEmail() %></td>
      <td><%=e.getDisease() %></td>
      <td><%=e.getDate() %></td>
      <td><%=e.getGender() %></td>
      <td><%=ob.getName() %></td>
      
      <td>
      <%if(e.getStatus().equals("Pending")){ %>
    	<button type="button" class="btn btn-warning">  <%=e.getStatus() %> <i class="fa-regular fa-clock fa-sm"></i> </button>
      <%}else{ %> 
     <button type="button" class="btn btn-primary">Solved <i class="fa-solid fa-certificate" style="color: #51fe06;"> </i></button>
     <%} %>
      </td>
      
    </tr>
  <%}
  %>
  
    
   
     
  </tbody>
</table>
		  
		  
		 </div>
	 
	 </div>
	 
	 <div style="padding: 20px; margin: 16px;  width: 300px;">
	 <img alt="" src="imgaes/9d85ef63db3691882dee8b0d2dd08a4c.jpg" style="height: 320px; width: 100%">
	 </div>
 
 
 
 </div>

    
    
    
    
</body>
</html>