<%-- <%@ page language="java" contentType="text/html; charset=windows-1256" pageEncoding="windows-1256"%> --%>
<!-- charset=UTF-8" pageEncoding="UTF-8" will considere arabic username-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<!-- pageEncoding="windows-1256" -->
<!-- pageEncoding="UTF-8"   --> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "spring" uri = "http://www.springframework.org/tags" %>

    
<!DOCTYPE html>
<html>
<head> 
<meta charset="windows-1256">
<title>Welcome to Election System Application</title>
</head>
<style>


.spacer{
  display:block;
  height:40px;
  width:100%;
  margin: 0 auto;
  content:""; 
}

.button{
	color: black;
	border-radius: 10px; 
	font-size: 1.2rem; 
	height: auto;
	text-shadow: 1px 1px 1px #000;
	background-color: #679FAB;
/* 	width:600px;  */
	margin-left: 80px; 
     background-image: linear-gradient(to top left, rgba(0, 0, 0, 0.2), rgba(0, 0, 0, 0.2) 30%, rgba(0, 0, 0, 0)); 
     box-shadow: inset 2px 2px 3px rgba(255, 255, 255, 0.6), inset -2px -2px 3px rgba(0, 0, 0, 0.6); 
}

	
   #circle {
      width: 75px;
      height: 30px;
      webkit-border-radius: 25px;
      moz-border-radius: 25px;
      border-radius: 25px;
	  background: #b9f2ff; 
      background: black;
	  text-decoration: underline overline;
	  border-bottom: 1px solid #000;
	  color: white;
    }	
	
   .circle {
      width: 75px;
      height: 30px;
      webkit-border-radius: 25px;
      moz-border-radius: 25px;
      border-radius: 25px;
	  background: #b9f2ff;
      background: black;
	  text-decoration: underline overline;         
	  border-bottom: 1px solid #000;
	  color: white;
	  margin-left: 20px;
    }	
   
.active {
  background-color: #04AA6D;
}


.parent {
  border: 1px solid black;
  margin: 1rem;
  /* padding: 2rem -1rem;  */
  text-align: center;
  width: 1080px;                    
}

.child {
  display: inline-block;
  border: 1px solid red;
  padding: 4rem 1rem;
  vertical-align: middle;
  width: 500px;
  font-size: 20px;
}


.verticalSpace
{
    content: " " !important;
    display: block !important;
    margin:60px;
}




label {
  display: flex;
  flex-direction: row;
  justify-content: flex-end;
  text-align: right;
  width: 450px;
  line-height: 26px;
  margin-bottom: 20px;
  margin-right: 100px;
}

input {
  height: 20px;
  flex: 0 0 200px;
  margin-left: 10px;
}


.popupBox{
position:absolute;
/* background-color: #F5F5F5;  */
background-color: #679FAB;
/* top:70%; */
left:50%;
width:350px;  /* adjust as per your needs */
height:280px;   /* adjust as per your needs */
margin-left:-280px;   /* negative half of width above */
margin-top:-250px;   /* negative half of height above */
flex: 0 0 200px;
border-radius: 20px; 
background-image: linear-gradient(to top left, rgba(0, 0, 0, 0.2), rgba(0, 0, 0, 0.2) 30%, rgba(0, 0, 0, 0));
box-shadow: inset 2px 2px 3px rgba(255, 255, 255, 0.6), inset -2px -2px 3px rgba(0, 0, 0, 0.6);
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


.fixedElement {
    background-color: #c0c0c0;
    position:fixed;
    top:0;
/*     width:100%; */
/*     width:1200px; */
    z-index:100;
}

#load{
       width:100%;   
       height:100%;  
      position:fixed;
/*       top:-1000; */
      z-index:9999;  
/*       margin-top:-600px;  */
    background:url("/resources/images/loading.gif") no-repeat center center rgba(0,0,0,0.25)
    
    
/* ; */
/* position:absolute; */
/* background-color: #679FAB; */
/* left:25%; */
/*  width:1000px;    */
/*  height:1000px;   */
/* margin-left:-280px;   */
/* margin-top:-750px;    */
/* flex: 0 0 200px; */
/*  border-radius: 20px; */
/* background-image: linear-gradient(to top left, rgba(0, 0, 0, 0.2), rgba(0, 0, 0, 0.2) 30%, rgba(0, 0, 0, 0)); */
/* box-shadow: inset 2px 2px 3px rgba(255, 255, 255, 0.6), inset -2px -2px 3px rgba(0, 0, 0, 0.6); */
}
</style>
<body>

