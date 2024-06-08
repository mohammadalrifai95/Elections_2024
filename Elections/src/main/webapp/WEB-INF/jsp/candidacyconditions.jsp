<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
 
 <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
 
    
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.parent {
/*   border: 1px solid black; */
  margin: 1rem;
  padding: 2rem 2rem;
  text-align: center;
  font-size: 22px;
}
.child {
  display: inline-block;
  border: 1px solid red;
  padding: 1rem 1rem;
  vertical-align: middle;
  font-size: 22px;
}


sameLine {
    /* Other styling... */
    text-align: right;
    clear: both;
/*     float:left; */
    margin-right:15px;
}

.active {
  background-color: #04AA6D;
}


.inputButton {
		position:relative;
		font-size: 1.2em;
		padding: 3px;
		display: inline-block;
		border-radius: 9999em;
		background-color: #4CAF50;
		border: none;
		color: white;
		text-align: center;
		cursor: pointer;
		width: 110px; 
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
/*     background-color: #c0c0c0; */ 
    position:fixed;
    top:0;
    width:100%;
    z-index:100;
}


.popupBox{
position:absolute;
 background-color: #F5F5F5;  
/* background-color: #679FAB; */
/* top:70%; */
/* left:50%; */
width:350px;  /* adjust as per your needs */
height:100px;   /* adjust as per your needs */
margin-left:100px;   /* negative half of width above */ 
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
}
</style>



<meta charset="windows-1256">
<title>Insert title here</title>
</head>
<body>

<!-- <div style="width: 1100px; height: 1250px; position: relative; margin-left: auto; margin-right: auto;" dir="rtl"> -->
<div class="center" dir="rtl">   

<div    style="border: 3px solid #73AD21; background-color: #679FAB;  height: 100px; color: white;" dir="rtl">  
	<table>
		<tr>
			<td>  
				<a href="/">
			  		<img src="<c:url value="/resources/images/jordanflagonhand.jpg" />" alt="image"   style="width: 100px; height: 90px; border-radius: 25%; "/> 
				</a>
			</td>
			<td style="width: 37%"></td>  
			<td style="width:50%; text-align: center; font-size: 25px; font-weight: bold;">             
					 „—Õ»« »ﬂ„ ›Ì  ÿ»Ìﬁ «·«‰ Œ«»«  «·√—œ‰Ì…
			</td>
		</tr>
	</table>
</div>




<!-- <h3><span  id="notEligableDueToAge" style="text-align: center; width: 100% ; margin-left: 250px; margin-top: 20px;" ></span></h3>    -->
	<div  id="notEligableDueToAge"  class="popupBox" style="padding-top: 35px; color: red; font-size: 20px;">
		<header>—”«·… Œÿ√  :</header>
		
	</div>   
<div class='parent'  style="margin-top: -7.5%;" >     
  <h5>  Ì—ÃÏ «·≈Ã«»… ⁄·Ï «·√”∆·… √œ‰«Â ·· √ﬂœ „„« ≈–« ﬂ‰  „ƒÂ·« ·· —‘Õ ·⁄÷ÊÌ… «·»—·„«‰ «·√—œ‰Ì </h5>  
<!--   <div class='child'> -->
  	<div style="display: inline-block; border: 1px solid red; padding: 1rem 1rem; vertical-align: middle; font-size: 22px;"  dir="rtl">
	  	<table >
	  		<tr id="areYou30YearsOrOlderTrId"  style="height: 25px;" >    
				<td >
					<p class="sameLine" > 
						Â· ”ÌﬂÊ‰ ⁄„—ﬂ 25 ⁄«„« √Ê √ﬂÀ— ›Ì ÌÊ„ «·«ﬁ —«⁄ø
						<br> 
						 ‰⁄„ <input type="radio" name="ageRadio" value="yes"  onclick="thirtyYearsOrOlderFun(this.value)" />
						 <br>
						 ·« <input type="radio" name="ageRadio" value="no" onclick="thirtyYearsOrOlderFun(this.value)" />  
					</p>
				</td>
			</tr>
			<tr id="birthdayDateTrId" >
				<td>
					<p class="sameLine"  >
					«·—Ã«¡  ÕœÌœ  «—ÌŒ «·„Ì·«œ
					<br>
						<input type="text" id="datepickerId2"  onchange="checkEnteredYear(this.value)" placeholder="ÌÊ„ ÌÊ„/‘Â— ‘Â—/”‰Â ”‰Â">
					</p> 
				</td>
			</tr>	
