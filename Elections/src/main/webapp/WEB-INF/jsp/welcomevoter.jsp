<%-- <%@ page language="java" contentType="text/html; charset=windows-1256" --%>
<%--     pageEncoding="windows-1256"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 
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

.styled {
    border: 0;
    line-height: 2;  
    padding: 10 10px;        
    font-size: 1rem; 
    text-align: center;
    color: #fff;
    text-shadow: 1px 1px 1px #000;
    border-radius: 5px;  
/*     background-color: rgba(220, 0, 0, 1); */
	background-color: white; 
	color: blue;
    background-image: linear-gradient(to top left, rgba(0, 0, 0, 0.2), rgba(0, 0, 0, 0.2) 30%, rgba(0, 0, 0, 0));
    box-shadow: inset 2px 2px 3px rgba(255, 255, 255, 0.6), inset -2px -2px 3px rgba(0, 0, 0, 0.6);
}


</style>
<body>

<!-- <ul style="width: 220px;">    -->
<!-- 	<li><a class="active" href="/home2">Home</a></li> -->
<!-- 	<li><a href="/candidateinformation?viewName=home2" id="selectCityLi">How to become a Candidate</a></li> -->
<!-- 	<li><a href="/candidacyconditions">Add New Candidate</a></li> -->
<!-- 	<li><a href="/contactUs">Candidate/Voter</a></li> -->
<!-- 	<li><a href="/news">News</a></li> -->
<!-- 	<!--Note2-->

<%-- 	<c:if test="${role == 'ROLE_ADMIN'}"> --%>
<!--         <li><a href="/admin">Admin</a></li>  -->
<%--     </c:if> --%>
<%-- 	<c:if test="${role == 'ROLE_ADMIN'}"> --%>
<!--         <li><a href="/callBusinessApp">Call Business App</a></li>  -->
<%--     </c:if> --%>
<!-- </ul> -->

<!-- <header class="fixedElement"  style="background-color: #679FAB; width:100%;  color:black; height: 12%;">    -->
<!-- 		<p style="margin-top: 5px;"></p>   -->
<%-- 	 	<span style=""><h4>Welcome Voter: </h4> ${voterData.fullName}</span>     --%>
<!-- 	 	<span style="margin-left: 450px; font-size: 25px; font-weight: bold;">Hello Election Application</span>    -->
<!-- 	 	<a href="/logoutPage" style="margin-left: 1100px; ">Logout</a>  -->
<!-- </header> -->

<div dir="rtl" class="fixedElement"  style="border: 3px solid #73AD21; background-color: #679FAB; width: 70%; padding-right:5%;padding-left:5%; margin-right:5%; margin-left:5%; height: 100px; color: white;" >  
	<table style="">            
		<tr>
			<td style="width:20%;">
			<c:choose>
			    <c:when test="${not empty voterData.fullName}">
					<p style=" margin-top: 1px;">
						<span>صفحة الناخب :<br> ${voterData.fullName}</span>  
					</p>
			    </c:when>    
			    <c:otherwise>
			    	<c:choose>
			    		<c:when test="${not empty candidateData.fullName}">
							<p style=" margin-top: 1px;">
								<span>Welcome Candidate:<br> ${candidateData.fullName}</span>   
							</p>
			    		</c:when>    
			</c:choose>
			    </c:otherwise>
			</c:choose>
<%-- 			<c:choose> --%>
<%-- 			    <c:when test="${not empty candidateData.fullName}"> --%>
<!-- 					<p style=" margin-top: 1px;"> -->
<%-- 						<span>Welcome Candidate:<br> ${candidateData.fullName}</span>    --%>
<!-- 					</p> -->
<%-- 			    </c:when>     --%>
<%-- 			</c:choose> --%>

			</td>
			<td style="width: 15%">
			</td>
			<td style="width: 50%; font-size: 28px;">        
					<p >الانتخابات النيابية الأردنية 2024</p>   
			</td>
			<td style="width: 10%">
			</td>   
			<td  style="width:20%;">  
				<a href="/logoutPage">تسجيل خروج</a>
			</td>
		</tr>
	</table>
