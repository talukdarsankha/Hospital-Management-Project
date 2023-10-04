<%@page import="com.Conn.Connec"%>
<%@page import="com.dao.AppointmentDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${ empty doclog }">
<c:redirect url="../doctorLogin.jsp"></c:redirect>
</c:if>
<%@include file="nav.jsp" %>

<%AppointmentDao ad = new AppointmentDao(Connec.getCon()) ; %>


 <h3 style="text-align: center; color: gray;margin-top: 15px; margin-bottom: 20px;"> Doctor Dashboard</h3>
	<div style="margin-top 15px; display: flex; width:800px; margin: auto;">
	<div style="width: 350px; height: 200px; border-radius:11px; box-shadow: 0px 0px 12px gray; margin: 10px;">
	 <div style="width: 30px; margin: auto; margin-top: 30px;">
		 <i class="fa-solid fa-user-doctor fa-2xl" style="color: green;" ></i>
		 </div>
	<h3 style="text-align: center; color:Green;margin-top 15px; margin-bottom: 10px;">doctor</h3>
    <h5 style="text-align: center; color: Green;margin-top :px; margin-bottom: 20px;">
    <%=ad.countDoctors() %>
    </h5>
	
	</div>
	
	
	<div style="width: 350px; height: 200px; border-radius:11px; box-shadow: 0px 0px 12px gray;margin: 10px;" >
	<div style="width: 30px; margin: auto; margin-top: 30px">
		<i class="fa-solid fa-calendar-check fa-2xl" style="align-items: center; color: green;"></i>
		</div>
	<h3 style="text-align: center; color: Green;margin-top 15px; margin-bottom: 10px;">Total Appointments</h3>
	<h5 style="text-align: center; color: Green;margin-top :px; margin-bottom: 20px;">
	<%=ad.countAppointment() %>
	</h5>
	</div>


</div>
</body>
</html>