<!-- 	  	</table> -->

  	
<!-- 	<table id="CandidacyRequirementsBylawTableId" dir="rtl"> -->
		<tr id="CandidacyRequirementsBylawTrId"> 
			<td>  
				<p class="sameLine" > 
					Â· √‰  „Ê«ÿ‰ √—œ‰Ìø
					<br>
					<input type="radio" name="JordanianCitizenRadio" value="yes"  onclick="JordanianCitizenQ(this.value)"> ‰⁄„ </input>
					<br> 
					<input type="radio" name="JordanianCitizenRadio" value="no" onclick="JordanianCitizenQ(this.value)"/> ·« </input>
				</p>
			</td>
		</tr>
		<tr id="bankruptcyRadioId"> 
			<td>
				<p class="sameLine" > 
					Â· ”»ﬁ ·ﬂ √‰ √œ‰  »«·≈›·«”ø
					<br>
					<input type="radio" name="bankruptcyRadio" value="yes"  onclick="bankruptcyConvictedFun(this.value)"> ‰⁄„ </input>
					<br> 
					<input type="radio" name="bankruptcyRadio" value="no" onclick="bankruptcyConvictedFun(this.value)"/> ·« </input>
				</p>
			</td>
		</tr>
		<tr id="HaveYouRegainedYourLegalStatusTrId">
			<td>
				<p class="sameLine"  > 
					Â· «” ⁄«œ  Ê÷⁄ﬂ «·ﬁ«‰Ê‰Ìø
					<br>
					<input type="radio" name="regainedYourLegalStatusRadio" value="yes"  onclick="regainedYourLegalStatusFun(this.value)"> ‰⁄„ </input>
					 <br>
					<input type="radio" name="regainedYourLegalStatusRadio" value="no" onclick="regainedYourLegalStatusFun(this.value)"/> ·« </input>
				</p> 
			</td>
		</tr>
		<tr id="DateBecameJoCitizenTr">
			<td>
				<p class="sameLine"  >
					 :«Œ — «· «—ÌŒ «·–Ì √’»Õ  ›ÌÂ „Ê«ÿ‰« √—œ‰Ì« «· «—ÌŒ 
					<br>
					<input type="text" id="datepickerId" >
				</p>
			</td>
		</tr>
		<tr id="NextButton">
			<td>
				<a href="/welcome" onclick="nextButtonAtagFun()"> 
					<input type="submit" value="«·’›ÕÂ «· «·ÌÂ">
				</a>
			</td>
		</tr>
	</table>
	
	</div>
<!--   </div>end of child div ---------------------------------------- -->
  
  
  
<!--   <div class='child' style="position: absolute; top: 160px; right: 60px; border: none;">  -->
<!--   		<ul style="width: 200px;"> -->
<!--   				<li> -->
<!--   					<a href="/candidateinformation?viewName=candidacyconditions" id="selectCityLi"> -->
<!--   						Read Candidate Information -->
<!-- 					</a> -->
<!-- 				</li> -->
<!-- 		</ul> -->
		<br /><br />
<!--   		 <span id="JordanianCitizenSpan1">Are you a Jordanian Citizen? </span>  -->
<!--   		 <span id="JordanianCitizenSpan2"></span>  -->
<!--   </div>end of child div ---------------------------------------- -->
</div><!-- end of parent div ---------------------------------------- -->

</div>

</body>

  <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
 
<!-- <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script> -->
<script type="text/javascript">

