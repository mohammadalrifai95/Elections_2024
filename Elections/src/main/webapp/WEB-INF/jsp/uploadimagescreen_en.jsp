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
					Candidate Photo upload screen.
				</h2>
			</td>
	</table>
</div>


<div style="height: 100px;">

	<div style=" margin-left:180px; padding:1px 16px; width:1000px;"  id="addCandidate">
		<div style="width:950px; margin-top:102px; background-color:gray;  border-radius: 25px;   background-position: left top;   padding: 5px;">
<%-- 		<span id="errorRegistMessage" style="color:red;">${errorRegistMessage}</span> --%>
<!-- 		<span id="failsRegistMessage" style="color:red;"></span> -->
			<h3 style="margin-left: 220px;">
					You have Successfully registered with below information. 
				<br>Please select a personal photo to be uploaded to your profile. 
			</h3>
			<table style="margin-right: 100px;">
				<tr>
					<td style="width: 120px;"></td>
					<td > 
						<table style="width: 100%; margin-bottom: 240px; font-size: 16px;"  cellpadding="5" id="candidateDataListTable" >
						<tr>
							<td>
								<form method="POST" action="uploadImage" enctype="multipart/form-data">
									<input id="src" type="file" name="imageStr" onchange="showImage(this)" onclick="showUploadMsg()" accept="image/jpeg, image/png, image/jpg"/><br /> <br />
									<img id="target"  name="target" src="${imageStr}" style="width: 250px; height: 250px;"/> <!-- image you want to display it (target) -->
									<br><br>
									<span id="uploadMsgId" ></span>
									<br><br>
									<input id="uploadId" type="submit" value="Upload" disabled="disabled"/>
								</form>
							</td>
						</tr>
						</table>
					</td>
					
					<td>	
						<table style="margin-top: -270px; margin-left: 50px; width: 300px;  border-spacing: 10px;"  >
							<tr>
							 	<td>
							 				Username:
							 	</td>
							 	<td>
							 				${candidateData.userName}
							 	</td>
							 </tr>
							<tr>
							 	<td>
							 				Password:
							 	</td>
							 	<td>
							 				*********
							 	</td>
							 </tr>
							<tr>
							 	<td>
							 				Full name:
							 	</td>
							 	<td>
							 				${candidateData.fullName}
							 	</td>
							 </tr>
							<tr>
							 	<td>
							 		SSN:		
							 	</td>
							 	<td>
							 				**********
							 	</td>
							 </tr>
							<tr>
							 	<td>
							 				Phone: 
							 	</td>
							 	<td>
							 				<c:out value="${candidateData.mobile}" />
							 	</td>
							 </tr>
							<tr>
							 	<td>
							 				Email # :
							 	</td>
							 	<td>
							 				${candidateData.email}
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
		alert("You have Successfully registered with below information. You can now log in with username and password you have entered.");
}


	
	function showImage(src,target) {
	  var fr=new FileReader();
	  
	  // when image is loaded, set the src of the image where you want to display it
	  fr.onload = function(e) { target.src = this.result; };

	  src.addEventListener("change",function() {
	    // fill fr with image data    
	    
	    fr.readAsDataURL(src.files[0]);
	    
	  });
	  
	}
function showUploadMsg() {

	
	
	setTimeout(function() {
		$("#uploadMsgId").html("Click below upload button to upload photo if already selected one.");
		document.getElementById("uploadMsgId").style.color = "red";
		document.getElementById("uploadMsgId").style.backgroundColor = "yellow";
		document.getElementById("uploadId").disabled = false;		
		}, 5000);
		
}

	var src = document.getElementById("src");
	var target = document.getElementById("target");
	showImage(src,target);
</script>

</html>