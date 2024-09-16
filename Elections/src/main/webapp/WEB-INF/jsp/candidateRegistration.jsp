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


.popupBox{
font-weight: bold;
position:absolute;
background-color: #F5F5F5;
margin-left: 100px;
margin-top: 100px;
padding-top: 100px;
font-size:33px;  
/* background-color: #679FAB; */
/* top:70%; */
/* left:50%; */
width:300px;  /* adjust as per your needs */
height:1400px;   /* adjust as per your needs */
/* margin-left:100px;     */
 margin-right:55%;    
/* margin-top:10px;   /* negative half of height above */ */
flex: 0 0 200px;
border-radius: 20px; 
background-image: linear-gradient(to top left, rgba(0, 0, 0, 0.2), rgba(0, 0, 0, 0.2) 30%, rgba(0, 0, 0, 0));
box-shadow: inset 2px 2px 3px rgba(255, 255, 255, 0.6), inset -2px -2px 3px rgba(0, 0, 0, 0.6);
}

.center {
  border: 5px solid;
  margin: auto;
  width: 90%; 
  padding: 10px;
  text-align: center;
  align-content: center;
}

</style>


<body>
<div class="center" dir="rtl">  

    <div id="load"></div>
    <div id="contents">
    	
    </div>

	<div  style="border: 3px solid #73AD21; background-color: #679FAB;  height: 100px; color: white;" dir="rtl">  
		<table>
			<tr>
				<td>  
					<a href="/">
				  		<img src="<c:url value="/resources/images/jordanflagonhand.jpg" />" alt="image"   style="width: 100px; height: 90px; border-radius: 25%; "/> 
					</a>
				</td>
				<td style="width: 100px;"></td>  
				<td style=" font-size: 40px; font-weight: bold; " align="center">             
	 					*شاشه تسجيل المرشح البرلماني*
				</td>
			</tr>
		</table>
	</div>
	<br>
	<div style="font-size: 30px; font-weight: bold; width: 100%;" >     
  			الرجاء ملء الحقول ادناه حتى تتمكن من تسجيل كمرشح للبرلمان الاردني
  			<br>
  			الرجاء ملء الحقول بالترتيب من اعلى الى اسفل
  	</div>
  	<br>
	<div style="margin-top: 1%;" align="center">
		<div id="addCandidate">
			<div style="border-radius: 25px;   background-position: left top;   padding: 5px;">
			<span id="errorRegistMessage" style="color:red;">${errorRegistMessage}</span>
<!-- 			<span id="failsRegistMessage" class="popupBox"  style="padding-top: 35px; color: red;  font-size: 20px;"></span> -->
			<p id="ssnErrorMessage" class="popupBox" style="background-color:gray;   color: yellow;"></p>
			
				<div  id="failsRegistMessage"  class="popupBox" style="color: red; ">
				<header>رسالة خطأ  :</header>
				</div>   
				
				<table style="margin-left:150px; font-size: 30px; font-weight: bold; width: 70%;">
					<tr>
						<td>
 							<a style="font-size:25px;" href="https://www.iec.jo/ar/%D8%AC%D8%AF%D8%A7%D9%88%D9%84-%D8%A7%D9%84%D9%86%D8%A7%D8%AE%D8%A8%D9%8A%D9%86-%D8%A7%D9%84%D9%85%D8%AD%D8%AF%D8%AB%D8%A9-%D9%84%D8%BA%D8%A7%D9%8A%D8%A9-%D8%AA%D8%A7%D8%B1%D9%8A%D8%AE-20231231"  target = "_blank">لمعرفة دائرتك الانتخابيه اضغط على هذا الرابط</a>
						</td>
					</tr>
					<tr>
						<td>	
							<table style="width: 100%; ">
										<tr>
											<td dir="rtl">
												<label class="required"></label>
								   				<span style="direction: rtl; width: 300px;"> اختر المحافظة
								   				<br>								 
													<select class="input" id="governorateDataListId" style=" text-align: center; background-color: lightgray; font-size: 30px; font-weight: bold; width: 80%; " onchange="changeGovernorate(this.value)" >      			 
														    <option value="Select" name ="Select"  id="0" selected>--اختر المحافظة:--</option>
														    <c:forEach  items="${governorateDataList}" var="governorateData">  
																    <c:choose>
																		  <c:when test="${governorateData.selectedItem == GlobalConstant.TRUE_FIRST_CAPITAL}">
																		  	<option value="${governorateData.id}"  name="${governorateData.id}" id= "${governorateData.id}" selected>${governorateData.arabicName}</option> 
																		  </c:when>
																		  <c:otherwise>
																		  	<option value="${governorateData.id}"  name="${governorateData.id}" id= "${governorateData.id}">${governorateData.arabicName}</option>
																		  </c:otherwise>
																	</c:choose>
														    </c:forEach>
													</select>
												</span>
												
												<br/>
										</td>