window.onload = function() {
	
	$('#notEligableDueToAge').hide();  
	$('#birthdayDateTrId').hide();
 	$('#CandidacyRequirementsBylawTableId').hide();
 	$('#CandidacyRequirementsBylawTrId').hide();
 	$('#bankruptcyRadioId').hide();
 	$('#HaveYouRegainedYourLegalStatusTrId').hide();
 	$('#DateBecameJoCitizenTr').hide();

	//document.getElementbyId('CandidacyRequirementsBylawTableId') = 'disabled' ; 
	//document.getElementById('trytodisablethisinputtexttagId').disabled = true;
	//document.getElementById('CandidacyRequirementsBylawDivId').disabled = true;

	
	$('#JordanianCitizenSpan1').hide();
	$('#JordanianCitizenSpan2').hide();
	$('#DateBecameJoCitizenTr').hide();
	$('#NextButton').hide();
	$('#HaveYouRegainedYourLegalStatusTrId').hide();
	$('#DateBecameJoCitizenTr').hide();
}


$( function() {
    $( "#datepickerId").datepicker( {dateFormat: 'yy/mm/dd'} ); 
  } );

$( function() {
    $( "#datepickerId2").datepicker( {dateFormat: 'yy/mm/dd'} );    
  } );


function checkEnteredYear(dateText){
 
             var startDate = new Date(dateText);
             var selectedYear = startDate.getFullYear(); // selected year
             alert(selectedYear);
             
             if(selectedYear>1998 ){ 
			  //var  message = " —”«·… Œÿ√ :  √‰  €Ì— „ƒÂ· · —‘ÌÕ ‰›”ﬂ° ÌÃ» √‰ ÌﬂÊ‰ ⁄„— «·„—‘Õ 25 ⁄«„« √Ê √ﬂÀ— ›Ì ÌÊ„ «·«ﬁ —«⁄";
				var  message = " —”«·… Œÿ√ :\n\n √‰  €Ì— „ƒÂ· · —‘ÌÕ ‰›”ﬂ° ÌÃ» √‰ ÌﬂÊ‰ ⁄„— «·„—‘Õ 25 ⁄«„« √Ê √ﬂÀ— ›Ì ÌÊ„ «·«ﬁ —«⁄";
        		alert(message );
        		
        		document.getElementById('notEligableDueToAge').innerHTML = message ;
        		document.getElementById("notEligableDueToAge").style.color = "red";
        		document.getElementById("notEligableDueToAge").style.backgroundColor = "yellow";
        		$('#notEligableDueToAge').show();
        		
        		setTimeout(function() {
        			$('#notEligableDueToAge').hide();
        		}, 20000);
             }
 
}

function radioselected(selectedRadioItem){
	alert("selectedRadioItem = " + selectedRadioItem);
}

function JordanianCitizenQ(radio){
	
	if(radio == 'yes'){
		$('#bankruptcyRadioId').show(); 

 		$('#notEligableDueToAge').hide();
	}else{
		$('#DateBecameJoCitizenTr').hide();
		$('#NextButton').hide();
		$('#bankruptcyRadioId').hide();

		var  message = "ÌÃ» ⁄·Ìﬂ «‰  ﬂÊ‰ „Ê«ÿ‰ «—œ‰Ì Õ Ï  ﬂÊ‰ „ƒÂ· · —‘ÌÕ ‰›”ﬂ ﬂ‰«∆» ›Ì «·»—·„«‰ «·«—œ‰Ì"; 
		alert(message );
		document.getElementById('notEligableDueToAge').innerHTML = message ;
		document.getElementById("notEligableDueToAge").style.color = "red";
		document.getElementById("notEligableDueToAge").style.backgroundColor = "yellow";
		$('#notEligableDueToAge').show();
		
		setTimeout(function() {
			$('#notEligableDueToAge').hide();
		}, 6000);
		
	}
	
	$('#JordanianCitizenSpan1').show();
	$('#JordanianCitizenSpan2').show();
	document.getElementById('JordanianCitizenSpan2').innerHTML = answer; 

}

