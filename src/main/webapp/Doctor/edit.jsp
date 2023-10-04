<%@page import="com.dao.SpecialistDao"%>
<%@page import="com.Conn.Connec"%>
<%@page import="com.dao.DoctorDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page isELIgnored="false" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    <%@page import="com.entity.Doctor" %>
     <%@page import="com.entity.Specialist" %>
      <%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
.item1{

 padding: 20px;

}
.con{
 padding: 25px;
 box-shadow: 0px 0px 10px gray;
border-radius: 12px;
 display: inline-block;
 width: 400px;
 margin: 20px 50px;
 margin-right: 150px;


}
h3{
 text-align: center;
 margin-top: 20px;
}
#c {
	width: 310px;
	background-color: green;
}
.editprofile{
width: 600px;
margin: 20px auto;
 box-shadow: 0px 0px 10px gray;
}
.p{
display: flex;
}
</style>

</head>
<body>

<%@include file="nav.jsp" %>

<div class="p">
<%DoctorDao dd = new DoctorDao(Connec.getCon());
 HttpSession hs = request.getSession();
 Doctor dob= (Doctor)hs.getAttribute("doclog");
 
%>
<div>
	  <div class="con">
		<h3>Change Password</h3>
		<c:if test="${not empty suc }">
		<h6 style="text-align: center; color: Green;">${suc }</h6>
		<c:remove var="suc"/>
		</c:if>
		<c:if test="${not empty unsuc }">
		<h6 style="text-align: center; color: red;">${unsuc }</h6>
		<c:remove var="unsuc"/>
		</c:if>
		
		
		<div class="item1">
		
		<form action="../ChanDocPass" method="post">
	  <div class="mb-3">
	    <label for="exampleInputPassword1" class="form-label">New Password</label>
	    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Enter New Password" name="DNP">
	  </div>
	  <div class="mb-3">
	    <label for="exampleInputPassword1" class="form-label">Old Password</label>
	    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Enter Old Password" name="DOP" >
	  </div>
	 <input type="hidden" name="h" value="${doclog.id}">
	  <button type="submit" class="btn btn-primary" id="c">Change password <i class="fa-solid fa-key fa-lg"></i></button>
	</form>
		
		
		</div>
	</div>
</div>	
	
	
<div>
	<div class="editprofile">
					<h3 style="margin-top: 20px;"> Edit Profile</h3>
					
					<c:if test="${not empty sucP }">
					<h6 style="text-align: center; color: Green;">${sucP }</h6>
					<c:remove var="sucP"/>
					</c:if>
					<c:if test="${not empty unsucP }">
					<h6 style="text-align: center; color: red;">${unsucP }</h6>
					<c:remove var="unsucP"/>
					</c:if>
						<div class="item1">
						
						<form action="../changeprofile" method="post">
				  <div class="mb-3">
				    <label for="exampleInputEmail1" class="form-label">Full Name</label>
				    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="<%=dob.getName()%>" name="N">
				    </div>
				  <div class="mb-3">
				    <label for="exampleInputPassword1" class="form-label">Qualification</label>
				    <input type="text" class="form-control" id="exampleInputPassword1" value="<%=dob.getQualification()%>" name="Q">
				  </div>
				  
				  
				  <div class="mb-3">
				    <label for="exampleInputPassword1" class="form-label">Select Your Speciality</label>
				    <select class="form-control" id="exampleInputEmail1" name="S">
				       <option selected="selected"><%=dob.getSpecialist()%></option>
				       <%SpecialistDao sd = new SpecialistDao(Connec.getCon());
				    		List<Specialist>ll=sd.getAllSpecialist();
				    		for(Specialist e: ll){%>
				    			<option><%=e.getName() %></option>
				    		<%}
				    		%>
				      
				    </select>
				  </div>
				  
				  <div class="mb-3">
				    <label for="exampleInputEmail1" class="form-label">Email address</label>
				    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="<%=dob.getEmail()%>" name="E">
				    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
				  </div>
				  <div class="mb-3">
				    <label for="exampleInputPassword1" class="form-label">Contact No.</label>
				    <input type="number" class="form-control" id="exampleInputPassword1" value="<%=dob.getMob()%>" name="C">    
				  </div>
				  
				  
				 <input type="hidden" name="hd" value="<%=dob.getId()%>">
				  <button type="submit" class="btn btn-primary" id="c">Edit Profile <i class="fa-solid fa-pen-to-square fa-lg"></i></button>
	          </form>
		
		      </div>
	
	</div>
</div>	



</div>





</body>
</html>