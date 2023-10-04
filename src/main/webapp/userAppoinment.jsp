<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    <%@page isELIgnored="false" %>
    <%@page import="java.util.List"%>
    
<%@page import="com.Conn.Connec"%>
<%@page import="com.dao.SpecialistDao"%>
<%@page import="com.entity.Specialist"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="boostrap.jsp" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />


<style type="text/css">
.cont{

margin: 15px;
margin-left: 80px;
  display: grid;
    grid-template-columns: 2fr 4fr;
    column-gap: 200px;
}
</style>

</head>
<body style="margin: 0px; padding: 0px;">



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


<div style=" height: 200px; width: vw;">
 <img alt="hospital" src="imgaes/Manipal-Hospitals.jpg" style=" height: 150px; width: 100%; display: block;">
</div>


<div style=" height: 640px; margin-top: 5px; " class="cont">

<div style=" height: 600px;" class="item">
  <img alt="Doctor" src="imgaes/header-img-1.webp" style=" height: 400px; width: 100%; display: block; margin:  auto; margin-top: 30px;">
</div>
<div style="box-shadow: 0px 0px 10px gray; height: 630px; width: 700px; ">
<h3 style="text-align: center; margin: 9px; margin-bottom: 0px;">User Appointment</h3>

<c:if test="${ not empty suc }">
<h3 style="text-align:  center; color: green;"> ${suc }</h3>
<c:remove var="suc"/>
</c:if>
<c:if test="${not empty unsuc }">
<h3 style="text-align:  center; color: red;"> ${unsuc }</h3>
<c:remove var="unsuc"/>
</c:if>

<form action="addappointment" method="post">
<div style=" height: 330px; width: 700px; display: flex;  border-radius:10px;" class="item">

<div style=" height: 350px; width: 420px; padding: 20px;">
<input type="hidden" name="hid" value="${log.id}">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Full Name</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="AN">
    </div>
    
      <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Age</label>
    <input type="int" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="AA">
    </div>
    
      <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="AE">
    </div>
    
      <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Disease</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="AD">
    </div>

 

</div>
<div style=" height: 350px; width: 420px; padding: 20px;">



  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Gender</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="AG">
    </div>
    
      <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Appointment Date</label>
    <input type="date" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="ADT">
    </div>
    
      <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Phone no:</label>
    <input type="int" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="AP">
    </div>
    
      <div class="mb-3">
  <label for="s" class="form-label" > Doctors</label>
  <select class="form-select" aria-label="Default select example" id="s" name="AS">
  <option selected>---Select Doctor---</option>
  <%
  DoctorDao dd = new DoctorDao(Connec.getCon());
	List<Doctor> ll=dd.getAllDoctor();	
		  for(Doctor e: ll){%>
		     
			 <option value="<%=e.getId()%>"> <%=e.getName() %>(<%=e.getSpecialist() %>)</option> 
	<%	  }
  %>
  
</select>
    </div>



</div>

</div>

 <div class="mb-3" style="margin-top: 4px; padding: 20px;">
    <label for="exampleInputEmail1" class="form-label">Full Address</label>
    <textarea  name="AADD" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="DN" cols="16" rows="1" style="margin-top: 4px; padding: 20px;">
    </textarea>
    </div>

<c:if test="${empty log }">
<a href="userLogin.jsp" class="btn btn-primary" style="width: 500px; margin-left: 15px;"> <i class="fa-solid fa-calendar-check"></i> Create Appointment</i></a>
</c:if>
<c:if test="${not empty log }">
<button type="submit" class="btn btn-primary" style="width: 500px; margin-left: 15px;"> <i class="fa-solid fa-calendar-check"></i> Create Appointment</i></button>
</c:if>
</form>
</div>
</div>


  <footer style="background-color: black">
     <p style="color: white; padding: 4px; text-align: center; height: 50px; padding-top: 15px;  "> &#169;Copyright hospital management.com All right reserved</p>
  </footer>

</body>
</html>