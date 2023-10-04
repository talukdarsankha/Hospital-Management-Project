<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="boostrap.jsp" %>
</head>
<body>
 <%@include file="nav.jsp" %>
 
 
 
 <form action="resigter" method="post">
 <div style="margin-top: 45px; margin-bottom: 45px;" >
 <div style="width: 500px; margin: auto; box-shadow: 0px 0px 12px gray; padding: 55px;">
  <h1 style="text-align: center;"> User Register</h1>
  
  <c:if test="${not empty su }">
  <h3 style="text-align: center; color: green;"> "${su}"</h3>
  <c:remove var="su"/>
  </c:if>
  <c:if test="${not empty unsu }">
  <h3 style="text-align: center; color: green;"> "${unsu}"</h3>
  <c:remove var="unsu"/></c:if>
  
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Full Name</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter name" style="margin-left: 10px; margin-right: 10px; width: 380px;" name="N">
    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Your Email" style="margin-left: 10px; margin-right: 10px; width: 380px;" name="E">
    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Enter Password" style="margin-left: 10px; margin-right: 10px; width: 380px;" name="P">
  </div>
  <div class="mb-3 form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
  </div>
  <button type="submit" class="btn btn-primary" style="width: 400px; margin: auto;">Register Account</button>
</form>
</div>
</div>
 


</body>
</html>