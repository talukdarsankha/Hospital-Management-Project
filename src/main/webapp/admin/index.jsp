<%@page import="com.Conn.Connec"%>
<%@page import="com.dao.AppointmentDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<c:if test="${ empty admin }">
 <c:redirect url="../adminLogin.jsp"></c:redirect>
</c:if>
<%@include file="navbar.jsp" %>

<div style="width: 1200px; margin: auto; margin-top: 60px; color: green; margin-bottom: 60px;" >
 <h3 style="text-align: center;">Admin Dashbord</h3>

 <c:if test="${ not empty addspe}">
	 <p style="text-align: center; color: green;">"${addspe}"</p>
	  <c:remove var="addspe"/>
	 </c:if>
	  <c:if test="${ not empty notaddspe}">
	 <p style="text-align: center; color: red;">"${notaddspe}"</p>
	  <c:remove var="notaddspe"/>
	 </c:if>
 
 <%AppointmentDao apd = new AppointmentDao(Connec.getCon()); %>
 
 
	<div style="display: flex;  ">
		   <div style="box-shadow: 0px 0px 10px gray; width: 300px; height: 170px; padding: 50px; margin: 10px;">
		 <div style="width: 30px; margin: auto;">
		 <i class="fa-solid fa-user-doctor fa-2xl" ></i>
		 </div>
		 <h3 style="text-align: center;color: gray;">Doctors</h3>
		 <h3 style="text-align: center;">
		 <%=apd.countDoctors() %>
		 </h3>
		
		</div>
		<div style="box-shadow: 0px 0px 10px gray;width: 300px; height: 170px; padding: 50px; margin: 10px;">
		<div style="width: 30px; margin: auto;">
		<i class="fa-solid fa-users fa-2xl" style="align-items: center;"></i>
		</div>
		<h3 style="text-align: center;color: gray;">Total Users</h3>
		<h3 style="text-align: center;">
		<%=apd.countUsers() %>
		</h3>
		</div>
		<div style="box-shadow: 0px 0px 10px gray; width: 300px; height: 170px;padding: 50px; margin: 10px;">
		<div style="width: 30px; margin: auto;">
		<i class="fa-solid fa-calendar-check fa-2xl" style="align-items: center;"></i>
		</div>
		<h3 style="text-align: center;color: gray;">Appoinments</h3>
		<h3 style="text-align: center;">
		<%=apd.countAppointment() %>
		</h3>
		
		</div>
	</div>
	<div style="display:flex;">
	<div style="box-shadow: 0px 0px 10px gray;  width: 300px;height: 170px; margin-top: 20px;padding: 50px;margin: 10px; ">
	  <div style="width: 30px; margin: auto;">
		<i class="fa-solid fa-user-nurse fa-2xl" style="align-items: center;"></i>
		</div>
	  <h3 style="text-align: center;color: gray;">Nurses</h3>
	  <h3 style="text-align: center;">22</h3>
	</div>
	
	 <div style="box-shadow: 0px 0px 10px gray; width: 300px; height: 170px; padding: 50px; margin: 10px;" data-bs-toggle="modal" data-bs-target="#exampleModal">
		 <div style="width: 30px; margin: auto;">
		 <i class="fa-solid fa-user-doctor fa-2xl" ></i>
		 </div>
		 <h3 style="text-align: center;color: gray;">Specialist</h3>
		 <h3 style="text-align: center;">
		 <%=apd.countSepcialist() %>
		 </h3>
		
		</div>

</div>









	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel">Add Specialist</h5>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	        
	       <form action="../addSepcialist" method="post">

	   
	  <div class="mb-3">
	    <label for="exampleInputPassword1" class="form-label">Name</label>
	    <input type="text" class="form-control" id="exampleInputPassword1" name="SN" placeholder="Specialist Name">
	  </div>
	  
	  <button type="submit" class="btn btn-primary">Add</button>
	</form>
	        
	        
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
	        <button type="button" class="btn btn-primary">Save changes</button>
	      </div>
	    </div>
	  </div>
	</div>






</body>

</html>