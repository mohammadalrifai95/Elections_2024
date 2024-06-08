<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
    
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
<meta charset="windows-1256">
<title>Insert title here</title>

<style type="text/css">

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  width: 25%;
  background-color: #f1f1f1;
  position: fixed;
  height: 100%;
  overflow: auto;
}

li a {
  display: block;
  color: #000;
  padding: 8px 16px;
  text-decoration: none;
}

li a.active {
  background-color: #04AA6D;
  color: white;
}

li a:hover:not(.active) {
  background-color: #555;
  color: white;
}

.active {
  background-color: #04AA6D;
  
}
.dotstyle{
    content: "\00B7";
}


.circular_image_header { 
  width: 100px;
  height: 100px;
  border-radius: 25%; 
  overflow: hidden;
  background-color: blue;
  /* commented for demo
  float: left;
  margin-left: 125px;
  margin-top: 20px;
  */
  
  /*for demo*/
  display:inline-block;
  vertical-align:middle;
}


</style>
</head>

<body>
<!-- <ul style="width: 250px;"> -->
<!-- 	<li style="margin-bottom: 20px; "> -->
<!-- 		<a class="active" style="" href="/login?alredyLoggedin=Yes" > -->
<!-- 			Home -->
<!-- 		</a> -->
<!-- 	</li> -->

<!-- 	<li><a href="/candidateinformation?viewName=home2" id="selectCityLi">How to become a Candidate</a></li> -->
<!-- 	<li><a href="/candidacyconditions">Add New Candidate</a></li> -->
<!-- 	<li><a href="/contactUs">Candidate/Voter</a></li> -->
<!-- 	<li><a href="/news">News</a></li> -->
<%-- 	<c:if test="${role == 'ROLE_ADMIN'}"> --%>
<!--         <li><a href="/admin">Admin</a></li>  -->
<%--     </c:if>	 --%>
	
<!-- 	 <li style="width: 200px; height: 30px; margin-top: 430px; background-color: black;">   	  -->
<%-- 			<c:choose> --%>
<%-- 					<c:when test="${PreviousPage == 'home2'}">  --%>
<!-- 					<a href="/login?alredyLoggedin=Yes" class="active" style="background-color: black" class="active">Back</a>  -->
<!-- 			 		<a href="/" class="active" style="background-color: black" class="active">Back</a>  -->
<%-- 	   			 </c:when> --%>
<%-- 	   			 <c:otherwise> --%>
<!-- 			 		<a href="/" class="active" style="background-color: black">Back</a>  -->
<%-- 	   			 </c:otherwise>  --%>
<%-- 			</c:choose> --%>
<!-- 	</li> -->
<!-- </ul> -->
<!-- <div   style="margin: auto;  border: 3px solid #73AD21; padding: 1px;background-color: #679FAB; width: 100%; height: 10%; text-align: center;" > -->
<!--   <h3 >Welcome to the Election System app - this is the login page</h3> -->
 
<!-- </div> -->
<div  class="fixedElement"  style="border: 3px solid #73AD21; background-color: #679FAB; width: 100%; height: 100px; color: white;" >  
	<table style="margin-left: 100px;">            
		<tr>
			<td>            
				<p style=" margin-top: 1px;">  
					<a href="/">   
				  		<img src="<c:url value="/resources/images/jordanflagonhand.jpg" />" alt="image" class="circular_image_header"   style="width: 100px; height: 100px; "/>
					</a>
				</p>
			</td>
			<td style="width: 50px;">
			</td>
			<td style="width: 500px;">        
				<h2 style=" margin-top: 10px;">   
					Election of Jordan  
				</h2>
			</td>
			<td style="width: 350px;">
			</td>   
			<td>  
				<h5 style=" margin-top: 40px;">  
					<a href="/logoutPage">Log in/Sign up</a>   
				</h5>  
			</td>
		</tr>
	</table>
</div>




<div id="parantDiv" style="margin-left: 50px; margin-top: 50px;"> 
<div>
<!-- 				• • = alt key + 0149 -->
 
 					<h1>New electoral Districts</h1>   
 					<br>

Dividing the Kingdom into 18 electoral districts
The Kingdom was divided into 18 local electoral districts and a general electoral district, to which 138 seats were allocated,<br> 
with 97 seats for the local districts and 41 seats for the general district, so that the capital,<br> 
Amman, was divided into three local  electoral districts, and Irbid Governorate into two local districts, <br>
while the rest were allocated to each of them.  The governorates have one local district, in addition to allocating<br> 
three districts for the Bedouins of the north, center, and south, 
each district having three seats.
       
    
 
				</div>
</div>



</body>
</html>