<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>

<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    

<%@ page import="com.election.mainapp.constant.GlobalMessage_AR" %>
<%@ page import="com.election.mainapp.constant.GlobalConstant" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>Insert title here</title>
</head>
<style>

/* .activelink{ */
/*  color: red; */
/*  background: yellow; */
/* } */


.styled {
    border: 0;
    line-height: 3;
    padding: 0 20px;
    font-size: 1rem;
    text-align: center;
    color: #fff;
    text-shadow: 1px 1px 1px #000;
    border-radius: 10px;
/*     background-color: rgba(220, 0, 0, 1); */
	background-color: white; 
	color: blue;
    background-image: linear-gradient(to top left, rgba(0, 0, 0, 0.2), rgba(0, 0, 0, 0.2) 30%, rgba(0, 0, 0, 0));
    box-shadow: inset 2px 2px 3px rgba(255, 255, 255, 0.6), inset -2px -2px 3px rgba(0, 0, 0, 0.6);
}



.input {
/* 	// needs to be relative so the :focus span is positioned correctly */
	position:relative;
	
/* 	// bigger font size for demo purposes */
	font-size: .9em;
	
/* 	the border gradient */
/* 	background: linear-gradient(21deg, #10abff, #1beabd); */
	
/* 	// the width of the input border */
	padding: 4px;
	
/* 	// we want inline fields by default */
	display: inline-block;
	
/* 	// we want rounded corners no matter the size of the field */
	border-radius: 9999em;
	
	width: 300px;
	}




