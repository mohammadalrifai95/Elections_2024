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


<table >
	<tr>
		<td>
			<label style="font-size: 20px; font-weight: bold; margin-left: 500px;">شاشه قائمه الاشخاص الذين قاموا بالتصويت لترشيحكم</label>
		</td>
	</tr>
</table>          
<div style="width: 100%; margin-left: 100px; margin-top: 65px; font-size: 30px; font-weight: bold;">
  

<c:choose>
    <c:when test="${numberOfVotes=='0'}">
	حاليا ليس لديك  اي ناخبين صوتو للترشيحك  الرجاء التواصل مع الناخبين للتصويت لترشيحك عن طريق هذا التطبيق
    </c:when>    
    <c:otherwise>


		<label style="font-size: 16px; font-weight: bold; margin-left: 1px;">  جميع الناخبين الذين صوتوا لترشيح <span style="background-color: lightgray">${candidateData.fullName}</span> العدد [${numberOfVotes}] كما يظهر في الجدول ادناه:</label>
		<table style="width: 800px;">  
			<tr>
				<td>    
					<table style="width: 80%; border-collapse: separate;border-spacing: 0 1em;">   
						<c:forEach items="${voterDataByCandidateIdList}" var="voterData">
				    		<tr>
					      		<td > 
					      			<c:out value="${voterData.fullName}" /> <span style="margin-left: 100px; "></span> 
								<%-- <button value="${voterData.id}"></button> --%>
					      		</td>
					      		<td >
					      		<label style="float: right;">قام بالتصويت لكم</label>  
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
 				<br class="verticalSpace">    
				<br class="verticalSpace">    
				<br class="verticalSpace">    

	<div id="loginDiv" style="margin-top: 50px;">
		<form action="signin" method = "GET">    
<%-- 			 <input class="input" type="text" name="userName"  id="userName" value="${userData.userName}" style="display:none;" />  --%>
<%-- 			 <input class="input" type="password" name="password"  id="password" value="${userData.password}" style="display:none;"/>  --%>
			 <input class="input" type="text" name="userName"  id="userName" value="${userData.userName}"  style="display:none;" /> 
			 <input class="input" type="password" name="password"  id="password" value="${userData.password}" style="display:none;"/> 
<!-- 			 <input type="submit" value="الصفحة السابقة" id="Login" name="Login" class="button" style="width: 10%; height: 30px; font-size: 16px;">   -->
			 <input type="submit" value="الصفحة السابقة" id="Login" name="Login" class="button" style="width: 250px; height: 80px; font-size: 33px; font-weight: bold;">
		</form>
		<br class="verticalSpace">
	</div>		

</div>

		
<c:forEach begin="0" end="100" varStatus="loop">
<br class="verticalSpace">
</c:forEach>
     
				<a href="#" ><p style="text-align:center;  margin-bottom: 0%;  ">________________________________________________________________________________________</p></a>
</div>

</body>
</html>