<div style="width: 1100px; height: 1250px; position: relative; margin-left: auto; margin-right: auto;">
   
   
	<!--class="fixedElement"  -->
	<div    style="border: 3px solid #73AD21; background-color: #679FAB; width: 1100px;height:100px;" dir="rtl">
	    <div id="load"></div>
	    <div id="contents">
	    </div>
	       
		<table style="width:1100px; " dir="rtl">             
			<tr >
				<td dir="rtl">            
					<p style=" margin-top: 1px;">  
						<a href="/">   
					  		<img src="<c:url value="/resources/images/jordanflagonhand.jpg" />" alt="image" class="circular_image_header"   style="width: 100px; height: 100px; "/>
						</a>
					</p>
				</td>
				<td style="width:10%;"></td>     
				<td style="font-size: 25px;">          
						مرحبًا بك في تطبيق نظام الانتخابات - هذه هي صفحة تسجيل الدخول
				</td>
				<td style="width: 200px;"></td>
			</tr>
		</table>
	</div>



	<div class='parent' id="englishDiv" style="margin-top: 10px;">  
	
		<!-- margin-right:250px; -->
		<div class='child' style=" border : none !important;">
			<div >    
				<a href="#" >هل نسيت معرف المستخدم؟ </a>
				<br class="verticalSpace">
				<a href="#" style="margin-right:50px;" >هل نسيت كلمة السر؟</a>
				
				<br class="verticalSpace">
				<a href="#">الإبلاغ عن الاحتيال في التسجيل</a>
				<br class="verticalSpace">
				<a href="#">الوصول السريع</a>
				<br class="verticalSpace">
				<a href="#">تحتاج مساعدة؟</a>	
				<br class="verticalSpace">
			</div>
		</div><!----------------------------- end of div child-->
	
	
	
		<div class='child' style="margin-right: 10px;">  
		<span id="errorLoginMessage" style="color:red;">${errorLoginMessage}</span>
		<span id="succImgUploadMsgId" style="color:red;">${SuccImgUploadMsg}</span>
		<span id="loginMessage" style="color:red;"></span>
		
		<!-- -----------------------------------------Login Part------------------------------------------------------------------------------------------------------------------- -->
			<div id="loginDiv" style="margin-top: 50px;"  dir="rtl">
				<form action="signin" method = "GET">
					<span style="margin-left: 10px;">  اسم المستخدم : </span>
						<br>
					 	<input  type="text" name="userName"  id="userName" value=""  style="width: 400px; height: 30px;" dir="rtl"/>
					 	<br> 
	
					 <span style="margin-left: 12px;">  كلمة المرور :</span>
					 	<br>
					  	<input  type="password" name="password"  id="password" value=""  style="margin-left: 1%; width: 400px; height: 30px;" dir="rtl"  />
					  	<br>
					  	<span style="margin-left: 12px;"> الرقم الوطني :</span>
					 	<br>
					  	<input  onchange="handleChange(this);" type="number" name="ssn"  id="ssn" value=""  style="margin-left: 1%; width: 400px; height: 30px;" dir="rtl"  />
					  	<br><br>
	
					 	<input type="submit" value="تسجيل الدخول" id="Login" name="Login"  onclick="SigninButtonFun()"  style="width: 400px; height: 38px; font-size: 25px;" dir="rtl">
					 	<br>
	
					<%--<spring:message code = "${Total}"  htmlEscape="false" /> --%>
					<%--<spring:message code = "${loginpage.signin.text}" />  --%>
				</form>
			</div>
		
			<span id="errorRegistMessage" style="color:blue;">${errorRegistMessage}</span>
		<!-- -----------------------------------------Registration Part------------------------------------------------------------------------------------------------------------------- -->
	<!-- 		<div id="registDiv" style="display:none"> -->
			
	<!-- 				<h2>Please fill below fields to register.</h2> -->
			
	<!-- 				<label class="label">First Name:<input type="text" id="firstName" name="firstName" value=""  class="input"/></label>  -->
					
	<!-- 				<label class="label">Last Name:<input type="text" id="lastName"  name="lastName" value=""  class="input"/></label>  -->
					
	<!-- 				<label class="label">Phone # :<input type="text" id="mobile" name="mobile" value=""  class="input"/></label>  -->
					
	<!-- 				<label class="label">Email:<input type="text" id="email"   name="email"  value=""   style="margin-left: 2.5%;" class="input"/></label>  -->
					
	<!-- 				<label class="label">User Name:<input type="text" id="userNameRegs"  name="userName" value=""  class="input"/></label>  -->
					  
	<!-- 				<label class="label">Password:<input type="password" id="passwordRegs" name="password"  value=""  style="margin-left: 1%;" class="input"/></label>  -->
					
	<!-- 				<label class="label"><input class="button"  type="submit" value="register"   onclick="userRegistration(1)"/></label>   -->
	<!-- 			</div> -->
				
				<br class="verticalSpace">
	<!-- 			<div id="barLogin"> -->
	<!-- 				  <span style="pointer-events: none; opacity: 0.7; font-size: 18px;">Already a member?</span> -->
	<!-- 				  <br /> -->
	<!-- 				 <input   type="submit" value = "Login"  name = "Login" style="background: none!important; border: none; padding: 0!important;font-family: arial, sans-serif;color: #069; text-decoration: underline; cursor: pointer; font-size: 18px;" onclick="redirectLoginPage(1)"> -->
	<!-- 			</div>	 -->
		
				<div id="barRegist" style="margin-left: 100px;">
					 <!--<input   type="submit" value = "Register" name = "Register" style="background: none!important; border: none; padding: 0!important;font-family: arial, sans-serif;color: #069; text-decoration: underline; cursor: pointer; font-size: 18px; margin-right: 500px; margin-top: 50px; " onclick="ShowRegistDiv(1)"> -->
