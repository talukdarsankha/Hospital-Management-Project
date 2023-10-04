<%@page import="com.entity.Doctor"%>
<%@page import="com.Conn.Connec"%>
<%@page import="com.dao.AppointmentDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.*" %>
    <%@page import="com.entity.Appointment" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@include file="nav.jsp" %>

<div style="width: 95%; border-radius: 17px; margin:12px auto; box-shadow: 0px 0px 12px gray; padding: 12px;">

<h3 style="text-align: center; margin: 15px; ">Patient Appointments Details <i class="fa-solid fa-circle-info fa-xl"></i></h3>
	
	<c:if test="${not empty suc }">
	<h3 style="text-align: center; color: green;">"${suc }"</h3>
	<c:remove var="suc"/>
	</c:if>
	<c:if test="${not empty unsuc }">
	<h3 style="text-align: center; color: red;">"${unsuc }"</h3>
	<c:remove var="unsuc"/>
	</c:if>
	
	<div>
	
	
	<table class="table">
  <thead>
    <tr>
      <th scope="col">Full Name</th>
      <th scope="col">Gender</th>
      <th scope="col">Age</th>
      <th scope="col">Appointment Date</th>
      <th scope="col">Email</th>
      <th scope="col">Mob no.</th>
      <th scope="col">Disease</th>
      <th scope="col">Status</th>
      <th scope="col">Comment</th>
      
    </tr>
  </thead>
  <tbody>
  
  <%AppointmentDao ad = new AppointmentDao(Connec.getCon());
   Doctor db= (Doctor)session.getAttribute("doclog");
   List<Appointment>ll=ad.getAllbydocid(db.getId());
   for(Appointment e: ll){%>
	   
	   <tr>
      <th scope="row"><%=e.getFullname() %></th>
      <td><%=e.getGender() %></td>
      <td><%=e.getAge() %></td>
      <td><%=e.getDate() %></td>
      
      <td><%=e.getEmail() %></td>
      <td><%=e.getPhoneno() %></td>
      <td><%=e.getDisease() %></td>
      <td>
      <%if(e.getStatus().equals("Pending")){%>
    	  <button type="button" class="btn btn-warning"> <i class="fa-regular fa-clock fa-sm"></i>Pending</button>
       
      <%}else{%>
    	 <button type="button" class="btn btn-primary"><i class="fa-solid fa-certificate" style="color: #51fe06;"> </i>Successfull</button>
      <%} %> 
      
     
      </td>
      <td>
      <%if("Pending".equals(e.getStatus())){%>
    	<a href="comment.jsp?v=<%=e.getId()%>"><button type="button" class="btn btn-success"> <i class="fa-regular fa-comments fa-xl"></i> Comments</button></a>  
        
      <%}else{%>
    	  <a href="#"><button type="button" class="btn btn-success disabled" > <i class="fa-regular fa-comments fa-xl"></i> Comments</button></a>  
     <% }
      %>
      </td>
      
    </tr>
	   
  <% }
  %>
    
   
  </tbody>
</table>
	
	
	
	
	</div>



</div>

</body>
</html>