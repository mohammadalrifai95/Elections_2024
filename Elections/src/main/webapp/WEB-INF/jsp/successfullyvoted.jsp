<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
    
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ page import="com.election.mainapp.constant.GlobalMessage_AR" %> --%>
<%-- <%@ page import="com.election.mainapp.constant.GlobalConstant" %> --%>


    
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>Insert title here</title>
<style type="text/css">
.centerDiv {
  border: 5px solid;
  margin: auto;
  width: 50%;
  padding: 10px;
}



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

</style>
</head>
<body>
<!-- <ul style="width: 250px;">  -->
<!-- 	<li style="margin-bottom: 20px; "> -->
<!-- 		<a class="active" style="" href="/login?alredyLoggedin=Yes" > -->
<!-- 			Home -->
<!-- 		</a> -->
<!-- 	</li> -->
	
<!-- 	<li><a href="/candidateinformation?viewName=home2" id="selectCityLi">How to become a Candidate</a></li> -->
<!-- 	<li><a href="/candidacyconditions">Add New Candidate</a></li> -->
<!-- 	<li><a href="/contactUs">Candidate/Voter</a></li> -->
<!-- 	<li><a href="/news">News</a></li> -->
<!-- 	<!--Note2-->
<%-- 	<c:if test="${role == 'ROLE_ADMIN'}"> --%>
<!--         <li><a href="/admin">Admin</a></li>  -->
<%--     </c:if>		 --%>
	
<!-- 	 <li style="width: 200px; height: 30px; margin-top: 380px; background-color: black;">   	  -->
<%-- 			<c:choose> --%>
<%-- 					<c:when test="${PreviousPage == 'home2'}">  --%>
<!-- 			 		<a href="/login?alredyLoggedin=Yes" class="active" style="background-color: black" class="active">Back</a>  -->
<%-- 	   			 </c:when> --%>
<%-- 	   			 <c:otherwise> --%>
<!-- 			 		<a href="/login?alredyLoggedin=Yes" class="active" style="background-color: black">Back</a> -->
<%-- 	   			 </c:otherwise>  --%>
<%-- 			</c:choose> --%>
<!-- 	</li> -->
<!-- </ul> -->
<!-- <header style="background-color: #679FAB; width:100%;  color:black;">    -->
<%--     <h2 style="margin-left: 600px;"> ${ GlobalMessage_AR.WELCOME_MESG_AR}</h2>     --%>
<!--     <br /> -->
<!--  	<h2 style="margin-left: 600px;">Current News</h2>            -->
<!-- </header> -->


<div style="background: #679FAB; width: 600px; height: 360px; margin-top: 100px; " id="blueDivId" class="centerDiv" >  
	<table style="width: 600px;height: 180px; padding-top: 100px;  margin-left: 150px; " > 
		<tr>
			<td>
				<span style="float: left; margin-left: 40px;">
					You have successfully voted
				</span>
				<br>
				<span style="float: left">
					In order to see new update please sing in.
				</span>
			</td>
		</tr>
	</table>
	
	<table style="width: 600px;height: 180px;  margin-left: 100px;">
		<tr>
			<td><a href="/logoutPage" style="font-size:25px; font-weight: bold;">Sign in</a></td>
			<td><a href="/" style="font-size:25px; font-weight: bold;">Home</a></td>  
		</tr>
	</table>


</div>


</body>

<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
<script type="text/javascript">

	window.onload = function() {
		
	}
	
	
	
</script>
</html>