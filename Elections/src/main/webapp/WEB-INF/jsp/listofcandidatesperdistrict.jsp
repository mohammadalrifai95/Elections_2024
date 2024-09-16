<%-- <%@ page language="java" contentType="text/html; charset=windows-1256" pageEncoding="windows-1256"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "spring" uri = "http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<head> 
<meta charset="windows-1256">
<title>Welcome to Election System Application</title>
</head>
<style>


.button{
	color: black;
	border-radius: 10px; 
	font-size: 1.2rem; 
	height: auto;
	text-shadow: 1px 1px 1px #000;
 	background-color: #679FAB;  
	width:210px;
	margin-left: 80px; 
     background-image: linear-gradient(to top left, rgba(0, 0, 0, 0.2), rgba(0, 0, 0, 0.2) 30%, rgba(0, 0, 0, 0)); 
     box-shadow: inset 2px 2px 3px rgba(255, 255, 255, 0.6), inset -2px -2px 3px rgba(0, 0, 0, 0.6); 
}
 

</style>
<body>


<div style="width: 1150px;
   height: 1250px;  
   position: relative;
   margin-left: auto;
   margin-right: auto;"> 

<div    style="border: 3px solid #73AD21; background-color: #679FAB; width: 1140px; height: 100px; color: white;" dir="rtl" >  
	<table style="margin-left: 50px;">            
		<tr>
			<td>            
				<p style=" margin-top:1px;">  
					<a href="/">   
				  		<img src="<c:url value="/resources/images/jordanflagonhand.jpg" />" alt="image"   style="width: 100px; height: 90px; border-radius: 25%; "/> 
					</a>
				</p>
			</td>
			<td style="width: 28%;">
			</td>
			<td style="font-size:25px; font-weight:bold;  width: 700px;">        
<!-- 				<h1 style="padding-bottom:15px; margin-left: 160px;">    -->
					مرحبا بكم في تطبيق الانتخابات الأردنية
<!-- 				</h1> -->
			</td>
			<td style="width: 350px;">
			</td>	
		</tr>
	</table>
</div>
<div style="width:1100px; margin-left: 20px; margin-top: 5px; padding-top:20px; background-color: lightgray; color:black;">            

<!-- <label style="font-size: 20px; font-weight: bold;  margin-left: 400px; "> عمان الدائره الاولى (قائمه المرشحين) <br><br></label>  -->

<c:choose>
    <c:when test="${not empty governorateArabicName}">
    	<label style="font-size: 20px; font-weight: bold;  margin-left: 400px; "> ${governorateArabicName} ${constituencyArabicName}  (قائمه المرشحين) <br><br></label>
    </c:when>    
    <c:otherwise>
       <label style="font-size: 20px; font-weight: bold;  margin-left: 500px; "> (قائمه المرشحين) <br><br></label>
    </c:otherwise>
</c:choose> 

<!--<table style="width: 60%; border-collapse: separate;border-spacing: 0 1em;">    -->
<input type="text" style="display:none;" id="voterId" value="${voterData.id}" />
			<table style="width: 1000px; text-align: center">    
				<tr style="font-size: 20px;">
					<c:choose>
			    		<c:when test="${not empty candidateDataList}">
							<td><p style="width: 450px;">مجموع الأصوات حتى الان<p></td>
							<td><p style="width: 160px;">صورة شخصية<p></td>
							<td>اسم المرشح</td>							
			    		</c:when>    
					</c:choose>
				</tr>
				<c:forEach items="${candidateDataList}" var="candidateData">
				    <tr > 
				    					      	
				      	<td style="border: solid; width: 200px;">
				      		<span style="font-size: 20px;">  :مجموع الاصوات <br>
				      		<c:out  value="${candidateData.numberOfVotes}"/></span>
				       </td> 

				      	<td style="border: solid;">
							<c:choose>
							    <c:when test="${empty candidateData.base64image}">
							    	<img src="<c:url value="/resources/images/candidateDefault.png" />" alt="image"  style="width: 120px; height: 120px;"/>
							    </c:when>    
							    <c:otherwise>
							       <img alt="img" src="data:image/jpg;base64,${candidateData.base64image}" style="width: 120px; height: 120px;"/>
							    </c:otherwise>
							</c:choose>
				      	</td>

				      <td style="border: solid;">
					      <table style="font-size: 16px;">
						      	<tr>
						      		<td style="width: 500px; height: 60px; text-align: center;">
	      					 			<c:choose>
										    <c:when test="${not empty voterData.fullName}">
													<button style=" width: 370px; height:120px; font-size: 16px;" id="candidateEnglishFullNameId" value="${candidateData.id}" onclick="voteToCandidateFun(${candidateData.id})"><span id="cndidteEngFulNmeId">${candidateData.fullName}</span></button>  
										    </c:when>    
											<c:otherwise>
													<button style=" width: 370px; height:120px; font-size: 16px;" id="candidateEnglishFullNameId" value="${candidateData.id}"><span id="cndidteEngFulNmeId">${candidateData.fullName}</span></button>
										  	</c:otherwise>
										</c:choose>
						      		</td>
						      	</tr>
					      </table>
				      	</td>
				    </tr>
			  </c:forEach>
			  <tr>
					<c:choose>
			    		<c:when test="${empty candidateDataList}">
							<td><p style="font-size: 25px; color: red; margin-left: 180px;"> لا يوجد حاليا قائمه للمرشحين في مدينة ${location} والسبب لم يقوم اي مرشح بتسجيل اسمه في هذه المنطقه بعد <p></td>
<%-- 							<td><p style="font-size: 25px; color: red; margin-left: 180px;"> ${location}<p></td> --%>
			    		</c:when>    
					</c:choose>
			  </tr>
			</table>
 

	<div id="loginDiv" style="margin-top: 50px;">
		<form action="/" method = "GET">    
			 <input class="input" type="text" name="userName"  id="userName" value="${userData.userName}" style="display:none;" /> 
			 <input class="input" type="password" name="password"  id="password" value="${userData.password}" style="display:none;"/> 
			 <input type="submit" value="الصفحة الرئيسية" id="Login" name="Login" class="button" style="width: 200px; height: 30px; font-size: 16px;">  
		</form>
		<br class="verticalSpace">
	</div>		

</div>
</div>

<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
<script type="text/javascript">

function voteToCandidateFun(id){
	var voterId= document.getElementById('voterId').value;
            var result = confirm("هل أنت متأكد أنك تريد التصويت لهذا المرشح؟");
            if (result == true) {
        		setTimeout(function() {
        			alert("You have succefully voted, you will be forwarded to new screen,\nPlease sign in to see new update to your profile");
        			window.location.href = '/voteToCandidate?candidateId='+id+'&voterId='+voterId;
        			}, 1500);
            } else {
            }
}


function cancelCandidateFun(id){ 
	
// 	alert(id);  
	window.location.href = '/voteToCandidate?candidateId='+id;	
	
}
</script>

</body>
</html>