</div>
<!--    padding-top: 50px; -->
<!-- <div style="width: 1300px; height:3000px;  margin-left: 20px; margin-top: 90px; background-color: lightgray ; "> -->
<div dir="rtl" style="width: 70%; margin-top: 5px; padding-top:4%; padding-right:5%;padding-left:5%; margin-right:5%; margin-left:5%; background-color: lightgray">               

<table  style="width: 100%; margin-top: 5%; padding-top: 5%">
    
	<tr>
		<td>
			<input type="text" style="display:none;" id="voterId" value="${voterData.id}" />
			<label style="font-size: 20px; font-weight: bold;">شاشة تفاصيل الناخبين</label>
		</td>  
	</tr>
	<tr>
		<td>
<!-- 			<label style="font-size: 20px; font-weight: bold; margin-left: 400px;">Voter Details Screen</label> -->
<!-- 			<label style="font-size: 20px; font-weight: bold; margin-left: 500px;">شاشة تفاصيل الناخبين</label> -->
		</td>
	</tr>
	<tr>
		<!--Table2 -->
		<td style="width: 60%">
<!-- 			<label style="font-size: 20px; font-weight: bold; margin-left: 100px;">Voter Details(English)</label>  -->
<!-- 			<table style="width: 100%; border-collapse: separate;border-spacing: 0 1em; margin-right: 170px; padding-right: 150px;">  -->
			<table style=" font-size: 20px; width: 100%;  border-collapse: separate;border-spacing: 0 1em;"> 
<!-- 				<tr> -->
<!-- 					<td>Arabic full name</td>   -->
<%-- 					<td>${voterData.fullName}</td>  --%>
<!-- 				</tr> -->

				<tr>
<!-- 					<td>Full name as entered</td>   -->
					<td>الاسم الكامل كما تم إدخاله</td>  
					<td>${voterData.fullName}</td> 
				</tr>
<!-- 				<tr> -->
<!-- 					<td>Full name English</td>    -->
<%-- 					<td>${voterData.englishFullName}</td>  --%>
<!-- 				</tr> -->
				<tr>
<!-- 					<td>Governorate name</td>    -->
					<td>اسم المحافظة</td>   
					<td>${governorateData.arabicName}</td> 
				</tr>
<!-- 				<tr> -->
<!-- 					<td>Governorate Arabic Name</td>     -->
<%-- 					<td>${governorateData.arabicName}</td>   --%>
<!-- 				</tr> --> 
				<tr>
<!-- 					<td>Constituency Name</td>      -->
					<td>الدائرة الانتخابية</td>     
					<td>${constituencyData.arabicName}</td>  
				</tr>
<!-- 				<tr> -->
<!-- 					<td>Constituency Arabic Name</td>     -->
<%-- 					<td>${constituencyData.arabicName}</td>   --%>
<!-- 				</tr> -->
<!-- 				<tr> -->
<!-- 					<td >You have voted to this Candidate: </td>     -->
<%-- 					<td style="background: red">${candidateData.fullName}</td>   --%>
<!-- 				</tr> --> 
<!-- 				<tr> -->
<!-- 					<td >You have voted to this Candidate: </td>     -->
<%-- 					<td style="background: red">${candidateData.englishFullName}</td>   --%>
<!-- 				</tr> -->
				<tr>
<!-- 					<td style="width: 250px;">Click this link to see all Candidates in your region: </td>  -->
					 <td >انقر فوق هذا الرابط لرؤية جميع المرشحين في منطقتك: </td>
					 <td ><a href="/SeeListOfCandidates?userName=${userData.userName}&password=${userData.password}">قائمة المرشحين</a></td>
