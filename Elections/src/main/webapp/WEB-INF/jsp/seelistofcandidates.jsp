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
					<p style="margin-left: 120px;">الانتخابات النيابية الأردنية 2024</p>   
			</td>
			<td style="width: 10%">
			</td>   
			<td  style="width:20%;">  
				<a href="/logoutPage">تسجيل خروج</a>
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
<!-- 			<td style="width: 250px;"> -->
<!-- 			</td>    -->
<!-- 			<td>   -->
<!-- 					<a href="/logoutPage">Logout</a>    -->
<!-- 			</td> -->
<!-- 		</tr> -->
<!-- 	</table> -->
<!-- </div> -->


<div dir="rtl" style="width: 70%; margin-top: 5px; padding-top:20px; padding-right:5%;padding-left:5%; margin-right:5%; margin-left:5%; background-color: lightgray">            
<table>
<tr>
<td>
<!-- <label style="font-size: 20px; font-weight: bold; margin-left: 400px; ">List of candidate Screen<br><br>  -->
<label style="font-size: 20px; font-weight: bold; margin-left: 400px; ">قائمه المرشحين للانتخابات البرلمانيه الاردنيه</label>    <br><br>
<label style="font-size: 20px; font-weight: bold; margin-left: 400px; ">${governorateData.arabicName}</label><br><br>
<label style="font-size: 20px; font-weight: bold; margin-left: 400px; ">${constituencyData.arabicName}</label><br><br>
</td></tr></table>

<%-- <span style="background-color: lightgray">${candidateData.fullName}</span> are [${numberOfVotes}] as in below table: --%>

<!-- 			<table style="width: 60%; border-collapse: separate;border-spacing: 0 1em;">    -->
<input type="text" style="display:none;" id="voterId" value="${voterData.id}" />
<table  style="width: 70%;">    
				<tr style="font-size: 20px;">
					<td>يمكنك الضغط على اسم المرشح الانتخابي للتصويت</td>
					<td><p style="width: 160px;">الصورة الشخصية<p></td> 
					<td><p style="width: 150px;">مجموع الأصوات<p></td> 
					<c:choose>
			    		<c:when test="${not empty voterData.fullName}">
<!-- 							<td><p style="width: 200px;">Click vote button to vote<p></td> -->
								<td><p style="width: 200px;">انقر على زر التصويت للتصويت<p></td>
			    		</c:when>    
					</c:choose>
					 
				</tr>
				<c:forEach items="${candidateDataList}" var="candidateData">
				    <tr > 
				      <td style="border: solid;">
					      <table style="font-size: 16px;">
						      	<tr>
						      		<td style="width: 500px; height: 60px; text-align: center;">    
<%-- 				      					<c:out value="${candidateData.englishFullName}"/> --%>
										<%-- onclick="voteToCandidateFun(${candidateData.id})" --%>
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
						      	<tr>
<!-- 						      		<td style="text-align: center; width: 60px; color: red;"> -->
<!-- 						      		_______________________________________   -->
<%--    								     <button class="styled"  type="submit"  id="voteId" value="${candidateData.id}" style="width: 60px; height: 40px; float:right; background-color:  #00008B; cursor: pointer; background-color: black; color: white; align : center; margin-right: 150px;" onclick="voteToCandidateFun(${candidateData.id}) "> --%>
<!-- 								      		Vote -->
<!-- 								      	</button> -->
<!-- 						      		</td> -->
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
 

	<div id="loginDiv" style="margin-top: 50px;">
		<form action="signin" method = "GET">    
			 <input class="input" type="text" name="userName"  id="userName" value="${userData.userName}" style="display:none;" /> 
			 <input class="input" type="password" name="password"  id="password" value="${userData.password}" style="display:none;"/> 
			 <input type="submit" value="Back" id="Login" name="Login" class="button" style="width: 55px; height: 30px; font-size: 16px;">  
		</form>
		<br class="verticalSpace">
	</div>		

</div>


<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
<script type="text/javascript">

function voteToCandidateFun(id){
	var voterId= document.getElementById('voterId').value;
            var result = confirm("Are you sure you want to vote to this candidate.");
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