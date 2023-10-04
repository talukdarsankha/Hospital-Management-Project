<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.Conn.Connec" %>
    <%@page import="com.dao.SpecialistDao" %>
    <%@page import="com.entity.Specialist" %>
    <%@page import="java.util.*" %>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="navbar.jsp" %>
</head>
<body>


<%
int id = Integer.parseInt(request.getParameter("i"));
DoctorDao dd = new DoctorDao(Connec.getCon());
 Doctor d=dd.getDoctorById(id);
%>

<div style="  box-shadow: 0px 0px 10px gray; width:600px; margin: auto; margin-bottom:50px; border-radius: 15px;">
<h3 style="text-align:  center;margin-top:  40px; padding-top:20px;  margin-bottom: 0px" > Edit Doctor's Details</h3>
 
 <form action="../editdoctor" method="post">
 <div style="padding: 20px;">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Full Name</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="EN" value="<%=d.getName() %>">
    </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Qualification</label>
    <input type="text" class="form-control" id="exampleInputPassword1" name="EQ" value="<%=d.getQualification()%>">
  </div>
  <div class="mb-3">
  <label for="s" class="form-label" >Select One :</label>
  <select class="form-select" aria-label="Default select example" id="s" name="ES" >
  <option selected><%=d.getSpecialist() %></option>
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
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="EE" value="<%=d.getEmail()%>">
    </div>
    <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Mob no:</label>
    <input type="int" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="EM" value="<%=d.getMob()%>">
    </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" name="EP" value="<%=d.getPassword()%>">
  </div>
  <input type="hidden" name="hid" value="<%=d.getId()%>">
  <button type="submit" class="btn btn-primary" style="width: 200px;">Edit Details <i class="fa-solid fa-user-pen fa-xl"></i></button>
</div>
</form>


</div>







</body>
</html>