<!-- 					 <input   type="submit" value = "تسجيل حساب جديد" id = "newAccountRegisterationId" name = "newAccountRegisterationId" style="background: none!important; border: none; padding: 0!important;font-family: arial, sans-serif;color: #069; text-decoration: underline; cursor: pointer; font-size: 22px; height:42px;  " onclick="newAccountRegisterationFun(1)"> -->
					 
					  :  تسجيل مستخدم جديد اذا لم تكن قد سجلت مسبقا  
					 <h4 id="errorId" style= "color:red"> </h4>
					 <br>
					<span style="">تسجيل مرشح جديد</span><input type="radio" id="candidateId" name="radioWeather"  value="candidate" ><br>   
					<span style="">تسجيل ناخب جديد</span><input type="radio" id="voterId" name="radioWeather" value="voter"><br>
					<button type="button" onclick="checkButton()"  style="background:black; color:white; width:150px; height:30px;	border-radius: 10px; cursor: pointer; font-size: 15px;margin-top: 10px;"> التالي </button>
					
					 <div id="newAccountRegisterationDiv" class="popupBox" style="display: none; margin-left: -60px;"> 
					 	<div style="margin-left: 40px; font-size: 22px;"> 
							<img style="width: 20px; height: 20px; cursor: pointer; margin-left: 270px;" src="<c:url value="/resources/images/crossMarkSymbols.jpg" />"  onclick="newAccountRegisterationFun_2()" />
<!-- 							<br><b style="color: white; font-weight: bold; font-size: 25px;">   :تسجيل مستخدم جديد  </b><br> -->
							<h4 id="dispId" style= "color:green"> </h4>   
<!-- 							<h4 id="errorId" style= "color:red"> </h4>     -->
<!-- 							<span style="">تسجيل مرشح جديد</span><input type="radio" id="candidateId" name="radioWeather"  value="candidate" ><br>    -->
<!-- 							<span style="">تسجيل ناخب جديد</span><input type="radio" id="voterId" name="radioWeather" value="voter"><br>    -->
							<!-- <span style="margin-left: 35px;">التسجيل الفني</span><input type="radio" id="technicalId" name="radioWeather" value="technical"><br>   -->
							<!-- <span style="margin-left: 20px;">تسجيل المشرف</span><input type="radio" id="adminId" name="radioWeather" value="admin"><br><br> -->
							<button type="button" onclick="checkButton()"  style="background:black; color:white; width:150px; height:30px;	border-radius: 10px; cursor: pointer; font-size: 15px;margin-top: 10px;"> التالي </button>
						</div>
					 </div>
				</div>	 
				<br class="verticalSpace">
		</div><!----------------------------- end of div child-->
	
	</div><!----------------------------- end of div parent English Version-->