body {
  margin: 0;
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

.fixedElement {
    background-color: #c0c0c0;
    position:fixed;
    top:0;
    width:100%;
    z-index:100;
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


  .required:after {
    content:" *";
    color: red;
    margin-right: 5px;
  }

#load{
    width:100%;
    height:100%;
    position:fixed;
    z-index:9999;
/*     background:url("/loading.gif") no-repeat center center rgba(0,0,0,0.25) */
    background:url("/resources/images/loading.gif") no-repeat center center rgba(0,0,0,0.25)
}
</style>


<body>
<!-- <ul style="width: 250px; margin-top: 102px;">   -->
<!--   <li><a  class="active">Select one of below options</a></li> -->
<!--   <li><a href="#home" onclick="addCandidate()" id="AddCandidateMenuLink">Add voter</a></li> -->
<!--   <li><a href="#news" onclick="addVoter()" id="AddvoterMenuLink">Add voter</a></li> -->
<!--   <li><a href="#contact">Contact</a></li> -->
<!--   <li><a href="#about">About</a></li> -->
<!--   <li style="margin-top: 310px;" ><a href="login?alredyLoggedin=Yes" class="active" style="background-color: black">Back</a></li> -->
<!-- </ul> -->

<div >

<div  class="fixedElement"  style="background-color: gray; width: 100%; height: 100px; color: white;" >  
	<table style="margin-left: 100px;">            
		<tr>
			<td>            
				<p style=" margin-top: 1px;">  
					<a href="/">   
				  		<img src="<c:url value="/resources/images/jordanflagonhand.jpg" />" alt="image" class="circular_image_header"   style="width: 100px; height: 100px; "/>
					</a>
				</p>
			</td>
			<td style="width: 50px;"></td>
			<td style="width: 500px;">        
				<h2 style=" margin-top: 20px;"> 
					Candidate Registration  
				</h2>
			</td>
<!-- 			<td style="width: 350px;"></td>    -->
<!-- 			<td>   -->
<!-- 				<h5 style=" margin-top: 40px;">   -->
<!-- 					<a href="/logoutPage">Log in/Sign up</a>    -->
<!-- 				</h5>   -->
<!-- 			</td>    -->
		</tr>
	</table>
</div>

<div style="height: 100px;">

	<div style=" margin-left:20%;padding:1px 16px; width:700px;"  id="addCandidate">
		<div style="width:900px; margin-top:102px; background-color:gray;  border-radius: 25px;   background-position: left top;   padding: 5px;">
		<span id="errorRegistMessage" style="color:red;">${errorRegistMessage}</span>
		<span id="failsRegistMessage" style="color:red;"></span>
			<table style="margin-left:150px;">
				<tr>
					<td>	
						<table style="width: 100%">
								<tr>
									<td style="font-size: 20px; font-weight: bold;">
										New Candidate Sign Up
									</td>
								</tr> 
								
									<tr>
										<td>
											<label class="required"></label>
											<c:choose>
										   	 <c:when test="${Language=='Arabic'}">
													<!--Select Governorate 					 -->
													<!--  <select id="selectGovernorateDropListAR" style="width:300px; height:80px;text-align: center; font-size: 25px; background-color: lightgray"> 			 -->
													<!--  <option value="Select" name ="Select"  id="0">--اختر المدينة--</option> -->
													<%--   <c:forEach  items="${governorateDataList}" var="governorateData">  --%>
													<%-- 	  <option value="${governorateData.id}"  name="${governorateData.id}" id= "${governorateData.id}">${governorateData.arabicName}</option> --%>
													<%-- 	  </c:forEach> --%>
													<!--  </select> -->
													<!--   <br /> -->
										    	</c:when>   
										   		<c:otherwise>	
										   			<span >Select Governorate <br \>								 
														<select class="input" id="governorateDataListId" style="font-size: 20px; text-align: center; background-color: lightgray; " onchange="changeGovernorate(this.value)" >      			 
															    <option value="Select" name ="Select"  id="0" selected>--Select Governorate:--</option>
															    <c:forEach  items="${governorateDataList}" var="governorateData">  
																	    <c:choose>
																			  <c:when test="${governorateData.selectedItem == GlobalConstant.TRUE_FIRST_CAPITAL}">
																			  	<option value="${governorateData.id}"  name="${governorateData.id}" id= "${governorateData.id}" selected>${governorateData.name}</option> 
																			  </c:when>
																			  <c:otherwise>
																			  	<option value="${governorateData.id}"  name="${governorateData.id}" id= "${governorateData.id}">${governorateData.name}</option>
																			  </c:otherwise>
																		</c:choose>
															    </c:forEach>
														</select>
													</span><br />
										  	  </c:otherwise>
											</c:choose>
									</td>
								</tr>		
								<tr>
									<td> 
									<label class="required"></label>
										<span>Select Constituency<br />
											<select class="input" id="constituencyDataListId" style="font-size: 20px; text-align: center; background-color: lightgray;" onchange="changeConstituency(this.value)" >      			 
												    <option value="Select" name ="Select"  id="0">--Select Constituency:--</option> 
												    <c:forEach  items="${constituencyDataList}" var="constituencyData">   
												        <option value="${constituencyData.id}"  name="${constituencyData.id}" id= "${constituencyData.id}">${constituencyData.name}</option>    
												    </c:forEach>
											</select><br />
										</span>
									</td>
								</tr>
								
								
								 <tr >
								 	<td><label class="required"></label>Username:<br /> <input type="text" id="userName" name="userName" value=""  class="input" disabled="block" /></td>
								 </tr>
 							 	 <tr >  
								 	<td><label class="required"></label>Password:<br /><input type="password" id="password"  name="password" value="" class="input" disabled="block"/></td>	
								 </tr>	  
								 <tr >
								 	<td><label class="required"></label>Enter your full name as it appears in your Id:<br /> <input type="text" id="fullName" name="fullName" value=""  class="input" disabled="block"/></td>
								 </tr>	 
								 <tr>
									<td>SSN:<br /><input type="password" id="ssn" name="ssn"  value=""  class="input" style="margin-left: 1%;" disabled="block"/></td>
								</tr>
								 <tr>
									<td>Confirm SSN:<br /><input type="password" id="ssnConfirmation" name="ssnConfirmation"  value=""  class="input" style="margin-left: 1%;" disabled="block"/></td>
								</tr>																 
								 <tr>
								 	<td>Phone # :<br /><input type="text" id="mobile" name="mobile" value=""  class="input" disabled="block"/></td>
								 </tr>
								 <tr>
								 	<td>Email:<br /><input type="text" id="email"   name="email"  value="" class="input" disabled="block" title="email" pattern="[^@]+@[^@]+\.[a-zA-Z]{2,6}"/></td>
								 </tr>
<!-- 								<tr> -->
<!-- 									<td> -->
<!-- 									 	<span style="font-size: 20px;"> -->
<!-- 									 		<input id = "voterCheckboxId" name="singupAsvoterFlag" value="" style="margin-top: 10 px; width: 30px; height: 30px;"  onclick="voterCheckboxFun()" type="checkbox" >  -->
<!-- 									 		Automatically sign up as voter user? -->
<!-- 									 	</span> -->
<!-- 									</td> -->
<!-- 								</tr> -->
								<tr style="height: 80px;">
<!-- 									<td> -->
<!-- 										<input class="styled"  type="submit" value="Back" style="background-color: black; color: white; text-decoration: underline; cursor: pointer;"  onclick="addCandidateFunc(1)" id="addCandidateFunc"/>  -->
<!-- 									</td> --> 
									<td>
										<input class="styled"  type="submit" value="Submit" style="background-color: black; color: white; text-decoration: underline; cursor: pointer;"  onclick="addCandidateFunc(1)" id="addCandidateFunc"/> 
									</td>
								</tr>

<!-- 								<tr> -->
<!-- 								    <td> -->
<!-- 								 		<input class="styled"  type="submit" value="Show Canidiate List" style="background-color: black; color: white; text-decoration: underline; cursor: pointer;"   onclick="showCanidiateList(1)" id="showCanidiateList"/> -->
<!-- 									</td> -->
<!-- 								</tr> -->
<!-- 								<tr> -->
<!-- 								  	<td> -->
<!-- 										<input class="styled"  type="submit" value="Hide List" style="background-color: black; color: white; text-decoration: underline; cursor: pointer;"   onclick="hideCanidiateList(1)" id="hideCanidiateList"/> -->
<!-- 									</td> -->
<!-- 								</tr> -->
						  </table>														
					</td>
<!-- 					<td style="width: 120px;"></td> -->
<!-- 					<td >  -->
<!-- 						<table style="width: 100%; margin-bottom: 100px; font-size: 16px;"  cellpadding="5" id="candidateDataListTable" > -->
<!-- 						<tr> -->
<!-- 							<td> -->
<!-- 								<form method="POST" action="uploadImage" enctype="multipart/form-data"> -->
<!-- 									<input id="src1" type="file" name="imageStr" onchange="showImage(this)" onclick="showUploadMsg()"  disabled="block" accept="image/jpeg, image/png, image/jpg"/><br /> <br /> -->
<!-- 									<input type="submit" value="Upload" /> -->
<!-- 								</form> -->
<!-- 							</td> -->
<!-- 						</tr> -->
<!-- 							<tr> -->
<!-- 								<td>  -->
<!-- 										<label>Select Personal image</label> -->
<!-- 										<br><br> -->
<!-- 								  	  <form method="post" action="fileuploadservlet" enctype="multipart/form-data"> -->
										<!-- input you want to read from (src) -->
										<!-- <input id="src"  name="path" type="file" onchange="showImage(this)" onclick="showUploadMsg()" disabled="block" accept="image/jpeg, image/png, image/jpg"/> -->
<!-- 										<input id="src"  name="fileupload" type="file" onchange="showImage(this)" onclick="showUploadMsg()" disabled="block" accept="image/jpeg, image/png, image/jpg"/> -->
										 
<!-- 								  	  	 <input id="src"  name="multipartFile" type="file" onchange="showImage(this)" onclick="showUploadMsg()" disabled="block" accept="image/jpeg, image/png, image/jpg"/>input you want to read from (src)  -->

<!-- 								  	  	 <input id="src"  name="path" type="file" onchange="showImage(this)" onclick="showUploadMsg()" disabled="block" accept="image/*;capture=camera"/>  -->
<!-- 								  	  	 <input id="src"  name="path" type="file" onchange="showImage(this)" onclick="showUploadMsg()" disabled="block" accept="image/*" capture/> input you want to read from (src) -->

<!-- 										 <img id="target"  name="path2"  style="width: 400px; height: 400px;"/> image you want to display it (target) -->
<%-- 											${imageStr} --%>
<%-- 											${bytes} --%>
<%-- 										 <img id="target"  name="path2" src="${imageStr}" style="width: 400px; height: 400px;"/> <!-- image you want to display it (target) --> --%>
<!-- 										 <br> -->
<!-- 										 <span id="uploadMsgId" ></span> -->
										 <!-- <input type="submit" value="Upload" /> -->
<!-- 									  </form> -->
<!-- 								</td> -->
<!-- 							</tr> -->
							<tr>
								<td>
									
								</td>
<!-- 								<td id="fileChosenDispyId" > -->
								
<!-- 									<img  alt="image" class="circular_image_header"   style="width: 100px; height: 100px; "/> -->
<!-- 										<input id="type" name="type"   value=""> -->
<!-- 											<img id="target"/> -->
									
<!-- 								</td> -->
							</tr>
						</table>
<!-- 					</td> -->
<!-- 				</tr> -->
<!-- 			</table> -->
						
<!-- 								<label class="required"></label> -->
<%-- 								<c:choose> --%>
<%-- 							   	 <c:when test="${Language=='Arabic'}"> --%>
<!-- <!-- 							   	 		 Select Governorate 					 --> 
<!-- <!-- 											<select id="selectGovernorateDropListAR" style="width:300px; height:80px;text-align: center; font-size: 25px; background-color: lightgray"> 			 --> 
<!-- <!-- 												    <option value="Select" name ="Select"  id="0">--اختر المدينة--</option> -->
<%-- <%-- 												    <c:forEach  items="${governorateDataList}" var="governorateData">  --%> 
<%-- <%-- 												        <option value="${governorateData.id}"  name="${governorateData.id}" id= "${governorateData.id}">${governorateData.arabicName}</option> --%> 
<%-- <%-- 												    </c:forEach> --%> 
<!-- <!-- 											</select> -->
<!-- <!-- 							        <br /> --> 
<%-- 							    	</c:when>    --%>
<%-- 							   		<c:otherwise>	 --%>
<!-- 							   			<span >Select Governorate <br \>								  -->
<!-- 											<select id="governorateDataListId" style="font-size: 20px; text-align: center; background-color: lightgray; " onchange="changeGovernorate(this.value)" >      			  -->
<!-- 												    <option value="Select" name ="Select"  id="0" selected>--Select Governorate:--</option> -->
<%-- 												    <c:forEach  items="${governorateDataList}" var="governorateData">   --%>
<%-- 														    <c:choose> --%>
<%-- 																  <c:when test="${governorateData.selectedItem == GlobalConstant.TRUE_FIRST_CAPITAL}"> --%>
<%-- 																  	<option value="${governorateData.id}"  name="${governorateData.id}" id= "${governorateData.id}" selected>${governorateData.name}</option>  --%>
<%-- 																  </c:when> --%>
<%-- 																  <c:otherwise> --%>
<%-- 																  	<option value="${governorateData.id}"  name="${governorateData.id}" id= "${governorateData.id}">${governorateData.name}</option> --%>
<%-- 																  </c:otherwise> --%>
<%-- 															</c:choose> --%>
<%-- 												    </c:forEach> --%>
<!-- 											</select> -->
<!-- 										</span><br /> -->
<%-- 							  	  </c:otherwise> --%>
<%-- 								</c:choose> --%>
<!-- 						</td> -->
<!-- 					</tr>		 -->
<!-- 					<tr> -->
<!-- 						<td>  -->
<!-- 						<label class="required"></label> -->
<!-- 							<span>Select Constituency<br /> -->
<!-- 								<select id="constituencyDataListId" style="font-size: 20px; text-align: center; background-color: lightgray;" onchange="changeConstituency(this.value)" >      			  -->
<!-- 									    <option value="Select" name ="Select"  id="0">--Select Constituency:--</option>  -->
<%-- 									    <c:forEach  items="${constituencyDataList}" var="constituencyData">    --%>
<%-- <%-- 									        <option value="${constituencyData.name}"  name="${constituencyData.id}" id= "${constituencyData.id}">${constituencyData.name}</option>     --%> 
<%-- 									        <option value="${constituencyData.id}"  name="${constituencyData.id}" id= "${constituencyData.id}">${constituencyData.name}</option>     --%>
<%-- 									    </c:forEach> --%>
<!-- 								</select><br /> -->
<!-- 							</span> -->
<!-- 						</td> -->
<!-- 					</tr> -->
<!-- <!-- 					<tr> -->
<!-- <!-- 						<td>  -->
<!-- <!-- 						<label class="required"></label> -->
<!-- <!-- 							<span style="margin-top: 50px; ">Select Region <br \> -->
<!-- <!-- 								<select id="regionDataListId" style="font-size: 20px; text-align: center; background-color: lightgray; " onchange="changeRegion(this.value)" >      			  --> 
<!-- <!-- 								    <option value="Select" name ="Select"  id="0">--Select Region:--</option>  --> 
<%-- <%-- 								    <c:forEach  items="${governorateDataList}" var="governorateData">   --%> 
<%-- <%-- 								        <option value="${governorateData.id}"  name="${governorateData.id}" id= "${governorateData.id}">${governorateData.name}</option>     --%> 
<%-- <%-- 								    </c:forEach> --%>
<!-- <!-- 								</select><br /> -->
<!-- <!-- 							</span> -->
<!-- <!-- 						</td> --> 
<!-- <!-- 					</tr> --> 
					
<!-- <!-- 						<h3 style="margin-left: 130px;">List of Candidate</h3> --> 
<!-- <!-- 						<table style="width: 100%; margin-bottom: 400px;" border="1" cellpadding="5" id="candidateDataListTable" > --> 
<!-- <!-- 					            <tr> --> 
<!-- <!-- 					                <th>ID</th> --> 
<!-- <!-- 					                <th>firsName</th> --> 
<!-- <!-- 					                <th>lastName</th> --> 
<!-- <!-- 					                <th>Constituency</th>   
<!-- <!-- 					                <th>mobile</th> --> 
<!-- <!-- 					                <th>Email</th> --> 
<!-- <!-- 					            </tr> --> 
<%-- <%-- 					            <c:forEach  var="candidateData" items="${candidateDataList}" > --%> 
<!-- <!-- 					                <tr > -->
<%-- <%-- 					                    <td><c:out value="${candidateData.id}" /></td> --%> 
<%-- <%-- 					                    <td><c:out value="${candidateData.firstName}" /></td> --%> 
<%-- <%-- 					                    <td><c:out value="${candidateData.lastName}" /></td> --%> 
<%-- <%-- 					                    <td><c:out value="${candidateData.location}" /></td> --%>
<%-- <%-- 					                    <td><c:out value="${candidateData.mobile}" /></td> --%> 
<%-- <%-- 					                    <td><c:out value="${candidateData.email}" /></td> --%> 
<!-- <!-- 					                </tr> --> 
<%-- <%-- 					            </c:forEach> --%> 
<!-- <!-- 				       	 </table>				 --> 
<!-- 					</td> -->
<!-- 				</tr> -->
<!-- 			</table> -->
		</div>
	</div>

<!-- 	<div style=" margin-left: 360px;"   id="backbutton" > -->
<!-- 	<form action="login" method="get"> -->
<!-- 	    <input type="text" name="alredyLoggedin" value="Yes" style="display:none;"/><br> -->
<!-- 	  <input type="submit" class="styled" value="Back" style="background-color: black; color: white;"> -->
<!-- 	</form> -->
<!-- 	</div>	 -->
	
</div>

</div>



    <div id="load"></div>
    <div id="contents">
<!--           jlkjjlkjlkjlkjlklk -->
<!-- Registration Check Started -->
    </div>
</body>


<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
<script type="text/javascript">

window.onload = function() {

// 	alert("window.onload"); 
	$("#addCandidate").show();
	$("#candidateDataListTable").show();
	
	
	var  cityLable = '${CityLable}' ;// CityLable from modelandview object 
	var  selectedGovernorate = '${selectedGovernorate}' ;
		if(cityLable !=null && cityLable !=''){
// 			alert("selectedGovernorate = "+ selectedGovernorate); 
	}
		
}



function voterCheckboxFun(){
	var isCheced = $('#voterCheckboxId').is(':checked');
// 	alert(isCheced );
// 	alert(isCheced==false );
// 	alert(isCheced==true );    
}

 
function addCandidate(){
	$("#addCandidate").show();
// 	$("#addVoter").hide();
	
// 	document.getElementById("AddCandidateMenuLink").style.color = "red";
// 	document.getElementById("AddCandidateMenuLink").style.backgroundColor = "yellow";
	document.getElementById("AddvoterMenuLink").style.color = "black";
	document.getElementById("AddvoterMenuLink").style.backgroundColor = "white";
}



function addVoter(){
	$("#addCandidate").hide();
// 	$("#addVoter").show();
	$("#errorRegistMessage").show();
// 	$("#homeDive").hide();

	document.getElementById("AddvoterMenuLink").style.color = "red";
	document.getElementById("AddvoterMenuLink").style.backgroundColor = "yellow";
// 	document.getElementById("AddCandidateMenuLink").style.color = "black";
// 	document.getElementById("AddCandidateMenuLink").style.backgroundColor = "white";


}


function hideCanidiateList(param){

	$('#candidateDataListTable').hide();
	//$('#showCanidiateList').show();
	$('#hideCanidiateList').hide();
	
}

function showCanidiateList(param){

	$('#candidateDataListTable').show();
	$('#showCanidiateList').hide();
	$('#hideCanidiateList').show();
	
}


// function addCandidateFunc2(){
	
// 	alert("in addCandidateFunc");
// }

function addCandidateFunc(param){
// 	alert("in addCandidateFunc");  
// 	var firstName = document.getElementById('firstName').value;
// 	var lastName = document.getElementById('lastName').value;
// 	var location = document.getElementById('CandiLocation').value;
	var fullName = document.getElementById('fullName').value;
	var userName= document.getElementById('userName').value;
	var password= document.getElementById('password').value;
	var mobile = document.getElementById('mobile').value;
	var email = document.getElementById('email').value;
	var ssn = document.getElementById('ssn').value;
	var governorateId= document.getElementById('governorateDataListId').value;
	var constituencyId= document.getElementById('constituencyDataListId').value;
// 	var regionId = document.getElementById('regionDataListId').value;
// 	var singupAsvoterFlag = document.getElementById('voterCheckboxId').value;
	var singupAsvoterFlag =  $('#voterCheckboxId').is(':checked'); 
	
	
    document.getElementById('load').style.visibility="visible";
    document.getElementById('contents').style.visibility="visible";
// 	var imageStr= document.getElementById('src').value;
// 	var formData= document.getElementById('src').value;

// 	var formData= document.getElementById('target').value;
// 	  let formData = new FormData(); 
// 	  formData.append("src", fileupload.files[0]);
// 	  alert(formData );
// 	alert("governorateData = "+ governorateData);
// 	alert("constituencyData = "+ constituencyData);
// 	alert("regionData= "+ regionData);
	
// 	alert( governorateData =='Select' );
// 	alert( constituencyData =='Select' );
// 	alert( regionData =='Select');
	//var path = document.getElementById('src').value;
// 	var imageStr = document.getElementById('src').value;
// 	var multipartFile = document.getElementById('multipartFile').value;
// 	alert(multipartFile );

// 	var path =  document.getElementById('src')[0].files[0].name;
	//var path = $("#src")[0].files[0].name;
// 	var path = $("#target").value;
	
// 		  let path = new FormData(); 
// 		  path.append("file", src.files[0]);
// 		  alert(path );
	
// 	alert(path2);
	
// 	var path2 = document.getElementById('target').value;
	
// 	var split = path.split('fakepath\\');
// 	alert(split[0]);
// 	alert(split[1]);
// 	alert(split[2]);
// 	alert(split[3]);
	  
	if (fullName == null || fullName == '' || governorateId =='Select' || constituencyId =='Select' 
// 			|| regionId =='Select'
			) { 

			$("#failsRegistMessage").html("Please fill all below required fields in order to add new candidate");
			$('#failsRegistMessage').show();
			setTimeout(function() {
				$('#failsRegistMessage').hide();
			}, 5000); 

			setTimeout(function() {
				document.getElementById('load').style.visibility="hidden";
				document.getElementById('contents').style.visibility="hidden";
			}, 1000); 

		} else {
// 			alert("before Ajax");  
// 			alert("before Ajax");  
			$.ajax({
				type : "GET",
                enctype: 'multipart/form-data',
				//url: "addCandidateFromContactusScreen",
				url : "addCandidate",
				data : {
					"fullName" : fullName,
					"userName" : userName,
					"password" : password,
					"email" : email,
					"mobile" : mobile,
					"ssn" : ssn,
					"governorateId" : governorateId,
					"constituencyId" : constituencyId,
// 					"regionId" : regionId,
					"singupAsvoterFlag":singupAsvoterFlag
// 					"formData":formData 
// 					,"multipartFile":multipartFile
// 					,"path2":path2
					

				},
				contentType : "application/json",

				success : function(messageList) {
					
			         document.getElementById('load').style.visibility="hidden";
			         document.getElementById('contents').style.visibility="hidden";

						setTimeout(function() {
							alert("Registration Check Started");
						}, 2000); 
					
					if (messageList[0] == "Failed_Registration") {
						$('#errorLoginMessage').hide();
						$('#errorRegistMessage').html(messageList[1]);
						$('#loginDiv').hide();
						$('#registDiv').show();
						
						if(messageList[1]!="The name you entered is not registered in 2023, please register your name at Independent Election Commission before you register in this application"){
							window.location.href = "voterRegisterWithCredential";	
						}
						
						
						
					} else {
				         
						$('#errorRegistMessage').html("Successfully added candidate");
						$('#candidateDataListTable').hide();
						//window.location.href = "voterregisterwithcredential";
						window.location.href = "uploadImageScreen";
						//$('#loginDiv').show();
						//$('#registDiv').hide();
						//$('#userName').val(messageList[0]);
						//$('#password').val(messageList[1]);
						//$('#loginMessage2').html(messageList[2]);
 						//window.location.href = "contactUs";
						  
					}

					//window.location.href = '/JspControllerHandler?employee='+ JSON.stringify(emp); // redirect     //this would be GET
					// window.location(url);
				},
				error : function(XMLHttpRequest, textStatus, errorThrown) {
			         document.getElementById('load').style.visibility="hidden";
			         document.getElementById('contents').style.visibility="hidden";
			         
					alert("Status: " + textStatus);
					alert("Error: " + errorThrown);
				}

			});//end Ajax

		}//end if else
	}//end of addCandidateFunc 


	function  changeGovernorate(governorateId){
		
		
// 		alert("changeGovernorate to" + " "+ governorateId);
			var governorateName = setGovernorateName(governorateId);
// 		alert("governorateName =" + governorateName);
// 			var showSelectedCity = document.getElementById('showSelectedCity').value;
// 			if(showSelectedCity!=null){      
// 				alert("window will reload"); 
// 				window.location.href="login?alredyLoggedin=Yes";
// 			}
// 			document.getElementById("governorateDataListId").style.color = "blue";
// 			document.getElementById("governorateDataListId").style.backgroundColor = "pink";
			 
			 
			 if(governorateId!='Select'){ 
// 				 alert("Before window.location.");
				 window.location.href="findAllConstituencyByGovId2?governorateId="+governorateId+ "&screen=candidateRegistration"; 	 
			 }
			 	 
	}// end of changeGovernorate--------------------------------------

	function setGovernorateName(governorateId){
		
// 		alert("inside setGovernorateName"); 
		
		if (governorateId == 1){
			return "Amman";				
		} else if (governorateId == 2){
			return "Irbid";
		} else if (governorateId == 3){
			return "Balqa";			
		} else if (governorateId == 4){
			return "Karak";			
		} else if (governorateId == 5){
			return "Ma'an";			
		} else if (governorateId == 6){
			return "Zarqa";			
		} else if (governorateId == 7){
			return "Al-Mafraq";			
		} else if (governorateId == 8){
			return "At-Tafilah";			
		} else if (governorateId == 9){
			return "Madaba";
		} else if (governorateId == 10){
			return "Jerash";			
		} else if (governorateId == 11){
			return "Ajloun";			
		} else if (governorateId == 12){
			return "Aqaba";			
		} else if (governorateId == 13){
			return "Badia"; 
		}
		
}//end of setGovernorateName------------------------------------------



function  changeConstituency(constituencyId){ 

// 	alert(constituencyId);   
document.getElementById('userName').removeAttribute("disabled");
document.getElementById('password').removeAttribute("disabled");
document.getElementById('fullName').removeAttribute("disabled");
document.getElementById('ssn').removeAttribute("disabled");
document.getElementById('mobile').removeAttribute("disabled");
document.getElementById('ssnConfirmation').removeAttribute("disabled"); 
document.getElementById('email').removeAttribute("disabled");
document.getElementById('src').removeAttribute("disabled"); 

}


// function showImage(src,target) {
// 	  var fr=new FileReader();
	  
// 	  // when image is loaded, set the src of the image where you want to display it
// 	  fr.onload = function(e) { target.src = this.result; };

// 	  src.addEventListener("change",function() {
// 	    // fill fr with image data    
	    
// 	    fr.readAsDataURL(src.files[0]);
	    
// 	  });
	  
// 	}


// function showUploadMsg() {
// $("#uploadMsgId").html("This image will be uploaded when click submit button");

//document.getElementById('src').value = canvas.toDataURL("image/png");
// String imageData = request.getParameter("src");
// $("#camera").webcam({
// 	width: 320,
// 	height: 240,
// 	mode: "callback",
// 	swffile: "/download/jscam_canvas_only.swf",
// 	onTick: function() {},
// 	onSave: function() {},
// 	onCapture: function() {},
// 	debug: function() {},
// 	onLoad: function() {}
// });


// }
// 	var src = document.getElementById("src");
// 	var target = document.getElementById("target");
// 	showImage(src,target);
// show loading icon until the page is load? STARTS
document.onreadystatechange = function () {
	  var state = document.readyState
	  if (state == 'interactive') {
	       document.getElementById('contents').style.visibility="hidden";
	  } else if (state == 'complete') {
	      setTimeout(function(){
	         document.getElementById('interactive');
	         document.getElementById('load').style.visibility="hidden";
	         document.getElementById('contents').style.visibility="visible";
	      },1000);
	  }
	}
// show loading icon until the page is load? ENDS
</script>

</html>