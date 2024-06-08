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
 <div  class="fixedElement"  style="border: 3px solid #73AD21; background-color: #679FAB; width: 100%; height: 100px; color: white;" >  
	<table style="margin-left: 100px;">            
		<tr>
			<td>
				<p style=" margin-top: 1px;">
				<span>Welcome Candidate:<br> ${candidateData.fullName}</span>  
<!-- 					<a href="/">    -->
<%-- 				  		<img src="<c:url value="/resources/images/jordanflagonhand.jpg" />" alt="image" class="circular_image_header"   style="width: 100px; height: 100px; "/> --%>
<!-- 					</a> -->
				</p>
			</td>
			<td style="width: 50px;">
			</td>
			<td style="width: 500px; font-size: 28px;">        
					<p style="margin-left: 120px;">Election of Jordan</p>   
			</td>
			<td style="width: 250px;">
			</td>   
			<td>  
				<a href="/logoutPage">Logout</a>
			</td>
		</tr>
	</table>
</div>
<!-- <div  class="fixedElement"  style="border: 3px solid #73AD21; background-color: #679FAB; width: 100%; height: 100px; color: white;" >   -->
<!-- 	<table style="margin-left: 100px;">             -->
<!-- 		<tr> -->
<!-- 			<td>             -->
<!-- 				<p style=" margin-top: 1px;">   -->
<!-- 					<a href="/">    -->
<%-- 				  		<img src="<c:url value="/resources/images/jordanflagonhand.jpg" />" alt="image" class="circular_image_header"   style="width: 100px; height: 100px; "/> --%>
<!-- 					</a> -->
<!-- 				</p> -->
<!-- 			</td> -->
<!-- 			<td style="width: 50px;"> -->
<!-- 			</td> -->
<!-- 			<td style="width: 500px;">         -->
<!-- 				<h2 style=" margin-top: 10px;">    -->
<!-- 					Election of Jordan   -->
<!-- 				</h2> -->
<!-- 			</td> -->
<!-- 			<td style="width: 350px;"> -->
<!-- 			</td>    -->
<!-- 			<td>   -->
<!-- 					<a href="/logoutPage">Logout</a>    -->
<!-- 			</td> -->
<!-- 		</tr> -->
<!-- 	</table> -->
<!-- </div> -->
<table >
	<tr>
		<td>
			<label style="font-size: 20px; font-weight: bold; margin-left: 500px;">List of Votes Screen</label>
		</td>
	</tr>
</table>          
<div style="width: 100%; margin-left: 100px; margin-top: 65px;">  

<c:choose>
    <c:when test="${numberOfVotes=='0'}">
	Currently you have no voters voted to you nomination.
    </c:when>    
    <c:otherwise>


		<label style="font-size: 20px; font-weight: bold; margin-left: 1px;">Voters voted to <span style="background-color: lightgray">${candidateData.fullName}</span> are [${numberOfVotes}] as in below table:</label>
		<table style="width: 800px;">  
			<tr>
				<td>    
					<table style="width: 80%; border-collapse: separate;border-spacing: 0 1em;">   
						<c:forEach items="${voterDataByCandidateIdList}" var="voterData">
				    		<tr>
					      		<td style="border: solid;"> 
					      			<c:out value="${voterData.fullName}" /> <span style="margin-left: 100px; "></span> 
								<%-- <button value="${voterData.id}"></button> --%>
					      		</td>
					      		<td style="border: solid;">
					      		<label style="float: right;">Voted</label>  
					      		</td>
					      		
				    		</tr>	
		  				</c:forEach>
					</table>
				</td>
				</tr>
		</table>	




    </c:otherwise>
</c:choose>


<!-- 	Click Here to see all voters in your area -->
 

	<div id="loginDiv" style="margin-top: 50px;">
		<form action="signin" method = "GET">    
<%-- 			 <input class="input" type="text" name="userName"  id="userName" value="${userData.userName}" style="display:none;" />  --%>
<%-- 			 <input class="input" type="password" name="password"  id="password" value="${userData.password}" style="display:none;"/>  --%>
			 <input class="input" type="text" name="userName"  id="userName" value="${userData.userName}"  style="display:none;" /> 
			 <input class="input" type="password" name="password"  id="password" value="${userData.password}" style="display:none;"/> 
			 <input type="submit" value="Back" id="Login" name="Login" class="button" style="width: 55px; height: 30px; font-size: 16px;">  
		</form>
		<br class="verticalSpace">
	</div>		

</div>




</body>
</html>