<!--     <div id="load"></div> -->
<!--     <div id="contents"> -->
<!--     </div> -->
</div>   
</body>




<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
<script type="text/javascript">
    
    
    window.onload = function() {
    	$("#barLogin").hide();
    	$('#registDiv').hide();
    	$('#newAccountRegisterationDiv').hide();
    	
// There is mistake value adeeb being already populated, remove that when navigate to login page STRATs 
    	var userName = document.getElementById('userName');
    	var password = document.getElementById('password');
    	
    	userName.value = "";
    	password.value = "";
// There is mistake value adeeb being already populated, remove that when navigate to login page ENDS     	    
    	
    	setTimeout(function() {
    		$('#errorLoginMessage').hide(); 
			}, 5000);    



    	setTimeout(function() {
    		$('#succImgUploadMsgId').hide(); 
			}, 5000);    
    	
//     	$('#errorLoginMessage').hide();
		
// 	    $('#arabicDiv').show();
//     	$('#englishDiv').hide();

//     	$('#arabicDiv').hide();
//     	$('#englishDiv').show(); 
		document.getElementById('load').style.visibility="hidden";
		document.getElementById('contents').style.visibility="hidden";
		
    }

    function SigninButtonFun(){
    	
		document.getElementById('load').style.visibility="visible";
		document.getElementById('contents').style.visibility="visible";
    	
		setTimeout(function() {
			document.getElementById('load').style.visibility="hidden";
			document.getElementById('contents').style.visibility="hidden";
		}, 1000);
		
// 		var ssnStr = document.getElementById('ssn').value;		
// 		if( isNaN(ssnStr) && ssnStr !='' ){
// 			$('#ssnErrorMessage').hide();
// 			$("#ssnErrorMessage").html("الرقم الوطني الاردني يجب ان يكون ارقام فقط"); 
// 			$('#ssnErrorMessage').show();
// 		}
    }

    function newAccountRegisterationFun(areId){
    	$('#newAccountRegisterationDiv').show();
// 		setTimeout(function() {
// 			newAccountRegisterationFun_2();
// 			}, 20000);  
    	}
    
    function newAccountRegisterationFun_2(){
	    	$('#newAccountRegisterationDiv').hide();
    	}
    
    function checkButton() {
 
        if(document.getElementById('candidateId').checked) {   
            //document.getElementById("dispId").innerHTML = document.getElementById("candidateId").value+" radio button is checked";
            //window.location.href = "welcome"
            window.location.href = "candidacyconditions";
        }   
        else if(document.getElementById('voterId').checked) {   
            //document.getElementById("dispId").innerHTML= document.getElementById("voterId").value+" radio button is checked";
        	window.location.href = "voterRegistration"
        }   
		//  else if(document.getElementById('technicalId').checked) {   
		//      //document.getElementById("dispId").innerHTML= document.getElementById("technicalId").value+" radio button is checked";     
		//  }   
		//  else if(document.getElementById('adminId').checked) {   
		//      //document.getElementById("dispId").innerHTML= document.getElementById("adminId").value+" radio button is checked";     
		//  }  
        else {
        	$('#errorId').show(); 
    		//document.getElementById("errorId").innerHTML= "You have not selected any season";
    		document.getElementById("errorId").innerHTML= "الرجاء تحديد خيار";
    		setTimeout(function() {
    			$('#errorId').hide();	 
			}, 3000); 
               
        }   
    }
    
    
    
    function ShowRegistDiv(areId){
    	//alert("Registed clisked");
    	$('#registDiv').show();
    	$('#loginDiv').hide();
    	$('#barLogin').show();
    	$('#barRegist').hide();
    	$('#errorLoginMessage').hide();
    	
    	
    	document.getElementById('firstName').value = '';
    	document.getElementById('lastName').value = '';
    	document.getElementById('email').value = '';
    	document.getElementById('userNameRegs').value = '';
    	document.getElementById('passwordRegs').value = '';
     	//document.getElementById('mobile').value;
    	
    	
    };
    
