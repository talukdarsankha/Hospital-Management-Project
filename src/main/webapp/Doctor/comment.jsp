<%@page import="com.Conn.Connec"%>
<%@page import="com.entity.Appointment"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.dao.AppointmentDao"%>
<%@page import="com.mysql.cj.jdbc.ha.ReplicationMySQLConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@include file="nav.jsp" %>


<div style="height:160px; width: 100%">
<img alt="" src="../imgaes/news-4-opengraph_3x.jpeg" style="height:150px;; width: 100%">
</div>


<div style="box-shadow:  0px 0px 12px gray; padding: 15px; margin-top: 10px;  width: 700px; margin: auto; border-radius: 10px; margin-bottom: 50px;">
<h3 style="text-align: center;">Give Your Suggestions</h3>

	<div style="margin-top: 6px;">
	<% int id = Integer.parseInt(request.getParameter("v"));
	  AppointmentDao ad = new AppointmentDao(Connec.getCon());
	  Appointment ao= ad.getAppoinById(id);
	%>
							<form action="../updateStatus" method="post">
			<div style="display: flex;width: 600px; margin-left: 40px;" >
			   <div style="margin: 3px; width: 300px;">				
				  <div class="mb-3">
				    <label for="exampleInputEmail1" class="form-label">Patient Name</label>
				    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Name" name="PN" value="<%=ao.getFullname()%>">
				    </div>
				  <div class="mb-3">
				    <label for="exampleInputPassword1" class="form-label">Contact no.</label>
				    <input type="number" class="form-control" id="exampleInputPassword1" name="PC" value="<%=ao.getPhoneno()%>">
				      </div>
				</div> 
				
				<div style="margin: 3px;width: 300px;">				
				  <div class="mb-3">
				    <label for="exampleInputEmail1" class="form-label">Age</label>
				    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="PA" value="<%=ao.getAge()%>">
				    </div>
				  <div class="mb-3">
				    <label for="exampleInputPassword1" class="form-label">Disease</label>
				    <input type="text" class="form-control" id="exampleInputPassword1" name="PD" value="<%=ao.getDisease()%>">
				  </div>
				</div> 
				 
				
			</div>
			
			<div style="display: flex; margin-bottom: 20px;">
			<textarea rows="3" cols="40" style="padding: 5px;margin-left:  40px;"  name="com"></textarea>
			
			<div class="mb-3" style="width: 250px; margin: 0px 20px;">
				    <label for="exampleInputPassword1" class="form-label">Gender</label>
				    <input type="text" class="form-control" id="exampleInputPassword1" name="PG" value="<%=ao.getGender()%>">
				  </div>
		      </div>	
		      <input type="hidden" name="hai" value="<%=ao.getId()%>">		
				 <button type="submit" class="btn btn-primary" style="width: 250px; margin-left: 30px;">Submit &nbsp<i class="fa-regular fa-message fa-lg"></i></button>
				  </form>
			
	</div>
</div>

</body>
</html>