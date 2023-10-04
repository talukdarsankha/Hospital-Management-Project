<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<%@include file="../boostrap.jsp" %>
</head>
<body style="margin: 0px; padding: 0px;">

<header>
   <nav style="display: flex; background-color: skyblue; padding-top: 15px;">
     <ul class="left" style="display: flex ; ">
      <li style="list-style: none; margin: 0px 10px; font-weight: bold; color: white;"><a href="doctor.jsp" style="color: white; text-decoration: none;"> <i class="fa-solid fa-house-medical fa-flip"></i> MEDICAL&nbsp;&nbsp;HOME </a></li>
      
     </ul>
     
     
      <ul class="right" style="display: flex ; margin-left:  10px;">
      
      

      <li style="list-style: none; margin: 0px 10px; font-weight: bold; color: white;"><a href="#" style="color: white; text-decoration: none;"> <i class="fa-solid fa-user"></i>PATIENT</a></li>
      
      <li style="list-style: none; margin: 0px 10px; font-weight: bold; color: white;"><a href="pitent.jsp" style="color: white; text-decoration: none;"> <i class="fa-regular fa-calendar-check fa-lg"></i> Appoinment</a></li>
     </ul>
     
     <div class="dropdown" style="margin-left: 590px; margin-bottom: 10px;">
  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
    <i class="fa-solid fa-user-doctor fa-xl"></i> ${doclog.name }
  </button>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
    <li><a class="dropdown-item" href="../doclogout"> Logout <i class="fa-solid fa-right-from-bracket"></i> </a></li>
    <li><a class="dropdown-item" href="edit.jsp"> Edit Profile<i class="fa-solid fa-user-doctor fa-xl"></i></a></li>
    
  </ul>
</div>





     
   </nav>
</header>

</body>
</html>