<!-- 										<td> -->
<!-- 				 							<a style="font-size:25px;" href="https://www.iec.jo/ar/%D8%AC%D8%AF%D8%A7%D9%88%D9%84-%D8%A7%D9%84%D9%86%D8%A7%D8%AE%D8%A8%D9%8A%D9%86-%D8%A7%D9%84%D9%85%D8%AD%D8%AF%D8%AB%D8%A9-%D9%84%D8%BA%D8%A7%D9%8A%D8%A9-%D8%AA%D8%A7%D8%B1%D9%8A%D8%AE-20231231"  target = "_blank">لمعرفة دائرتك الانتخابيه اضغط على هذا الرابط</a> -->
<!-- 										</td>										 -->
									</tr>	
									<br>	
									<tr>
										<td dir="rtl" > 
											<label class="required"></label>
											<span>اختر الدائرة الانتخابية<br />
												<select class="input" id="constituencyDataListId" style="font-size: 30px; font-weight: bold; width: 80%; text-align: center; background-color: lightgray;" onchange="changeConstituency(this.value)" >      			 
													    <option value="Select" name ="Select"  id="0">-- : اختر الدائرة الانتخابية --</option> 
													    <c:forEach  items="${constituencyDataList}" var="constituencyData">   
													        <option value="${constituencyData.id}"  name="${constituencyData.id}" id= "${constituencyData.id}">${constituencyData.arabicName}</option>    
													    </c:forEach>
												</select><br />
											</span>
										</td>
									</tr>
									
									
									 <tr >
									 	<td dir="rtl"><label class="required">
									 		</label> اسم المستخدم<br /> 
									 		<input type="text" style="font-size: 30px; font-weight: bold; width: 80%;" placeholder="اسم المستخدم" id="userName" name="userName" value=""  class="input" disabled="block" />
									 	</td>
									 </tr>
	 							 	 <tr >  
									 	<td dir="rtl">
									 	<label class="required">
									 	
									 	</label> كلمة المرور<br />
									 	<input type="password" style="font-size: 30px; font-weight: bold; width: 80%;" placeholder="كلمة المرور" id="password"  name="password" value="" class="input" disabled="block"/></td>	
									 </tr>	  
									 <tr >
									 	<td dir="rtl">
									 	<label class="required">
									 	</label> أدخل اسمك الكامل كما يظهر في هويتك الأردنية<br /> 
									 	<input type="text" style="font-size: 30px; font-weight: bold; width: 80%;" id="fullName" name="fullName" placeholder=" أدخل اسمك الكامل كما يظهر في هويتك الأردنية" value=""  class="input" disabled="block"/></td>
									 </tr>	 
									 <tr>
										<td dir="rtl">
									 	<label class="required">
										<!--maxlength="10" -->
									 	</label> أدخل رقمك الوطني كما هو موجود في بطاقتك الأردنية<br /><input type="number" style="font-size: 30px; font-weight: bold; width: 80%;" placeholder="الرجاء ادخال ارقام فقط" id="ssn" name="ssn"  value=""  class="input" style="margin-left: 1%;" disabled="block"/></td>
									 	
									</tr>
									 <tr>
										<td dir="rtl">
									 	<label class="required">
										<!-- maxlength="10"-->
									 	</label> قم بتأكيد رقمك الوطني<br /><input type="number" style="font-size: 30px; font-weight: bold; width: 80%;" placeholder="الرجاء ادخال ارقام فقط" id="ssnConfirmation"  name="ssnConfirmation"  value=""  class="input" style="margin-left: 1%;" disabled="block"/></td>
									</tr>
									<tr style="height: 30px;">						
									</tr>
									<tr >
									 	<td>
									 	<label>
									 	 	ارجو الاحتفاظ باسم المستخدم وكلمه المرور التي سوف تدخلها هنا في الاسفل لانك سوف تحتاجها عند تسجيل دخول او عند التصويت
									 	 </label> 
									 	</td>
									 </tr>
									 														 
									 <tr>
									 	<td dir="rtl">
									 	<label class="required">
									 	</label>  رقم هاتفك <br /><input type="number" style="font-size: 30px; font-weight: bold; width: 80%;" placeholder="الرجاء ادخال ارقام فقط" id="mobile" name="mobile" value=""  class="input" disabled="block"/></td>
									 </tr>
									 <tr>
									 	<td dir="rtl">بريدك الالكتروني (اختياري)<br /><input type="text" style="font-size: 30px; font-weight: bold; width: 80%;" id="email" placeholder="بريدك الالكتروني"  name="email"  value="" class="input" disabled="block" title="email" pattern="[^@]+@[^@]+\.[a-zA-Z]{2,6}"/></td>
									 </tr>
									 
									 <tr>
									 		<tr style="height: 30px;">						
									</tr>
									
									<tr style="height: 80px;">
										<td dir="rtl">
											<input class="styled"  style="font-size: 30px; font-weight: bold; width: 80%;" type="submit" value="تسجيل" style="background-color: black; color: white; text-decoration: underline; cursor: pointer;"  onclick="addCandidateFunc(1)" id="addCandidateFunc"/> 
										</td>
									</tr>
							  </table>														
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>

    <c:forEach begin="0" end="50" varStatus="loop">