<%-- 					 <td style=" "><a href="/SeeListOfCandidates?userName=${userData.userName}&password=${userData.password}">See List of Candidates </a></td> --%>
				</tr>			
				<tr>
					<td></td>
				</tr> 
			</table>	
		</td>
		<td style=" width: 15%;"></td>
		<td style=" width: 40%;">     
 		<!-- <label style="font-size: 16px; font-weight: bold; margin-left: 10px;">You have voted to below Candidate:</label> -->
			<table style="font-size: 20px;  border-collapse: separate;border-spacing: 0 1em; ">
				<c:choose>
				    <c:when test="${empty candidateData.fullName}">
				    <tr>
<!-- 				    	<td> -->
<!-- 				    		You did not vote to any candidate yet.<br>  -->
<%-- 				    		Please click <a href="/SeeListOfCandidates?userName=${userData.userName}&password=${userData.password}">Vote</a>  --%>
<!-- 							to vote. -->
<!-- 				    	</td> -->
				    	<td>
				    		أنت لم تصوت لأي مرشح حتى الآن.<br> 
				    		الرجاء الضغط هنا <a href="/SeeListOfCandidates?userName=${userData.userName}&password=${userData.password}">تصويت الان</a> 
							للقيام بعمليه التصويت
				    	</td>
				    </tr>
<!-- 				    <tr> -->
<!-- 				    	<td> -->
<%-- 				    		<a href="/SeeListOfCandidates?userName=${userData.userName}&password=${userData.password}">Vote</a> --%>
<!-- 				    	</td> -->
<!-- 				    </tr> -->
				    </c:when>
				    <c:otherwise>
    					<tr>
							<td style="background: blue;">
								<a href="/selectedCandidate?userId=${userId}&candidateId=${candidateData.id}" style="color: white;">لقد قمت بالتصويت للمرشح ادناه <br>
								&#8595;<br>
								<span style="background-color: yellow; color: red; border:solid;">${candidateData.englishFullName}</span>  
								<br>
								<c:choose>
								    <c:when test="${empty candidateData.base64image}">
								    	<img src="<c:url value="/resources/images/candidateDefault.png" />" alt="image"  style="width: 100%; height: 100%;"/>
								    </c:when>    
								    <c:otherwise>
								       <img alt="img" src="data:image/jpg;base64,${candidateData.base64image}" style="width: 100%; height: 100%;"/>
								    </c:otherwise>
								</c:choose>
								<br>
								
								<br>&#8595;<br> تفاصيل المرشح</a>
							</td>
						</tr>
<!-- 					<tr> -->
<!-- 						<td> -->
<%-- 							<c:choose> --%>
<%-- 							    <c:when test="${empty candidateData.base64image}"> --%>
<%-- 							    	<img src="<c:url value="/resources/images/candidateDefault.png" />" alt="image"  style="width: 120px; height: 120px;"/> --%>
<%-- 							    </c:when>     --%>
<%-- 							    <c:otherwise> --%>
<%-- 							       <img alt="img" src="data:image/jpg;base64,${candidateData.base64image}" style="width: 120px; height: 120px;"/> --%>
<%-- 							    </c:otherwise> --%>
<%-- 							</c:choose> --%>
<!-- 						</td> -->
<!-- 					</tr> -->

<!-- 						<tr> -->
<!-- 							<td> -->
<!-- 								لالغاء ترشيحك اضغط على زر الالغاء في الاسفل   -->
<!-- 								<span style="font-size: 20px;">&#8594;</span> -->
<!-- 							</td> -->
<!-- 						</tr> -->
						<tr>
				      		<td> 
								<button class="styled"  type="submit"  id="voteId" value="${candidateData.id}" style="width: 80px; height: 30px; float:right; background-color:  #00008B; cursor: pointer; background-color: black; color: white; align : center;" onclick="cancelCandidateFun(${candidateData.id}) ">
						      		الغاء الترشيح 
						      	</button>
				      		</td>
						</tr>
