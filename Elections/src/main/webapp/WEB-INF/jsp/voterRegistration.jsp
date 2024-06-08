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
position:absolute;
background-color: #F5F5F5;  
/* background-color: #679FAB; */
/* top:70%; */
/* left:50%; */
width:350px;  /* adjust as per your needs */
height:100px;   /* adjust as per your needs */
/* margin-left:100px;     */
 margin-right:50%;    
margin-top:50px;   /* negative half of height above */
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

	<div    style="border: 3px solid #73AD21; background-color: #679FAB;  height: 100px; color: white;" dir="rtl">  
		<table>
			<tr>
				<td>  
					<a href="/">
				  		<img src="<c:url value="/resources/images/jordanflagonhand.jpg" />" alt="image"   style="width: 100px; height: 90px; border-radius: 25%; "/> 
					</a>
				</td>
				<td style="width: 36%"></td>  
				<td style="width:50%; text-align: center; font-size: 25px; font-weight: bold;">             
	 					شاشه تسجيل الناخب الاردني
				</td>
			</tr>
		</table>
	</div>
 	<div style="font-size: 22px;" align="center" >     
  			الرجاء ملء الحقول ادناه حتى تتمكن من تسجيل الناخب الاردني
  			<br>
  			الرجاء ملء الحقول بالترتيب من اعلى الى اسفل كما هي تماما في الهويه الاردنيه
  	</div>

	<div align="center">
		<div style=" margin-left:20%;padding:1px 16px; width:700px;"  id="addCandidate">
			<div style="width:900px; border-radius: 25px;   background-position: left top;   padding: 5px;">
			<p id="errorRegistMessage" class="popupBox" style="padding-top: 35px; color: red; font-size: 20px; font-weight: bold;">${errorRegistMessage}</p>
			<span id="failsRegistMessage" class="popupBox"  style="padding-top: 35px; color: red;  font-size: 20px;"></span>
			<p id="ssnErrorMessage" class="popupBox" style="padding-top: 35px;background-color:gray;  margin-top:170px; color: yellow; font-size: 20px; font-weight: bold;"></p>
				<table>
					<tr>
						<td >
							<label class="required"></label>
							<c:choose>
						   	 <c:when test="${Language=='Arabic'}">
						    	</c:when>   
						   		<c:otherwise>	
						   			<span >اختر المحافظة <br \>								 
										<select id="governorateDataListId" style="font-size: 20px; text-align: center; background-color: lightgray; " onchange="changeGovernorate(this.value)" class="input">      			 
											    <option value="Select" name ="Select"  id="0" selected> --اختر المحافظة:-- </option>
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
									</span><br />
						  	  </c:otherwise>
							</c:choose>
						</td>
						<td>
 							<a style="font-size:25px;" href="https://www.iec.jo/ar/%D8%AC%D8%AF%D8%A7%D9%88%D9%84-%D8%A7%D9%84%D9%86%D8%A7%D8%AE%D8%A8%D9%8A%D9%86-%D8%A7%D9%84%D9%85%D8%AD%D8%AF%D8%AB%D8%A9-%D9%84%D8%BA%D8%A7%D9%8A%D8%A9-%D8%AA%D8%A7%D8%B1%D9%8A%D8%AE-20231231"  target = "_blank">لمعرفة دائرتك الانتخابيه اضغط على هذا الرابط</a>
						</td>
					</tr>		
					<tr>
						<td> 
							<label class="required"></label>
							<span> اختر الدائرة الانتخابية <br />
							<select id="constituencyDataListId" style="font-size: 20px; text-align: center; background-color: lightgray;" onchange="changeConstituency(this.value)" class="input">      			 
							    <option value="Select" name ="Select"  id="0"> -- : اختر الدائرة الانتخابية -- </option> 
							    <c:forEach  items="${constituencyDataList}" var="constituencyData">   
							        <option value="${constituencyData.id}"  name="${constituencyData.id}" id= "${constituencyData.id}">${constituencyData.arabicName}</option>    
							    </c:forEach>
							</select><br />
							</span>
						</td>
						</tr>
					<tr>
						<td>	
							<table style="width: 100%">
									 <tr >
									 	<td>
									 	<label class="required">
									 	</label> اسم المستخدم <br /> 
									 	<input type="text"  id="userName"   placeholder="اسم المستخدم"  name="userName" value=""  class="input" disabled="block"/></td>
									 </tr>
	 							 	 <tr >  
									 	<td>
									 	<label class="required">
									 	</label> كلمة المرور <br />
									 	<input type="password" id="password"   placeholder="كلمة المرور" name="password" value="" class="input" disabled="block"/></td>	
									 </tr>	  
									 <tr >
									 	<td>
									 	<label class="required">
									 	</label> أدخل اسمك الكامل باللغة العربية كما يظهر بالضبط في بطاقة هويتك<br /> 
									 	<input type="text" id="fullName" placeholder="أدخل اسمك الكامل باللغة العربية كما يظهر بالضبط في بطاقة هويتك" name="fullName" value=""  class="input"  disabled="block"/></td>
									 </tr>	 
									 <tr>
										<td> 
									 	<label class="required">
									 	</label>أدخل رقمك الوطني كما هو موجود في بطاقتك الأردنية<br />
										<input  maxlength="10" type="text" placeholder="الرجاء ادخال ارقام فقط"  id="ssn" name="ssn"  value=""  class="input" style="margin-left: 1%;" disabled="block" /></td>
									</tr>
									 <tr>
										<td> 
									 	<label class="required">
									 	</label>قم بتأكيد رقمك الوطني <br />
										<input  maxlength="10" type="text" placeholder="الرجاء ادخال ارقام فقط" id="ssnConfirmation" name="ssnConfirmation"  value=""  class="input" style="margin-left: 1%;" disabled="block" /></td>
									</tr>																 
									 <tr>
									 	<td>
									 	<label class="required">
									 	</label>رقم هاتفك <br /><input maxlength="10" type="text" type="number" placeholder="الرجاء ادخال ارقام فقط" id="mobile" name="mobile" value=""  class="input" disabled="block"/></td>
									 </tr>
									 <tr>
									 	<td>  بريدك الالكتروني <br /><input type="text" placeholder="بريدك الالكتروني"   id="email"   name="email"  value="" class="input" disabled="block"/></td>
									 </tr>
									<tr style="height: 80px;">
										<td>
											<input class="styled"  type="submit" value="تسجيل" style="background-color: black; color: white; text-decoration: underline; cursor: pointer;"  onclick="addCandidateFunc(1)" id="addCandidateFunc"/>
										</td>
									</tr>
							  </table>														
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</div>


