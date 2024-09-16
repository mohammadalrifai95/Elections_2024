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
<div dir="rtl" style="border: 3px solid #73AD21; background-color: #679FAB; width: 70%; padding-right:5%;padding-left:5%; margin-right:5%; margin-left:5%; color: white;">
  
	<table style="width: 100%" >            
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
			</td>
			<td style="width: 10%">
			</td>
			<td style="width: 50%; font-size: 28px;">        
				<p style="margin-left: 5%;">الانتخابات النيابية الأردنية 2024</p>   
			</td>
			<td style="width: 10%">
			</td>   
			<td  style="width:20%;">  
				<a href="/logoutPage">تسجيل خروج</a>
			</td>
		</tr>
	</table>
</div>

<div dir="rtl" style="width: 70%; margin-top: 0.05%; padding-top:4%; padding-right:5%;padding-left:5%; margin-right:5%; margin-left:5%; background-color: lightgray; border: 3px solid lightgray;" >



<table>
	<tr>
		<td>
			<label style="font-size: 20px; font-weight: bold;">شاشة اختيار الناخبين ا والمرشح</label>
		</td>  
	</tr>
	<tr>
					<td>لقد تم الكشف عن وجود حسابين بالمعلومات المدخله الرجاء الاختيار هل ترغب بالدخول كناخب ام مرشح</td>
	</tr>
</table>



			<div id="loginDiv" style="margin-top: 50px;"  dir="rtl">
				<form action="signin" method = "GET">
<!-- 						<br> -->
					 	<input  type="text" name="userName"  id="userName" value="${userData.userName}"  style="width: 400px; height: 30px; display:none;" dir="rtl"/>
<!-- 					 	<br> -->
					  	<input  type="text" name="password"  id="password" value="${userData.password}"  style="margin-left: 1%; width: 400px; height: 30px; display:none;" dir="rtl"  />
<!-- 					 	<br> -->
					  	<input  onchange="handleChange(this);" type="number" name="ssn"  id="ssn" value="${userData.ssn}"  style="margin-left: 1%; width: 400px; height: 30px; display:none;" dir="rtl"  />
<!-- 					  	<br> -->
					  	<input  type="text" name="isItCandidateOrVoter"  id="isItCandidateOrVoter" value="candidate"  style="width: 400px; height: 30px; display:none;" dir="rtl"/>
<!-- 					  	<br> -->
					  	
					 	<input type="submit" value="تسجيل الدخول كمرشح" id="Login" name="Login"  onclick="SigninButtonFun()"  style="width: 400px; height: 38px; font-size: 25px;" dir="rtl">
					 	<br>
				</form>
			</div>

			<div id="loginDiv" style="margin-top: 50px;"  dir="rtl">
				<form action="signin" method = "GET">
<!-- 						<br> -->
					 	<input  type="text" name="userName"  id="userName" value="${userData.userName}"  style="width: 400px; height: 30px; display:none;" dir="rtl"/>
<!-- 					 	<br> -->
					  	<input  type="text" name="password"  id="password" value="${userData.password}"  style="margin-left: 1%; width: 400px; height: 30px; display:none;" dir="rtl"  />
<!-- 					 	<br> -->
					  	<input  onchange="handleChange(this);" type="number" name="ssn"  id="ssn" value="${userData.ssn}"  style="margin-left: 1%; width: 400px; height: 30px; display:none;" dir="rtl"  />
<!-- 					  	<br> -->
					  	<input  type="text" name="isItCandidateOrVoter"  id="isItCandidateOrVoter" value="voter"  style="width: 400px; height: 30px; display:none;" dir="rtl"/>
<!-- 					  	<br> -->
					  	
					 	<input type="submit" value="تسجيل الدخول كناخب" id="Login" name="Login"  onclick="SigninButtonFun()"  style="width: 400px; height: 38px; font-size: 25px;" dir="rtl">
					 	<br>
				</form>
			</div>
               

			<div >
				<br class="verticalSpace">    
				<br class="verticalSpace">    
				<br class="verticalSpace">    
				<br class="verticalSpace">    
				<br class="verticalSpace">    
				<br class="verticalSpace">    
				<br class="verticalSpace">    
				<a href="#"  >__________________________________________________________________________________________________________________________</a>
			</div>
		</div>
		
		
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
	
	
    var result = confirm("هل أنت متأكد أنك تريد إلغاء اختيار المرشح الخاص بك؟");
    //var result = confirm("Are you sure you want to cancel your candidate selection.");
    if (result == true) {
		setTimeout(function() {
			alert("You have succefully canceled you selection,you will be forwarded to new screen, please sign in to see new update to your profile");
			window.location.href = '/cancelCandidate?candidateId='+id+'&voterId='+voterId;
			}, 1500);
    } else {
    	
    }
	
}


function checkButton() {
	 
    if(document.getElementById('candidateId').checked) {
        window.location.href = "candidacyconditions";
        
        
    }   
    else if(document.getElementById('voterId').checked) {   
    	window.location.href = "voterRegistration"
    	
    	
    }   

    else {
    	$('#errorId').show(); 

		document.getElementById("errorId").innerHTML= "الرجاء تحديد خيار";
		setTimeout(function() {
			$('#errorId').hide();	 
		}, 3000); 
           
    }   
}
</script>

    
    
</html>
