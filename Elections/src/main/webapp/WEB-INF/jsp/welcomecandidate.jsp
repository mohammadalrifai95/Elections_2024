<%-- <%@ page language="java" contentType="text/html; charset=windows-1256" pageEncoding="windows-1256"%> --%>
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
</style>
<body>

<div dir="rtl" style="border: 3px solid #73AD21; background-color: #679FAB; width: 70%; padding-right:5%;padding-left:5%; margin-right:5%; margin-left:5%; color: white;">  
	<table style="width: 100%" >            
		<tr>
			<td style="width:20%;">
				<p style=" margin-top: 1px;">
				<span>صفحه المرشح البرلماني  :<br> ${candidateData.fullName}</span>  
				</p>
			</td>
			<td style="width: 10%">
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
 
<div dir="rtl" style="width: 70%; margin-top: 0.05%; padding-top:4%; padding-right:5%;padding-left:5%; margin-right:5%; margin-left:5%; background-color: lightgray; border: 3px solid lightgray;" >            
<table style="width: 100%;">
	<tr>
		<td>
			<label style="font-size: 20px; font-weight: bold; margin-left: 40%;">شاشة تفاصيل المرشح</label>
		</td>
	</tr>
	<tr>
		<!--Table1 -->
		<td> 
			<table style=" width: 100%; font-size: 20px;">
				<tr style=" width: 100%;">
					<td width="50%">الاسم الكامل كما تم إدخاله:</td>  
					<td width="50%">${candidateData.fullName}</td> 
				</tr>
				<tr>
					<td width="50%">اسم المحافظة :</td>    
					<td width="50%">${governorateData.arabicName}</td>  
				</tr>
				<tr>
					<td width="50%">الدائرة الانتخابية:</td>
					<td width="50%">${constituencyData.arabicName}</td>					     
				</tr>
				
				
				<tr style="height: 50%">
		 			<td>
		 			</td>
				</tr>

<!-- 				<tr>  -->
<%-- 					 <td style="font-weight: bold; font-size: 20px;"><a href="/SeeListOfVoters?userName=${userData.userName}&password=${userData.password}&ssn=${userData.ssn}"> انقر هنا لرؤيه جميع الناخبين الذين قاموا بانتخابك </a></td> --%>
<!-- 				</tr>  -->
<!-- 				<tr>  -->
<%-- 					 <td style=" "><a href="/SeeListOfCandidates?userName=${userData.userName}&password=${userData.password}&ssn=${userData.ssn}">انقر هنا لرؤيه جميع المرشحين المتواجدين في نفس دائرتك الانتخابيه</a></td> --%>
<!-- 				</tr>							 -->
			</table>	
		</td>
		<td>
			<table style="margin-top: -30px;">
				<tr>
					<td dir="rtl">
						<a href="/SeeListOfVoters?userName=${userData.userName}&password=${userData.password}&ssn=${userData.ssn}" style="font-size: 20px; ">مجموع الأصوات  
							<button style="font-size: 30px;  background-color: blue;color: white; width: 40%; height:40%; " >${numberOfVotes}</button>
						</a>
					</td>
				</tr>
				<tr>
					<td>
					
						<c:choose>
						    <c:when test="${empty candidateData.base64image}">
						    	<img src="<c:url value="/resources/images/candidateDefault.png" />" alt="image"  style="width: 200px; height: 200px;"/>
						    </c:when>    
						    <c:otherwise>
						    	<img alt="img" src="data:image/png;jpg;jpeg;charset=utf-8;base64,${candidateData.base64image}" style="width: 200px; height: 200px;"/>
						    </c:otherwise>
						</c:choose>
								
					</td>
				</tr>
				<tr>
					<td style="font-size: 20px;"><p style="margin-left: 1%;"> ${candidateData.fullName}</p></td>
				</tr>
			</table>
		</td>
		<td>
		
		</td>
	</tr>
</table>

<table>
				<tr> 
					 <td style="font-weight: bold; font-size: 20px;"><a href="/SeeListOfVoters?userName=${userData.userName}&password=${userData.password}&ssn=${userData.ssn}"> انقر هنا لرؤيه جميع الناخبين الذين قاموا بانتخابك </a></td>
				</tr> 
				<tr style="height: 50%;"> 
					<td>....................................................................................................</td>
				</tr> 
				<tr> 
					 <td style="font-weight: bold; font-size: 20px;"><a href="/SeeListOfCandidates?userName=${userData.userName}&password=${userData.password}&ssn=${userData.ssn}">انقر هنا لرؤيه جميع المرشحين المتواجدين في نفس دائرتك الانتخابيه</a></td>
				</tr>	
</table>


<c:forEach begin="0" end="100" varStatus="loop">
<br class="verticalSpace">
</c:forEach>
    
<a href="#"  >__________________________________________________________________________________________________________________________</a>

</div>

</body>




<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
<script type="text/javascript">
</script>

    
    
</html>
