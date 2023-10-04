<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.Conn.Connec" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%@include file="boostrap.jsp" %>

<style type="text/css">
  .container{
    display: flex;
    padding: 5px;
    margin-left: 6px;
    margin-right: 3px;
    width: 100vw;
  }
  .h{
   
    margin: 40px 26px;
    box-shadow: 0px 0px 10px gray;
    border-radius: 9px;
    height: 350px;
    width: 250px;
    margin-top: 3px;
  }
  .h img{
    height: 230px;
    width: 200px;
   margin: 14px;
   padding-left: 10px;
    
  }
  .cls{
  box-shadow: 6px 6px 10px gray;
  padding: 10px;
  width: 400px;
  border-radius: 10px
  
  }
  
  h5{
   text-align: center;
  }
  h6{
   color: gray;
   text-align: center;
  }
  
  
</style>
</head>
<body>
 <%@include file="nav.jsp" %>
 
 
  <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="imgaes/pexels-photo-3844581.webp" class="d-block w-100" alt="first photo" height="450px">
    </div>
    <div class="carousel-item">
      <img src="imgaes/pexels-photo-3769151.webp" class="d-block w-100" alt="second photo" height="450px">
    </div>
    <div class="carousel-item">
      <img src="imgaes/pexels-photo-11119419.webp" class="d-block w-100" alt="third photo" height="450px">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
 
  <%@include file="indexbody.jsp" %>
 
  
  <div style=" padding: 6px; margin: 17px; margin-top:80px; box-shadow: 0px 0px 6px gray;" >
   <h2 style="text-align: center; margin: 20px;">Our Team</h2>
	  <div class="ourteam" style=" display: flex; margin-top: 0px;">
		  <div class="h"> <img alt="one" src="imgaes/download (1).jpeg">
		  <h5>Samuani Siml</h5>
		  <h6>Specialist & consaltant</h6>
		   </div>
		  <div class="h"><img alt="one" src="imgaes/download (2).jpeg">
		   <h5>Dr.Siva Kumar</h5>
		  <h6>Surgen</h6>
		   </div>
		  <div class="h"><img alt="one" src="imgaes/images (2).jpeg">
		  <h5>Dr.Niuise Paule</h5>
		  <h6>Optical&Neuro Specialist</h6>
		   </div>
		  <div class="h"><img alt="one" src="imgaes/images (3).jpeg">
		  <h5>Dr.Hammel Om</h5>
		  <h6>Physician</h6>
		   </div>
	  </div>
  </div>
  
  <footer style="background-color: black">
     <p style="color: white; padding: 4px; text-align: center; height: 100px; padding-top: 45px;"> &#169;Copyright hospital management.com All right reserved</p>
  </footer>
 
 

</body>
</html>