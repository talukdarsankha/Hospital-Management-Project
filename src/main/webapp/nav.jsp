
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@page isELIgnored="false" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body style="margin: 0px; padding: 0px;">

<c:if test="${empty log}">
<header>
   <nav style="display: flex; background-color: skyblue; padding-top: 10px;">
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
   <nav style="display: flex; background-color: skyblue; padding-top: 10px;">
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
    <li><a class="dropdown-item" href="changePassword.jsp">Change password <i class="fa-solid fa-lock"></i></a></li>
    <li><a class="dropdown-item" href="#">Another action</a></li>
    <li><a class="dropdown-item" href="uselogout"> Logout <i class="fa-solid fa-right-from-bracket"></i> </a></li>
  </ul>
</div>
   </nav>
</header>
</c:if>


</body>
</html>