<!-- 						<tr> -->
<!-- 							 <td style=" "><a href="/SeeListOfCandidates">Change vote</a></td> -->
<!-- 						</tr>	 -->

				    </c:otherwise>
				</c:choose>
				




<!-- 				<tr> -->
<!-- 					<td> -->
<!-- 						<table style="width: 70%; text-align: center">     -->
<%-- 							<c:forEach items="${candidateDataList}" var="candidateData"> --%>
<!-- 							    <tr >  -->
<!-- 							      <td style="border: solid;"> -->
<!-- 								      <table style="font-size: 20px;"> -->
<!-- 									      	<tr> -->
<!-- 									      		<td style="width: 300px; height: 60px; text-align: center;">     -->
<%-- 							      					<c:out value="${candidateData.englishFullName}"/> --%>
<!-- 									      		</td> -->
<!-- 									      	</tr> -->
<!-- 									      	<tr> -->
<!-- 									      		<td style="text-align: center;">   -->
<%-- 			   								      	<button class="styled"  type="submit"  id="voteId" value="${candidateData.id}" style="width: 60px; height: 40px; float:right; background-color:  #00008B; cursor: pointer; background-color: black; color: white; align : center; margin-right: 150px;" onclick="voteToCandidateFun(${candidateData.id}) "> --%>
<!-- 											      		Vote -->
<!-- 											      	</button> -->
<!-- 									      		</td> -->
<!-- 									      	</tr> -->
<!-- 								      </table> -->
<!-- 							      	</td> -->
<!-- 							      	<td style="border: solid;"> -->
<%-- 							      	<img src="<c:url value="/resources/images/candidateDefault.png" />" alt="image"  style="width:200px; height: 150px; "/>  --%>
<!-- 							      	</td> -->
<!-- 							      	<td> -->
<!-- 							      </td>  -->
<!-- 							    </tr> -->
<%-- 						  </c:forEach> --%>
<!-- 						</table> -->
<!-- 					</td> -->
<!-- 				</tr> -->
				
						
			</table>
<!-- 			<label style="font-size: 20px; font-weight: bold; margin-left: 70px;">All Candidates in you region(English)</label>   -->
<!-- 			<table style="width: 80%; border-collapse: separate;border-spacing: 0 1em;">    -->
<!-- 			<table style="width: 100%; border-collapse: separate;border-spacing: 0 1em;">    -->
<%-- 				<c:forEach items="${candidateDataList}" var="candidateData"> --%>
<!-- 				    <tr >  -->
<!-- 				      <td style="border: solid;"> -->
<%-- <%-- 				      <c:out value="${candidateData.englishFullName}" /> --%>  
<!-- 					      <table> -->
<!-- 						      	<tr> -->
<!-- 						      		<td style="width: 500px;">   -->
<!-- <!-- 						      			<span style="margin-right: 300px;">  -->  
<%-- 						      				<c:out value="${candidateData.englishFullName}"/> --%>
<!-- <!-- 						      			</span> --> 
<!-- 						      		</td> -->
<!-- 						      	</tr> -->
<!-- 						      	<tr> -->
<!-- 						      		<td>  -->
<%--    								      	<button class="styled"  type="submit"  id="voteId" value="${candidateData.id}" style="width: 40px; height: 30px; float:right; background-color:  #00008B; cursor: pointer; background-color: black; color: white; align : center; margin-right: 150px;" onclick="voteToCandidateFun(${candidateData.id}) "> --%>
<!-- 								      		Vote -->
<!-- 								      	</button> -->
<!-- 						      		</td> -->
<!-- 						      	</tr> -->
<!-- 					      </table> -->
<!-- <!-- 				      style="margin-right: 100px; "   -->  
<!-- 				      	</td> -->
<!-- 				      	<td style="border: solid;"> -->
<%-- 				      	<img src="<c:url value="/resources/images/candidateDefault.png" />" alt="image"  style="width:182px; height: 50px; "/>  --%>
<!-- 				      	</td> -->
<!-- 				      	<td> -->
<%-- <%-- 				      	<button class="styled"  type="submit"  id="voteId" value="${candidateData.id}" style="width: 40px; height: 30px; float:right; background-color:  #00008B; cursor: pointer; background-color: black; color: white;" onclick="voteToCandidateFun(${candidateData.id})"> --%>
<!-- <!-- 				      		Vote --> 
<!-- <!-- 				      	</button> -->
<!-- 				      </td>  -->
<!-- 				    </tr> -->
<%-- 			  </c:forEach> --%>
<!-- 			</table> -->
		</td>
		<!--Table1 -->

