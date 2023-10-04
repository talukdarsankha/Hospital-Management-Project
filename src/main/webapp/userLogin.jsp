<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
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
 
 
 <form action="usloginservlet" method="post">
 <div style="margin-top: 45px;margin-bottom: 45px;">
 <div style="width: 500px; margin: auto; box-shadow: 0px 0px 12px gray; padding: 42px;">
  <h1 style="text-align: center;"> User Login</h1>

  <c:if test="${not empty unlog}">
    <p style="text-align: center; color: red;">"${unlog}"</p>
    <c:remove var="unlog"/>
  </c:if>

  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Your Email" style="margin-left: 10px; margin-right: 10px; width: 350px;" name="ULE">
    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
  </div>
  
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Enter Password" style="margin-left: 10px; margin-right: 10px; width: 350px;" name="ULP">
  </div>

  <div class="mb-3 form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
  </div>
  <button type="submit" class="btn btn-primary" style="width: 380px; margin: auto;">Login</button>
  <div style="margin-top: 6px;"><span>if you don't created any account yet then</span> <a href="uregister.jsp">Click here to Register.</a></div>
</form>
</div>
</div>

 
 
</body>
</html>