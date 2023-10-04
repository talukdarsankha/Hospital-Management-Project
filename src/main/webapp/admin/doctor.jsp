<%@page import="com.dao.DoctorDao"%>
<%@page import="java.util.List"%>
<%@page import="com.Conn.Connec"%>
<%@page import="com.dao.SpecialistDao"%>
<%@page import="com.entity.Specialist"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    <%@page isELIgnored="false" %>
    <%@page import="com.entity.Doctor" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
.con{
 display: grid;
    grid-template-columns:  2fr 4fr;
}
</style>
</head>
<body>

<c:if test="${empty admin })">
<c:redirect>adminLogin.jsp</c:redirect>
</c:if>

<%@include file="navbar.jsp" %>

<div style="border: black solid 1px ;  padding: 17px; box-shadow: 0px 0px 10px gray;" class="con">



<div style="  box-shadow: 0px 0px 10px gray; margin: 10px; border-radius: 15px;">
<h3 style="text-align:  center;margin-top:  20px;  margin-bottom: 0px" > Add Doctor</h3>
 
 <c:if test="${not empty dadd }">
<h6 style="text-align: center; color: green;">${dadd}</h6>
<c:remove var="dadd"/>
</c:if>
<c:if test="${not empty dnotadd }">
<h6 style="text-align: center; color: red;">${dnotadd}</h6>
<c:remove var="dnotadd"/>
</c:if>
 <form action="../adddoctor" method="post">
 <div style="padding: 20px;">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Full Name</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="DN">
    </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Qualification</label>
    <input type="text" class="form-control" id="exampleInputPassword1" name="DQ">
  </div>
  <div class="mb-3">
  <label for="s" class="form-label" >Select One :</label>
  <select class="form-select" aria-label="Default select example" id="s" name="DS">
  <option selected>---Select Specialist---</option>
  <% SpecialistDao sd = new SpecialistDao(Connec.getCon());
    List<Specialist> ll= sd.getAllSpecialist();
    for(Specialist e: ll){%>
    	<option ><%=e.getName() %></option>
   <% }
  %>
  
  
</select>
    </div>
   <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="DE">
    </div>
    <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Mob no:</label>
    <input type="int" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="DM">
    </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" name="DP">
  </div>
  
  <button type="submit" class="btn btn-primary" style="width: 200px;">Add <i class="fa-solid fa-user-plus"></i></button>
</div>
</form>


</div>



<div style="  box-shadow: 0px 0px 10px gray; margin: 10px; border-radius: 15px; padding: 10px;">
<h3 style="text-align:  center; margin: 20px;" > Doctors's Details</h3>


 <c:if test="${not empty suc}">
 <h6 style="text-align: center; color: Green;">${suc}</h6>
 <c:remove var="suc"/>
 </c:if>
 
  <c:if test="${not empty unsuc}">
 <h6 style="text-align: center; color: red;">${unsuc}</h6>
 <c:remove var="unsuc"/>
 </c:if>
 
<table class="table" >
  <thead>
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Full Name</th>
      <th scope="col">Qualifications</th>
      <th scope="col">Specialist</th>
      <th scope="col">Email Address</th>
      <th scope="col">Mob no.</th>
      <th scope="col">Password</th>
      <th scope="col">Actions</th>
    </tr>
  </thead>
  <tbody>
  <%
  DoctorDao dd = new DoctorDao(Connec.getCon());
   List<Doctor> ld=dd.getAllDoctor();
   for(Doctor e: ld){%>
	   <tr>
      <th scope="row"><%=e.getId()%></th>
      <td><%=e.getName() %></td>
      <td><%=e.getQualification() %></td>
      <td><%=e.getSpecialist() %></td>
      <td><%=e.getEmail() %></td>
      <td><%=e.getMob() %></td>
      <td><%=e.getPassword() %></td>
      <td>
       <a href="edit.jsp?i=<%=e.getId()%>"><i class="fa-solid fa-pen fa-xl"></i></a>
       <a href="../deletedoctor?d=<%=e.getId()%>"><i class="fa-solid fa-trash-can fa-xl" style="color: #f61313;"></i></a>
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