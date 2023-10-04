<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page isELIgnored="false" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="boostrap.jsp" %>

<style type="text/css">
.item1{

 

}
.con{
 padding: 25px;
 box-shadow: 0px 0px 10px gray;
border-radius: 12px;
 width: 400px;
 margin: auto;
 
 margin-top: 15px;
}
h3{
 text-align: center;
 
}
#c {
	width: 350px;
	background-color: green;
}

</style>

</head>
<body>


<%@include file="nav.jsp" %>



<div class="con">
	<h3>Change Password</h3>
	<c:if test="${not empty upd }">
	<h6 style="text-align: center; color: Green;">${upd }</h6>
	<c:remove var="upd"/>
	</c:if>
	<c:if test="${not empty notupd }">
	<h6 style="text-align: center; color: red;">${notupd }</h6>
	<c:remove var="notupd"/>
	</c:if>
	
	
	<div class="item1">
	
	<form action="changepass" method="post">
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">New Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Enter New Password" name="CNP">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Old Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Enter Old Password" name="COP" >
  </div>
 <input type="hidden" name="h" value="${log.id}">
  <button type="submit" class="btn btn-primary" id="c">Change password <i class="fa-solid fa-key fa-lg"></i></button>
</form>
	
	
	</div>
</div>


  
</body>
</html>