</tr>
		
		<!--Table3 -->
<!-- 	<tr> -->
<!-- 		<!--Table1 -->
<!-- 		<td> -->
<!-- 			<label style="font-size: 20px; font-weight: bold; margin-left: 100px;">Voter Details(Arabic)</label>  -->
<!-- 			<table style="width: 80%; border-collapse: separate;border-spacing: 0 1em;">  -->
<!-- 				<tr> -->
<!-- 					<td>Arabic full name</td>   -->
<%-- 					<td>${voterData.fullName}</td>  --%>
<!-- 				</tr> -->
<!-- 				<tr> -->
<!-- 					<td>Governorate Arabic Name</td>     -->
<%-- 					<td>${governorateData.arabicName}</td>   --%>
<!-- 				</tr> -->
<!-- 				<tr> -->
<!-- 					<td>Constituency Arabic Name</td>     -->
<%-- 					<td>${constituencyData.arabicName}</td>   --%>
<!-- 				</tr> -->
<!-- 				<tr> -->
<!-- 					<td >You have voted to this Candidate: </td>     -->
<%-- 					<td style="background: red">${candidateData.fullName}</td>   --%>
<!-- 				</tr> -->
<!-- 				<tr> -->
<!-- 					<td></td> -->
<!-- 				</tr>  -->
<!-- 			</table>	 -->
<!-- 		</td> -->
<!-- 				<td> -->
<!-- 			<label style="font-size: 20px; font-weight: bold; margin-left: 70px;">All Candidates in you region(Arabic)</label>   -->
<!-- 			<table style="width: 80%; border-collapse: separate;border-spacing: 0 1em;">    -->
<%-- 				<c:forEach items="${candidateDataList}" var="candidateData"> --%>
<!-- 				    <tr>  -->
<%-- 				      <td style="border: solid;"><c:out value="${candidateData.fullName}" />  --%>
<!-- 				      	<span style="margin-left: 100px; "></span>  -->
<%-- 				      	<button class="styled"  type="submit"  id="voteId" value="${candidateData.id}" style="width: 40px; height: 30px; float:right; background-color:  #00008B; cursor: pointer; background-color: black; color: white;" onclick="voteToCandidateFun(${candidateData.id})"> --%>
<!-- 				      		Vote -->
<!-- 				      	</button> -->
<!-- 				      </td>  -->
<!-- 				    </tr> -->
<%-- 			  </c:forEach> --%>
<!-- 			</table> -->
<!-- 		</td> -->
<!-- 	</tr> -->
</table>


</div>







</body>




<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
<script type="text/javascript">

function voteToCandidateFun(id){ 
	
// 	alert(id);  
	window.location.href = '/voteToCandidate?candidateId='+id;	
	
}
function cancelCandidateFun(id){ 
	var voterId= document.getElementById('voterId').value;
// 	window.location.href = '/cancelCandidate?candidateId='+id+'&voterId='+voterId;
	
	
    var result = confirm("Are you sure you want to cancel your candidate selection.");
    if (result == true) {
		setTimeout(function() {
			alert("You have succefully canceled you selection,you will be forwarded to new screen, please sign in to see new update to your profile");
			window.location.href = '/cancelCandidate?candidateId='+id+'&voterId='+voterId;
			}, 1500);
    } else {
    	
    }
	
	
	
}
</script>

    
    
</html>
