<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
    
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
<meta charset="windows-1256">
<title>Insert title here</title>
</head>
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
			</c:choose>
			<c:choose>
			    <c:when test="${not empty candidateData.fullName}">
					<p style=" margin-top: 1px;">
						<span>Welcome Candidate:<br> ${candidateData.fullName}</span>   
					</p>
			    </c:when>    
			</c:choose>

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
<table>
<tr>
<td>
<label style="font-size: 20px; font-weight: bold; margin-left: 400px; ">قائمه المرشحين للانتخابات البرلمانيه الاردنيه</label>    <br><br>
<label style="font-size: 20px; font-weight: bold; margin-left: 400px; ">${governorateData.arabicName}</label><br><br>
<label style="font-size: 20px; font-weight: bold; margin-left: 400px; ">${constituencyData.arabicName}</label><br><br>
</td></tr></table>

<input type="text" style="display:none;" id="voterId" value="${voterData.id}" />
<table  style="width: 70%;">    
				<tr style="font-size: 23px; font-weight: bold;">
					<td>يمكنك الضغط على اسم المرشح الانتخابي ادناه للتصويت</td>
					<td><p style="width: 160px;">الصورة الشخصية<p></td> 
					<td><p style="width: 150px;">مجموع الأصوات<p></td> 
					<c:choose>
			    		<c:when test="${not empty voterData.fullName}">
								<td><p style="width: 200px;"> يمكنك ايضا الضغط على الزر التصويت الاسود ادناه للتصويت<p></td>
			    		</c:when>    
					</c:choose>
					 
				</tr>
				<c:forEach items="${candidateDataList}" var="candidateData">
				    <tr style="font-size: 20x; font-weight: bold;"> 
				      <td style="border: solid;">
					      <table style="font-size: 16px;">
						      	<tr>
						      		<td style="width: 100px; height: 60px; text-align: center;">    
	      					 			<c:choose>
										    <c:when test="${not empty voterData.fullName}">
													<button style=" width: 180px; height:120px; font-size: 16px;" id="candidateEnglishFullNameId" value="${candidateData.id}" onclick="voteToCandidateFun(${candidateData.id})"><span id="cndidteEngFulNmeId">${candidateData.fullName}</span></button>  
										    </c:when>    
											<c:otherwise>
													<button style=" width: 180px; height:120px; font-size: 16px;" id="candidateEnglishFullNameId" value="${candidateData.id}"><span id="cndidteEngFulNmeId">${candidateData.fullName}</span></button>
										  	</c:otherwise>
										</c:choose>
						      		</td>
						      	</tr>
						      	<tr>
						      	</tr>
					      </table>
				      	</td>
				      	<td style="border: solid;" align="center">
							<c:choose>
							    <c:when test="${empty candidateData.base64image}">
							    	<img src="<c:url value="/resources/images/candidateDefault.png" />" alt="image"  style="width: 120px; height: 120px;"/>
							    </c:when>    
							    <c:otherwise>
							       <img alt="img" src="data:image/jpg;base64,${candidateData.base64image}" style="width: 120px; height: 120px;"/>
							    </c:otherwise>
							</c:choose>
				      	</td>
				      	<td style="border: solid; width: 200px;" align="center" >
				      		<span style="font-size: 20px;">مجموع الأصوات:<br></span>
				      		<span style="font-size: 20px;" ><c:out  value="${candidateData.numberOfVotes}"/></span>
				       </td> 
       					<c:choose>
				    		<c:when test="${not empty voterData.fullName}">
		    		      		<td style=" border: solid; " align="center" >  
							      	<button  type="submit"  id="voteId" value="${candidateData.id}" style="width: 100px; height: 40px;background-color:  #00008B; cursor: pointer; background-color: black; color: white;" onclick="voteToCandidateFun(${candidateData.id}) ">
<!-- 							      		 Vote  -->
											تصويت
							      	</button>
					      		</td>				    		
				    		</c:when>    
						</c:choose>
				    </tr>
			  </c:forEach>
			</table>
 
 
  <c:forEach begin="0" end="3" varStatus="loop">
	<br class="verticalSpace">
</c:forEach>

	<div id="loginDiv" style="margin-top: 50px;">
		<form action="signin" method = "GET">    
			 <input class="input" type="text" name="userName"  id="userName" value="${userData.userName}" style="display:none;" /> 
			 <input class="input" type="password" name="password"  id="password" value="${userData.password}" style="display:none;"/> 
			 <input type="submit" value="الصفحة السابقة" id="Login" name="Login" class="button" style="width: 250px; height: 80px; font-size: 33px; font-weight: bold;">  
		</form>
		<br class="verticalSpace">
	</div>		

 <c:forEach begin="0" end="50" varStatus="loop">
	<br class="verticalSpace">
</c:forEach>
</div>


<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
<script type="text/javascript">
window.onload = function() {
	
alert("ملاحظه: اذا لم يظهر لك اي اسم مرشح في هذه الصفحه بعد، هذا يعني انه لم يقم احد بتسجيل كمرشح نيابي في هذه المنطقه الرجاء اخبار المرشحين بضروره التسجيل ومن ثم سيظهر في هذه الصفحه ويمكنك انتخابه");
	
}
function voteToCandidateFun(id){
	var voterId= document.getElementById('voterId').value;
            var result = confirm("هل أنت متأكد أنك تريد التصويت لهذا المرشح؟");
            if (result == true) {
        		setTimeout(function() {
//         			alert("You have succefully voted, you will be forwarded to new screen,\nPlease sign in to see new update to your profile");
        			alert("لقد قمت بالتصويت بنجاح، سيتم إعادة توجيهك إلى شاشة جديدة،\nيرجى تسجيل الدخول لرؤية التحديث الجديد لملفك الشخصي");
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