function thirtyYearsOrOlderFun(radio){

	if(radio == 'yes'){
		$('#CandidacyRequirementsBylawTableId').show();
		$('#CandidacyRequirementsBylawTrId').show();
		$('#bankruptcyRadioId').show();
		$('#HaveYouRegainedYourLegalStatusTrId').show();
		$('#DateBecameJoCitizenTr').show();
		$('#NextButton').show();
		$('#birthdayDateTrId').show();  
		document.getElementById('notEligableDueToAge').innerHTML = '' ;
	}else{
		$('#CandidacyRequirementsBylawTableId').hide();
		$('#CandidacyRequirementsBylawTrId').hide();
		$('#bankruptcyRadioId').hide();
		$('#HaveYouRegainedYourLegalStatusTrId').hide();
		$('#DateBecameJoCitizenTr').hide();
		$('#NextButton').hide();
		$('#birthdayDateTrId').hide();
		
// 		document.getElementById("notEligableDueToAge").style.visibility = 'visible';

// 		var  message = "√‰  €Ì— „ƒÂ· · —‘ÌÕ ‰›”ﬂ° ÌÃ» √‰ ÌﬂÊ‰ ⁄„— «·„—‘Õ 25 ⁄«„« √Ê √ﬂÀ— ›Ì ÌÊ„ «·«ﬁ —«⁄";
		$('#notEligableDueToAge').show(); 
		var  message = " —”«·… Œÿ√ :\n\n √‰  €Ì— „ƒÂ· · —‘ÌÕ ‰›”ﬂ° ÌÃ» √‰ ÌﬂÊ‰ ⁄„— «·„—‘Õ 25 ⁄«„« √Ê √ﬂÀ— ›Ì ÌÊ„ «·«ﬁ —«⁄";
		alert(message );
		document.getElementById('notEligableDueToAge').innerHTML = message ;
		document.getElementById("notEligableDueToAge").style.color = "red";
		document.getElementById("notEligableDueToAge").style.backgroundColor = "yellow";
		
		
		setTimeout(function() {
			$('#notEligableDueToAge').hide();
		}, 20000);
	}
}
	
	
	function bankruptcyConvictedFun(radio){
		
		if(radio == 'yes'){
			$('#HaveYouRegainedYourLegalStatusTrId').show();
			$('#DateBecameJoCitizenTr').hide();
			$('#NextButton').hide();
		}else{
			$('#HaveYouRegainedYourLegalStatusTrId').hide(); 
			$('#DateBecameJoCitizenTr').show();
			$('#NextButton').show();
		}
		
	}
	
	function regainedYourLegalStatusFun(radio){
		
		if(radio == 'yes'){
			

			$('#DateBecameJoCitizenTr').show();
			$('#NextButton').show();
		}else{
			var  message = "ÌÃ» ⁄·Ìﬂ «‰  ” ⁄Ìœ Ê÷⁄ﬂ «·ﬁ«‰Ê‰Ì ›Ì Õ«· √œ‰  »«·«›·«” „‰ ﬁ»·° Õ Ï   „ﬂ‰ „‰ «· —‘Õ ·„Ã·” «·‰Ê«» «·«—œ‰Ì 2024"; 
			alert(message );
			document.getElementById('notEligableDueToAge').innerHTML = message ;
			document.getElementById("notEligableDueToAge").style.color = "red";
			document.getElementById("notEligableDueToAge").style.backgroundColor = "yellow";
			
			$('#notEligableDueToAge').show(); 
			setTimeout(function() {
				$('#notEligableDueToAge').hide();
			}, 6000);
			
			$('#NextButton').hide();
			$('#DateBecameJoCitizenTr').hide();
			
		}
		
	}
	
	
	function nextButtonAtagFun(){
		alert(" .√‰  „ƒÂ· ·· —‘Õ ·⁄÷ÊÌ… «·»—·„«‰ «·√—œ‰Ì° «÷€ÿ „Ê«›ﬁ ··„ «»⁄…");
		
		}

</script>


</html>