</body>


<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
<script type="text/javascript">


window.onload = function() {

	$("#addCandidate").show();
	$("#candidateDataListTable").show();
	$('#errorRegistMessage').hide();
	$('#failsRegistMessage').hide(); 
	$('#ssnErrorMessage').hide(); 
	
	var  cityLable = '${CityLable}' ;// CityLable from modelandview object 
	var  selectedGovernorate = '${selectedGovernorate}' ;
		if(cityLable !=null && cityLable !=''){
// 			alert("selectedGovernorate = "+ selectedGovernorate); 
	}
		
	setTimeout(function() {
		document.getElementById('load').style.visibility="hidden";
		document.getElementById('contents').style.visibility="hidden";
	}, 1000); 
		
}


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



function addCandidateFunc(param){
// 	alert("ADDCANDIDATEFUNC"); 
// 	alert("in addCandidateFunc"); 
// 	var firstName = document.getElementById('firstName').value;
// 	var lastName = document.getElementById('lastName').value;
// 	var location = document.getElementById('CandiLocation').value;
	var fullName = document.getElementById('fullName').value;
	var userName= document.getElementById('userName').value;
	var password= document.getElementById('password').value;
	var mobile = document.getElementById('mobile').value;
	var email = document.getElementById('email').value;
// 	var ssn = document.getElementById('ssn').value;
	var ssnStr = document.getElementById('ssn').value;
	var ssnConfirmation = document.getElementById('ssnConfirmation').value;
	var governorateId= document.getElementById('governorateDataListId').value;
	var constituencyId= document.getElementById('constituencyDataListId').value;
	
	
	
	var ssnAndconfirmationAreSame = true;
// 	alert("isNaN(ssn) ="+ isNaN(ssn)) ;

// isNaN(123)         // false
// isNaN('123')       // false
// isNaN('1e10000')   // false (This translates to Infinity, which is a number)
// isNaN('foo')       // true
// isNaN('10px')      // true
// isNaN('')          // false
// isNaN(' ')         // false
// isNaN(false)       // false

	//check if ssn has letters and is empty, if yes then throw validation message 
// 	if( isNaN(ssn) && ssn !='' ){
	if( isNaN(ssnStr) && ssnStr !='' ){

		ssnAndconfirmationAreSame = false;
	 	document.getElementById("ssn").style.border= "5px solid"; 
	 	document.getElementById("ssn").style.borderColor = "yellow";
	 	document.getElementById("ssnConfirmation").style.border= "5px solid"; 
	 	document.getElementById("ssnConfirmation").style.borderColor = "yellow";
		
		$('#ssnErrorMessage').hide();
		$("#ssnErrorMessage").html("الرقم الوطني الاردني يجب ان يكون ارقام فقط"); 
		$('#ssnErrorMessage').show();
		
		setTimeout(function() {
		 	document.getElementById("ssn").style.border= "5px solid"; 
		 	document.getElementById("ssn").style.borderColor = "red";
		 	document.getElementById("ssnConfirmation").style.border= "1px solid"; 
		 	document.getElementById("ssnConfirmation").style.borderColor = "black";
			$('#ssnErrorMessage').hide();
			
		}, 20000);
		
		
		return ;
	}
	
	
	//alert("ssn = "+ssn);
// 	alert("governorateId ="+governorateId);
// 	alert("constituencyId ="+constituencyId);
	
	
// 	var regionId = document.getElementById('regionDataListId').value;
	
// 	alert("governorateData = "+ governorateData);
// 	alert("constituencyData = "+ constituencyData);
// 	alert("regionData= "+ regionData);
// show loading icon until the page is load? STARTS
// 	xmlhttp.onreadystatechange = function () {
// 		  var state = document.readyState
// 	  if (state == 'interactive') {
// 	       document.getElementById('contents').style.visibility="hidden";
// 	  } else if (state == 'complete') {
// 	      setTimeout(function(){
// 	         document.getElementById('interactive');
// 	         document.getElementById('load').style.visibility="hidden";
// 	         document.getElementById('contents').style.visibility="visible";
// 	      },1000);
// 	  }
// 	}
	         document.getElementById('load').style.visibility="visible";
	         document.getElementById('contents').style.visibility="visible";

	if (fullName == null || fullName == '' || governorateId =='Select' || constituencyId =='Select' 
			|| ssnStr == null || ssnStr == '' || ssnConfirmation == null || ssnConfirmation == '' 
			|| mobile == null || mobile == ''
			|| userName == null || userName == ''
			|| password == null || password == '' 
			|| ssnStr!=ssnConfirmation
			) { 

		
		if(governorateId=='Select'){
			//alert("governorateId");
		 	document.getElementById("governorateDataListId").style.border= "5px solid"; 
		 	document.getElementById("governorateDataListId").style.borderColor = "red";
			
			setTimeout(function() {
			 	document.getElementById("governorateDataListId").style.border= "1px solid"; 
			 	document.getElementById("governorateDataListId").style.borderColor = "black";
			}, 15000); 
		}
		
		
		if(constituencyId=='Select'){
			//alert("constituencyId");
		 	document.getElementById("constituencyDataListId").style.border= "5px solid"; 
		 	document.getElementById("constituencyDataListId").style.borderColor = "red";
			
			setTimeout(function() {
			 	document.getElementById("constituencyDataListId").style.border= "1px solid"; 
			 	document.getElementById("constituencyDataListId").style.borderColor = "black";
			}, 15000); 
		}
		
		
// 		var ssnAndconfirmationAreSame = true;
		if( governorateId!='Select' && constituencyId!='Select' && mobile!='' && userName!='' 
			&& password!='' && fullName!=''
			&&	
			(ssnConfirmation != ssnStr)
		   ){
			ssnAndconfirmationAreSame = false;
		 	document.getElementById("ssn").style.border= "5px solid"; 
		 	document.getElementById("ssn").style.borderColor = "yellow";
		 	document.getElementById("ssnConfirmation").style.border= "5px solid"; 
		 	document.getElementById("ssnConfirmation").style.borderColor = "yellow";
		 	
			//$("#ssnErrorMessage").html("يرجى التاكد من الرقم الوطني في احد  الحقلين او كلاهما غير صحيح باللون الاصفر");
			$('#ssnErrorMessage').hide();
			$("#ssnErrorMessage").html("الرقم الوطني المدخل غير صحيح,  يجب ان يكون الرقم الوطني الاردني متطابق مع الرقم الموجود على الهويه الاردنيه في احد الحقلين او كلاهما باللون الاصفر."); 
			$('#ssnErrorMessage').show();
		 	
			setTimeout(function() {
			 	document.getElementById("ssn").style.border= "5px solid"; 
			 	document.getElementById("ssn").style.borderColor = "red";
			 	document.getElementById("ssnConfirmation").style.border= "1px solid"; 
			 	document.getElementById("ssnConfirmation").style.borderColor = "black";
				$('#ssnErrorMessage').hide();
				
			}, 15000);	
		}
		
		
		if(ssnAndconfirmationAreSame){
			if(ssnStr==''){ 

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
		}
		
		
		if(mobile==''){ 
			//alert("mobile");
		 	document.getElementById("mobile").style.border= "5px solid"; 
		 	document.getElementById("mobile").style.borderColor = "red";
			
			setTimeout(function() {
			 	document.getElementById("mobile").style.border= "1px solid"; 
			 	document.getElementById("mobile").style.borderColor = "black";
			}, 15000); 
		}
		
		if(userName==''){ 
			//alert("userName");
		 	document.getElementById("userName").style.border= "5px solid"; 
		 	document.getElementById("userName").style.borderColor = "red";
			
			setTimeout(function() {
			 	document.getElementById("userName").style.border= "1px solid"; 
			 	document.getElementById("userName").style.borderColor = "black";
			}, 15000); 
		}
 
		if(password==''){ 
			//alert("password");
		 	document.getElementById("password").style.border= "5px solid"; 
		 	document.getElementById("password").style.borderColor = "red";
			
			setTimeout(function() {
			 	document.getElementById("password").style.border= "1px solid"; 
			 	document.getElementById("password").style.borderColor = "black";
			}, 15000); 
		}
		
		if(fullName==''){ 
			//alert("fullName");
		 	document.getElementById("fullName").style.border= "5px solid"; 
		 	document.getElementById("fullName").style.borderColor = "red";
			
			setTimeout(function() {
			 	document.getElementById("fullName").style.border= "1px solid"; 
			 	document.getElementById("fullName").style.borderColor = "black";
			}, 15000); 
		}
 

		
		
		
		if(ssnAndconfirmationAreSame)
			{
				$('#failsRegistMessage').hide();
// 				$("#failsRegistMessage").html("تم تعيين الحقول باللون الاحمر  يرجى ملء جميع الحقول  المطلوبة بالترتيب من اعلى الى اسفل  بقيم صحيحه ويرجى ان لا تكون فارغه");
				$("#failsRegistMessage").html("*  تم تعيين الحقول باللون الاحمر  يرجى ملء جميع الحقول  المطلوبة بالترتيب من اعلى الى اسفل  بقيم صحيحه ويرجى ان لا تكون فارغه .");
				$('#failsRegistMessage').show();
				setTimeout(function() {
					$('#failsRegistMessage').hide();
				}, 10000);			
			}
			
			
			setTimeout(function() {
				document.getElementById('load').style.visibility="hidden";
				document.getElementById('contents').style.visibility="hidden";
			}, 1000); 

			
			
			
			
			
			
		} else {
// 			alert("before Ajax");  
// 			alert("before Ajax");  

			$.ajax({
				type : "GET",
				//url: "addCandidateFromContactusScreen",
				url : "addvoter",
				data : {
					"fullName" : fullName,
					"userName" : userName,
					"password" : password,
					"email" : email,
					"mobile" : mobile,
// 					"ssn" : ssn,
					"ssnStr" : ssnStr,
					"governorateId" : governorateId,
					"constituencyId" : constituencyId
// 					"regionId" : regionId 
				},
				contentType : "application/json",

				success : function(messageList) {
			         document.getElementById('load').style.visibility="hidden";
			         document.getElementById('contents').style.visibility="hidden";

// 					alert("Registration Check Started");
					if (messageList[0] == "Failed_Registration") {
 
						$('#errorLoginMessage').hide();
						$('#errorRegistMessage').show();
						$('#errorRegistMessage').html(messageList[1]);
// 						$('#errorRegistMessageParagId').html(messageList[1]);
// 						$('#errorRegistMessageParagId').style.color = "blue";
						
						
						setTimeout(function() {
							$('#errorRegistMessage').hide();
						}, 20000);
						
						$('#loginDiv').hide();
						$('#registDiv').show();
						
						if(
// 						messageList[1]!="الاسم الذي قمت بادخاله غير موجود في المدينه والدائره الانتخابيه التي قمت باختيارها، اذا كنت تعتقد ان هذا خطا الرجاء التاكد من المدينه والدائره الانتخابيه الصحيحتين والقيام بالتسجيل فيهما"
							messageList[1]!="الرجاء التاكد من ان الاسم والرقم الوطني المدخلين يتطابقان مع هويتك الشخصيه او تاكد من منطقتك الانتخابيه الصحيحه"
						|| messageList[1]!="تم التسجيل بهذا الاسم مسبقا بالفعل او اسم مشابه، اذا كنت تعتقد انك لم تسجل رجاء المحاوله خلال 48 ساعه مره اخرى"		
						){
							alert("*if(messageLis[1]*="+messageLis[1]);
							window.location.href = "voterRegisterWithCredential";	
						}
						
						
						
					} else {
// 						alert("else");
						$('#errorRegistMessage').html("Successfully added voter");
						$('#candidateDataListTable').hide();
						window.location.href = "voterregisterwithcredential";
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
 				 /*
 				 alert("Before window.location."); 
 				 window.location.href="findAllConstituencyByGovId2?governorateId="+governorateId;
 				 */
				 window.location.href="findAllConstituencyByGovId2?governorateId="+governorateId+ "&screen=voterRegistration";
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
	
// 	alert(constituencyId) ;   
    document.getElementById('userName').removeAttribute("disabled");
    document.getElementById('password').removeAttribute("disabled");
    document.getElementById('fullName').removeAttribute("disabled");
    document.getElementById('ssn').removeAttribute("disabled");
    document.getElementById('mobile').removeAttribute("disabled");
    document.getElementById('ssnConfirmation').removeAttribute("disabled"); 
    document.getElementById('email').removeAttribute("disabled");

	
	
}


	
	
</script>

</html>