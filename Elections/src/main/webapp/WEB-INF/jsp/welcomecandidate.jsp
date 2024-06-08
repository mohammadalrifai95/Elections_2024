<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
 
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ taglib prefix="mytags" tagdir="/WEB-INF/tags" %> --%>


<%-- <%@ page import="com.election.mainapp.constant.GlobalMessage_AR" %> --%>
<%-- <%@ page import="com.election.mainapp.constant.GlobalConstant" %> --%>

<!-- Note2 -->
<%-- <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %> --%>
 

    
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>Insert title here</title>




</head>
<style>


.dropbtn {
  background-color: #04AA6D;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #ddd;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #3e8e41;}

 
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

.fixedElement {
    background-color: #c0c0c0;
    position:fixed;
    top:0;
    width:100%;
    z-index:100;
}
</style>
<body>

<!-- <ul style="width: 220px;">    -->
<!-- 	<li><a class="active" href="/home2">Home</a></li> -->
<!-- 	<li><a href="/candidateinformation?viewName=home2" id="selectCityLi">How to become a Candidate</a></li> -->
<!-- 	<li><a href="/candidacyconditions">Add New Candidate</a></li> -->
<!-- 	<li><a href="/contactUs">Candidate/Voter</a></li> -->
<!-- 	<li><a href="/news">News</a></li> -->
<!-- 	<!--Note2--> -->

<%-- 	<c:if test="${role == 'ROLE_ADMIN'}"> --%>
<!--         <li><a href="/admin">Admin</a></li>  -->
<%--     </c:if> --%>
<%-- 	<c:if test="${role == 'ROLE_ADMIN'}"> --%>
<!--         <li><a href="/callBusinessApp">Call Business App</a></li>  -->
<%--     </c:if> --%>
<!-- </ul> -->

<!-- <header class="fixedElement"  style="background-color: #679FAB;  width: 1300px; height: 110px; color:black;">   -->
<!-- 		<p style="margin-top: 5px;"></p>   -->
<%-- 	 	<span style=""><h4>Welcome Candidate:</h4> ${candidateData.fullName}</span>     --%>
<!-- 	 	<span style="margin-left: 275px; font-size: 25px; font-weight: bold;">Hello Election Application</span>    -->
<!-- 	 	<a href="/logoutPage" style="margin-left: 1100px; ">Logout</a>  -->
<!-- </header> -->
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
 
<div style="width: 1100px; height:800px; margin-left: 20px; margin-top: 100px;">            

<table style="width: 100%; ">
	<tr>
		<td>
			<label style="font-size: 20px; font-weight: bold; margin-left: 400px;">Candidate Details Screen</label>
		</td>
	</tr>
	<tr>
		<!--Table1 -->
		<td> 
			<table style="border-collapse: separate;border-spacing: 0 1em; width: 560px; margin-top: -80px;">
				<tr>
					<td>Full name as entered :</td>  
					<td>${candidateData.fullName}
					</td> 
				</tr>
				<tr>
					<td>Full name English :</td>  
					<td>${candidateData.englishFullName}</td> 
				</tr>
				<tr>
					<td>Governorate name :</td>   
					<td>${governorateData.name}</td> 
				</tr>
				<tr>
					<td>Governorate Arabic Name :</td>    
					<td>${governorateData.arabicName}</td>  
				</tr>
				<tr>
					<td>Constituency Name :</td>     
					<td>${constituencyData.name}</td>  
				</tr>
				<tr>
					<td>Constituency Arabic Name :</td>    
					<td>${constituencyData.arabicName}</td>  
				</tr>
<!-- 				<tr> -->
<!-- 					<td>Number Of Votes:</td>  -->
<%-- 					 <td style="font-weight: bold; font-size: 20px; border: solid; text-align: center;">${numberOfVotes}</td> --%>
<!-- 				</tr>  -->
				<tr>
					<td>Click this link to voters of your candidity : </td> 
					 <td style="font-weight: bold; font-size: 20px;"><a href="/SeeListOfVoters?userName=${userData.userName}&password=${userData.password}">See List of Voters</a></td>
				</tr> 
				<tr>
					<td style="width: 250px;">Click this link to see all Candidates in your region: </td> 
					 <td style=" "><a href="/SeeListOfCandidates?userName=${userData.userName}&password=${userData.password}">See List of Candidates </a></td>
				</tr>							
				
<!-- 				<tr> -->
<!-- 					<td>Click below link to see all  names who voted to your candidity</td> -->
<!-- 				</tr> -->
<!-- 				<tr> -->
<!-- 					<td><a href="/SeeListOfVoters" style="margin-left: 1100px; ">See List of Voters</a> </td> -->
<!-- 				</tr> -->
			</table>	
		</td>
		
		<!--Table2 -->
<!-- 			<label style="margin-left: 90px;"> -->
<!-- 				No image uploaded for this candidate -->
<!-- 			</label><br><br>  -->
		<%-- <img src="<c:url value="/resources/images/candidateDefault.png" />" alt="image"  style="width:482px; height: 186px; "/>  --%>
		<%--<img src="<c:url value="${candidateData.imageData}" />" alt="image"  style="width:482px; height: 186px; "/> --%>
		<%--<img src="${candidateData.imageData}" alt="image"  style="width:482px; height: 186px; "/>  --%>
		<%--<img alt="img" src="data:image/jpeg;base64,${candidateData.base64image}"/> --%>
		
		<td>
			<table style="margin-top: -30px;">
				<tr>
					<td>
						<a href="/SeeListOfVoters?userName=${userData.userName}&password=${userData.password}" style="font-size: 20px; margin-left: 60px;">Total Votes  
							<button style="font-size: 30px;  background-color: blue;color: white; width: 50px; height:50px; margin-left: 10px;" >${numberOfVotes}</button>
						</a>
					</td>
				</tr>
				<tr>
					<td>
					
						<c:choose>
						    <c:when test="${empty candidateData.base64image}">
						    	<img src="<c:url value="/resources/images/candidateDefault.png" />" alt="image"  style="width: 300px; height: 300px;"/>
						    </c:when>    
						    <c:otherwise>
<%-- 						    	<img alt="img" src="data:image/jpg;base64,${candidateData.base64image}" style="width: 300px; height: 300px;"/> --%>
<%-- 						    	<img alt="img" src="data:image/jpg;base64,${candidateData.base64image}" style="width: 300px; height: 300px;"/> --%>
						    	<img alt="img" src="data:image/png;jpg;jpeg;charset=utf-8;base64,${candidateData.base64image}" style="width: 300px; height: 300px;"/>
						    	
						    </c:otherwise>
						</c:choose>
								
					</td>
				</tr>
				<tr>
					<td><p style="margin-left: 70px;"> ${candidateData.fullName}</p></td>
				</tr>
			</table>
<%-- 		    <a href="/SeeListOfVoters?userName=${userData.userName}&password=${userData.password}" style="font-size: 20px;">See total List of Voters  </a> --%>
<%-- 		    <span style="font-size: 30px;  background-color: blue;color: white; width: 100%; " >${numberOfVotes}</span> --%>
<!-- 		    <br><br> -->
<%-- 			<img alt="img" src="data:image/jpg;base64,${candidateData.base64image}" style="width: 300px; height: 300px;"/>  --%>

		</td>


		<!--Table3 -->
		<td>
		
		</td>
	</tr>
</table>


</div>







</body>




<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
<script type="text/javascript">
</script>

    
    
</html>
