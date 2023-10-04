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
 
 <form action="admin" method="post">
 <div style="margin-top: 45px;">
 <div style="width: 500px; margin: auto; box-shadow: 0px 0px 12px gray; padding: 55px;">
  <h1 style="text-align: center;"> Admin Login</h1>
  <c:if test="${not empty logout }">
  <p style="text-align: center; color: green;">"${logout}"</p>
  <c:remove var="logout"/>
  </c:if>
  <c:if test="${not empty invalid }">
  <p style="text-align: center; color: red;">"${invalid}"</p>
  <c:remove var="invalid"/>
  </c:if>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Your Email" style="margin-left: 10px; margin-right: 10px; width: 380px;" name="AE">
    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Enter Password" style="margin-left: 10px; margin-right: 10px; width: 380px;" name="AP">
  </div>
  <div class="mb-3 form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
  </div>
  <button type="submit" class="btn btn-primary" style="width: 400px; margin: auto;">Login</button>
</form>
</div>
</div>
 
 
  
</body>
</html>