<br class="verticalSpace">
</c:forEach>
 </div>
</body>


<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
<script type="text/javascript">

window.onload = function() {

// 	alert("window.onload");
	alert("مرحبا بك في موقع مشروع الانتخابات الاردنيه البرلمانيه لقد وصلت الى شاشه تسجيل المرشح الاردني الرجاء اذا وصلت الى هذه الشاشه عن طريق الخطا فالخروج منها اذا تعتقد انك تريد الترشح لمجلس البرلمانيه الاردني 2024 يمكنك البقاء في هذه الصفحه وادخال معلوماتك كما في الهويه الاردنيه الرجاء اختيار الدائره الانتخابيه الصحيحه سوف يقوم هذا الموقع بحفظ معلوماتك المدخله لاعاده استخدامها لمساعدتك في اعاده استخدامها عند الدخول والخروج في ومن هذا الموقع عند ضغطك على زر اوكي   او ok في الاسفل فانك تقبل بمشاركتك البيانات المدخله مع هذا الموقع هذا الموقع سوف يستخدم هذه المعلومات فقط لمساعدتك بانشاء صفحه شخصيه يمكن لاي مواطن اردني رؤيتها والتصويت لك");
	$("#addCandidate").show();
	$("#candidateDataListTable").show();
	$("#failsRegistMessage").hide();   
	$('#ssnErrorMessage').hide();
	
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
	var ssnConfirmation = document.getElementById('ssnConfirmation').value;
	var governorateId= document.getElementById('governorateDataListId').value;
	var constituencyId= document.getElementById('constituencyDataListId').value;
// 	var regionId = document.getElementById('regionDataListId').value;
// 	var singupAsvoterFlag = document.getElementById('voterCheckboxId').value;
	var singupAsvoterFlag =  $('#voterCheckboxId').is(':checked'); 
	
	
    document.getElementById('load').style.visibility="visible";
    document.getElementById('contents').style.visibility="visible";
    
    
    
	if (fullName != null && fullName != '' && governorateId !='Select' && constituencyId !='Select' 
		&& ssn != null && ssn != '' && ssnConfirmation != null && ssnConfirmation != '' 
		//|| mobile = null || mobile == ''
		&& userName != null && userName != ''
			&& password != null && password != '' 
		//|| ssnStr!=ssnConfirmation
		) {
		

if( (isNaN(ssn) && ssn !='') || (ssn<1000000000) || (ssn>9999999999)  ){
	var ssnEnteredWasBigOrSmall = false;
// 	alert(ssn<1000000000) || (ssn>9999999999)  );
	if( (ssn<1000000000) || (ssn>9999999999)  ){
		//if ssn  was entered big or small then do not show that the issue is only in ssn
		ssnEnteredWasBigOrSmall = true;
	}
	
	ssnAndconfirmationAreSame = false;
 	//if ssn  was entered big or small then do not show that the issue is only in ssn
 	if(!ssnEnteredWasBigOrSmall){
 	document.getElementById("ssn").style.border= "5px solid"; 
 	document.getElementById("ssn").style.borderColor = "yellow";
 	document.getElementById("ssnConfirmation").style.border= "5px solid";
 	document.getElementById("ssnConfirmation").style.borderColor = "yellow";	 		
 	}
	
	$('#ssnErrorMessage').hide();
//  	$("#ssnErrorMessage").html("لم يتم العثور على اي بيانات بالمعلومات المدخله، الرجاء التاكد من ان الاسم الكامل والرقم الوطني تماما كما في الهويه الشخصيه، الرقم الوطني الاردني يجب ان يكون ارقام فقط، الرجاء التاكد ايضا من الدائره الانتخابيه الصحيحه."); 
	$("#ssnErrorMessage").html("لم يتم العثور على بيانات بالمعلومات المدخله الرجاء التاكد مما يلي<br><br>1. الاسم المدخل تماما كما في الهويه الشخصيه<br><br>2. الرقم الوطني تماما كما في الهويه الشخصيه<br><br>3. الرقم الوطني يجب ان يكون ارقام فقط<br><br>4. الرقم الوطني يجب ان يكون باللغه الانجليزيه<br><br>5. تاكد من الدائره الانتخابيه الصحيحه"); 
	alert("لم يتم العثور على بيانات بالمعلومات المدخله الرجاء التاكد مما يلي\n1. الاسم المدخل تماما كما في الهويه الشخصيه\n2. الرقم الوطني تماما كما في الهويه الشخصيه\n3. الرقم الوطني يجب ان يكون ارقام فقط\n4. الرقم الوطني يجب ان يكون باللغه الانجليزيه\n5. تاكد من الدائره الانتخابيه الصحيحه"); 
	$('#ssnErrorMessage').show();
	
	setTimeout(function() {
	 	document.getElementById("ssn").style.border= "5px solid"; 
	 	document.getElementById("ssn").style.borderColor = "red";
	 	document.getElementById("ssnConfirmation").style.border= "1px solid"; 
	 	document.getElementById("ssnConfirmation").style.borderColor = "black";
		$('#ssnErrorMessage').hide();
		
	}, 20000);
	
	setTimeout(function() {
		document.getElementById('load').style.visibility="hidden";
		document.getElementById('contents').style.visibility="hidden";
	}, 1000); 
	
	return ;
}

}
    
    
    
    
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
		|| ssn == null || ssn == '' || ssnConfirmation == null || ssnConfirmation == '' 
		|| mobile == null || mobile == ''
		|| userName == null || userName == ''
		|| password == null || password == '' 
		 
// 			|| regionId =='Select'
			) { 

		
		

		
		if(governorateId=='Select'){

		 	document.getElementById("governorateDataListId").style.border= "5px solid"; 
		 	document.getElementById("governorateDataListId").style.borderColor = "red";
			
			setTimeout(function() {
			 	document.getElementById("governorateDataListId").style.border= "1px solid"; 
			 	document.getElementById("governorateDataListId").style.borderColor = "black";
			}, 15000); 
		}
		if(constituencyId=='Select'){

		 	document.getElementById("constituencyDataListId").style.border= "5px solid"; 
		 	document.getElementById("constituencyDataListId").style.borderColor = "red";
			
			setTimeout(function() {
			 	document.getElementById("constituencyDataListId").style.border= "1px solid"; 
			 	document.getElementById("constituencyDataListId").style.borderColor = "black";
			}, 15000); 
		}
		if(ssn==''){ 

		 	document.getElementById("ssn").style.border= "5px solid"; 
		 	document.getElementById("ssn").style.borderColor = "red";
			
			setTimeout(function() {
			 	document.getElementById("ssn").style.border= "1px solid"; 
			 	document.getElementById("ssn").style.borderColor = "black";
			}, 15000); 
		}

		
		if(ssnConfirmation==''){ 

		 	document.getElementById("ssnConfirmation").style.border= "5px solid"; 
		 	document.getElementById("ssnConfirmation").style.borderColor = "red";
			
			setTimeout(function() {
			 	document.getElementById("ssnConfirmation").style.border= "1px solid"; 
			 	document.getElementById("ssnConfirmation").style.borderColor = "black";
			}, 15000); 
		}
		if(mobile==''){ 

		 	document.getElementById("mobile").style.border= "5px solid"; 
		 	document.getElementById("mobile").style.borderColor = "red";
			
			setTimeout(function() {
			 	document.getElementById("mobile").style.border= "1px solid"; 
			 	document.getElementById("mobile").style.borderColor = "black";
			}, 15000); 
		}
		if(userName==''){ 

		 	document.getElementById("userName").style.border= "5px solid"; 
		 	document.getElementById("userName").style.borderColor = "red";
			
			setTimeout(function() {
			 	document.getElementById("userName").style.border= "1px solid"; 
			 	document.getElementById("userName").style.borderColor = "black";
			}, 15000); 
		}
 
		if(password==''){ 

		 	document.getElementById("password").style.border= "5px solid"; 
		 	document.getElementById("password").style.borderColor = "red";
			
			setTimeout(function() {
			 	document.getElementById("password").style.border= "1px solid"; 
			 	document.getElementById("password").style.borderColor = "black";
			}, 15000); 
		}
		
		if(fullName==''){ 

		 	document.getElementById("fullName").style.border= "5px solid"; 
		 	document.getElementById("fullName").style.borderColor = "red";
			
			setTimeout(function() {
			 	document.getElementById("fullName").style.border= "1px solid"; 
			 	document.getElementById("fullName").style.borderColor = "black";
			}, 15000); 
		}
 

		
		
		
		
		
		
			//$("#failsRegistMessage").html("Please fill all below required fields in order to add new candidate");
			$("#failsRegistMessage").html("*  تم تعيين الحقول باللون الاحمر  يرجى ملء جميع الحقول  المطلوبة بالترتيب من اعلى الى اسفل  بقيم صحيحه ويرجى ان لا تكون فارغه .");
			alert("*  سوف يتم تعيين الحقول باللون الاحمر  يرجى ملء جميع الحقول  المطلوبة بالترتيب من اعلى الى اسفل  بقيم صحيحه ويرجى ان لا تكون فارغه .");
			$('#failsRegistMessage').show();
			setTimeout(function() {
				$('#failsRegistMessage').hide();
			}, 10000); 

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
// 					alert("Success");
			         document.getElementById('load').style.visibility="hidden";
			         document.getElementById('contents').style.visibility="hidden";

// 						setTimeout(function() {
// 							alert("Registration Check Started");
// 						}, 2000); 
					
					if (messageList[0] == "Failed_Registration") {
// 						alert("If");
						alert(messageList[1]);
						$('#errorLoginMessage').hide();
						$('#errorRegistMessage').show(); 
						$('#errorRegistMessage').html(messageList[1]);
						$('#loginDiv').hide();
						$('#registDiv').show();
						
						//if(messageList[1]!="The name you entered is not registered in 2023, please register your name at Independent Election Commission before you register in this application"){

					if(
							messageList[1]!="الرجاء التاكد من ان الاسم والرقم الوطني المدخلين يتطابقان مع هويتك الشخصيه او تاكد من منطقتك الانتخابيه الصحيحه"
						&& 
						messageList[1]!="تم التسجيل بهذا الاسم مسبقا بالفعل او اسم مشابه، اذا كنت تعتقد انك لم تسجل رجاء المحاوله خلال 48 ساعه مره اخرى"
							&&
							messageList[1]!="تم التسجيل بهذا الرقم الوطني مسبقا بالفعل لا يمكنك التسجيل مره اخرى"
						){
						
// 						alert("will direct to voterRegisterWithCredential");
					
							window.location.href = "voterRegisterWithCredential";	
						}
						
						
						
					} else {
// 						alert("else");
				         
						$('#errorRegistMessage').html("لقد قمت بتسجيل حساب كمرشح نيابي اردني بنجاح يرجى الدخول لتتمكن من تتبع عدد الاصوات");
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
// document.getElementById('src').removeAttribute("disabled"); 

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