//     function redirectLoginPage(areId){
//     	//alert("Login clicked");
//     	$('#errorRegistMessage').hide();
//     	$('#registDiv').hide();
//     	$('#barRegist').show();
//     	$('#barLogin').hide();
//     	$('#loginDiv').show();
//     	$('#newAccountRegisterationDiv').hide();
//    	
//     }
    
    
    
    function userRegistration(areId){
    	//alert("Register submit clicked");
    	
    	var firstName = document.getElementById('firstName').value;
    	var lastName = document.getElementById('lastName').value;
    	var email = document.getElementById('email').value;
    	var userName = document.getElementById('userNameRegs').value;
    	var password = document.getElementById('passwordRegs').value;
    	var mobile = document.getElementById('mobile').value;
//     	alert("firstName = " +  firstName);
    	
        $.ajax({
            type: "GET",
            url: "userRegistration",
            data: {"firstName":firstName, "lastName":lastName, "email":email, "password":password, "userName":userName, "mobile":mobile },
            contentType: "application/json",
            success: function(messageList){
            	alert(messageList[0]);
            	if(messageList[0]=="Failed_Registration"){
    				$('#errorLoginMessage').hide();
    				$('#errorRegistMessage').html(messageList[1]);
                	$('#loginDiv').hide();
                	$('#registDiv').show();            		
            	}else{
//             		alert("else");
                	$('#loginDiv').show();
                	$('#registDiv').hide();
//                 	$('#errorRegistMessage').hide();
                	$('#userName').val(messageList[0]);
                    $('#password').val(messageList[1]);
//                     $('#loginMessage').show();
//                     $('#loginMessage2').show();
//                     $('#loginMessage').html(messageList[2]);
                    $('#loginMessage2').html(messageList[2]);
//                     $('#loginMessage').show();
//                     $('#loginMessage2').show();
//                     $('#errorRegistMessage').html(messageList[2]);
                	
            	}

            	
					//window.location.href="welcome"
					//window.location.href = '/JspControllerHandler?employee='+ JSON.stringify(emp); // redirect     //this would be GET
					// window.location(url);
				},
				error : function(XMLHttpRequest, textStatus,
						errorThrown) {
					alert("Status: " + textStatus);
					alert("Error: " + errorThrown);
				}

			});

		}

				$(document).ready(function() {
					$('#NextButton').click(function() {
							$.ajax({
									type : "GET",
									url : "welcome",
									data : {"candidateId" : 1},
									contentType : "application/json",
									success : function(msg) {
										//                     	alert("success");
										$('#output').append(msg);
										window.location.href = "welcome"
										//window.location.href = '/JspControllerHandler?employee='+ JSON.stringify(emp); // redirect     //this would be GET
										//window.location(url); 

									},
									error : function(
											XMLHttpRequest,
											textStatus,
											errorThrown) {
										alert("Status: "
												+ textStatus);
										alert("Error: "
												+ errorThrown);
									}

								});
							});

							});
				
				
				
				
				
				
				
				function dropDownSelect(selectedLanguage){
					alert("arabic english");

						window.location.href = '/languageChanged?selectedLanguage='+selectedLanguage;
// 					$.ajax({
// 					    typ: 'GET',
// 					    url:'locale_with_header',
// 					    dataType: 'application/json',
// 					    headers: {
// 					        Accept: 'application/json' ,
// 					        accept-charset='foobar=utf-8'
// // 					        accept-language: 'charset=utf-8'
// 					    }
// 					});


// 					$.ajax({     
// 						type: "GET",
// 						  headers: {          
// 						    Accept: "application/json; charset=utf-8",         
// 						    Content-Type: "application/json; charset=utf-8"
// 						  },
// 						  url:"locale_with_header",
// 						  success : function(response) {  
// 							 alert("Success");
// 						  },
// 						  error: function(response) {  
// 						    alert("Error");
// 						  }
// 						});


					};					
				
					
					function handleChange(input) {
					    if (input.value < 0) input.value = 0;
					    if (input.value > 9223372036854775807 ) input.value = 2036854775807;
					  }
					
					
				</script>
</html>