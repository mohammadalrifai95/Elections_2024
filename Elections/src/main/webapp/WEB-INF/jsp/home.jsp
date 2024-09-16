<%-- <%@ page language="java" contentType="text/html; charset=windows-1256" pageEncoding="windows-1256"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     --%> 
<%-- <%@ taglib uri="jakarta.tags.core" prefix="c" %>  --%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  
 
 
 
<%-- <%@ taglib  prefix="c" uri="http://java.sun.com/jstl/core"  %> --%>
<%@ taglib prefix = "spring" uri = "http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%-- <%@page contentType="text/html;charset=UTF-8"%> --%>
<!-- below library added to be able to use "fn:length" -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<head> 
<meta charset="windows-1256">
<title>Welcome to Election System Application</title>
</head>
<style>

.parent {
  border: 1px solid black;
  margin: 1rem;
  padding: 2rem 2rem;
  text-align: center;
}

.child {
  display: inline-block;
  border: 1px solid red;
  padding: 1rem 1rem;
  vertical-align: middle;
}

.parentInterior {
  border: 1px solid black;
  margin: 1rem;
  padding: 2rem 2rem;
  text-align: center;
}
.childInterior {
  display: inline-block;
  border: 1px solid red;
  padding: 1rem 1rem;
  vertical-align: middle;
}


.button{
	color: black;
	border-radius: 10px; 
	font-size: 1.2rem; 
	height: auto;
	text-shadow: 1px 1px 1px #000;
 	background-color: #679FAB;  
	width:210px;
	margin-left: 80px; 
     background-image: linear-gradient(to top left, rgba(0, 0, 0, 0.2), rgba(0, 0, 0, 0.2) 30%, rgba(0, 0, 0, 0)); 
     box-shadow: inset 2px 2px 3px rgba(255, 255, 255, 0.6), inset -2px -2px 3px rgba(0, 0, 0, 0.6); 
}

 
 



	
   .circle {
    background: lightblue;
    border-radius: 50%;
    width: 200px;
    height: 200px;
    }	
    
    
    .circular_image {
  width: 400px;
  height: 400px; 
  border-radius: 50%;
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


.circular_image img{
  width:100%;
}

.imageContainer > img:hover {
  width: 300px;
  height: 300px;   
}

/* .center { */
/*   margin: auto; */
/*   width: 50%; */
/*   border: 3px solid green; */
/*   padding: 10px; */
/* } */

.center {
  border: 5px solid;
  margin: auto;
  width: 70%; 
  padding: 10px;
}


 .arrow {
  border: solid black;
  border-width: 0 3px 3px 0;
  display: inline-block;
  padding: 3px;
}

.right {
  transform: rotate(-45deg);
  -webkit-transform: rotate(-45deg);
}

 
    
/* body { */
/*   background-color:white; */
  
/* } */

/* ul { */
/*   list-style-type: none; */
/*   margin: 0; */
/*   padding: 0; */
/*   overflow: hidden; */
/*   background-color: white;  */
/* } */

/* li { */
/*   float: left; */
/* } */


/* li a, .dropbtn { */
/*   display: inline-block; */
/*   color: #00008B;     */
/*   text-align: center; */
/*   padding: 14px 33px;     */
/*   text-decoration: none; */
/* } */

/* li a:hover, .dropdown:hover .dropbtn { */
/*   background-color: red; */
/* } */

/* li.dropdown { */
/*   display: inline-block; */
/* } */

/* .dropdown-content { */
/*   display: none; */
/*   position: absolute; */
/*   background-color: #f9f9f9; */
/*   min-width: 160px; */
/*   box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2); */
/*   z-index: 1; */
/* } */

/* .dropdown-content a { */
/*   color: black; */
/*   padding: 12px 16px; */
/*   text-decoration: none; */
/*   display: block; */
/*   text-align: left; */
/* } */

/* .dropdown-content a:hover {background-color: #f1f1f1;} */

/* .dropdown:hover .dropdown-content { */
/*   display: block; */
/* } */
 
 
/* .float-parent-element {   */
/*      width: 100%;    */
/*      background-color: #f1f1f1;    */
/*  }   */

/* .lvl3 { position: absolute; top:0px; left: 50px; } */

 
html, body {
	height: 100%;
} 

*{
	margin: 0;
	padding: 0;
	box-sizing: border-box;

}

ul {
	list-style: none;
}

body {
	font-size: 1rem;
	line-height: 1.6;
	background-color: #ecf0f1;
	color: #666;
	font-family:  'Roboto Condensed', sans-serif;
} 

/* Nav Style */

header{

	background-color: #679FAB;
	padding: 2rem 0;

}

nav{
	max-width: 1100px;
	margin: 0 auto;
	display: flex;
	justify-content: space-between;
	align-items: center;
}


.logo{
	font-size: 1.5rem;
	color: #fff; 
	font-weight: 700;
}

 
.menu > li, .menu > a {
	display: inline-block;
	
/* 	01 06 2024 */
/* 	float: right; */
/* 	float: left; */
/* 	text-align: left; */
/* 	float: right;  */
    
/*     text-align:right; */

}


.menu li {
	position: relative;
		
		
	/* 	01 06 2024 */
/*      display:inline-block; */
    		
	
}

.menu a {
	/* change here */ 
	text-decoration: none;
/* 	color: #000080; */
 	color: black;  
/*  	color: #f75990; */
/* 	background-color: white;    */
	background-color: lightgray;
	display: block; 
	padding: 10px 1.5rem; 
	/* 	changehere  */
	padding-right: 1px;        
	transition: background-color .22s ease, color .22s ease; 

	
}

.menu a:hover {
/* 	background-color: #f34949; */
/* 	color: #fff; */
	background-color: gray;
	color: red;  
	
	
}


/* Submenu level1 */

.submenu {
	position: absolute;
	background-color: #2c3e50;
/* 	width: 200px; */
	left: 0;
	display: none;
/* 	changehere  */
	width: 450px; 
}



/* Submenu level2 style */ 


.submenu2 {
	position: absolute;
/* 	left: 100%; */
	top: 0;
	background-color: #2c3e50;
	display: none;
	/* 	changehere  */
	width: 450px;  
    right: 100%;
    left: auto;
    

/* 	01 06 2024 */	
/*     float:left;   */
	
}


/* Show menu on hover */

.menu li:hover > .submenu {  
	display:block; 
	
}

.submenu li:hover .submenu2 {
    	display:block;    


/*     float:left;   */
/*     text-align: left;  	 */
/*     display: none; position:absolute; right:0;*/ 
}
 


.arrow {
  border: solid black;
  border-width: 0 3px 3px 0;
  display: inline-block;
  padding: 3px;
}

 .right { 
   transform: rotate(-45deg); 
   -webkit-transform: rotate(-45deg); 
 } 

 .left { 
   transform: rotate(135deg); 
   -webkit-transform: rotate(135deg); 
 } 


.up {
  transform: rotate(-135deg);
  -webkit-transform: rotate(-135deg);
}

.down {
  transform: rotate(45deg);
  -webkit-transform: rotate(45deg);
}



.fixedElement {
    background-color: #c0c0c0;
    position:fixed;
    top:0;
    width:100%;
    z-index:100;
}

/* .jordanflag */
/* { */
/* background-image:<c:url value="/resources/images/jordanFlag.jpg" />; */
/* width: 100%; */
/* height: auto; */
/* } */


.center {
  border: 5px solid;
  margin: auto;
  width: 90%; 
  padding: 10px;
}


/* .alert { */
/*    width:1000px;     */
/* } */

#confirm
         {
            overflow: scroll;
            display: none;
            background-color: white; 
/*             background-color: white; */
            color: #000000;
            border: 10px solid #aaa;
            position: fixed;
            width: 80%;
            height: 75%;
            font-size: 31px;
            font-weight:bold;
/*             left: 20%;  */
/*             margin-left: -100px; */
/*             padding: 10% 10% 10%;  */
            box-sizing: border-box;
            text-align: center;
	         margin-top: 32%;
             margin-right: 5%; 
             margin-left: 4%; 
            
         }
         #confirm button {
            background-color: blue;
            color: white;
            display: inline-block;
            border-radius: 12px;
            border: 4px solid #aaa;
/*             padding: 5px; */
            text-align: center;
            width: 100px;
            height: 70px;
            font-size: 27px;
            font-weight:bold;
            cursor: pointer;
         }
         #confirm .message
         {
/*             text-align: left; */

         }
         
         
</style>
<body>


<div style="" class="center">


<div id="confirm" style="">
      <button class="yes" style="font-size: 40px;">موافق</button>
<!--          <div class = "message">اهلا بكم في موقع الانتخابات البرلمانيه الاردنيه هذا الموقع بمثابه حمله انتخابيه للتسهيل على المواطنين الذين يرغبون بالترشح لمجلس النواب الاردني 2024 لتاسيس حملتهم بجهد اقل ومصاريف اقل على هذا الموقع يمكنك هذا الموقع من معرفه عدد الاصوات التي يمكن ان تحصيدها بدقه هذا الموقع محمي ويحتوي على جميع المواطنين الاردنيين المؤهلين للترشح والمؤهلين للانتخاب فقط كل حسب منطقته التي يقطن بها ولا يسمح هذا الموقع لاي شخص بان يسجل نفسه كناخب او كمرشح في منطقه اخرى غير المنطقه التي يقطن بها اي مواطن اردني تنطبق عليه شروط الترشح والانتخاب له الاحقيه الكامله في الدخول الى هذا الموقع وتسجيل نفسه كمرشح لجلب الاصوات او كناخب للتصويت للمرشح للمرغوب به يسمح هذا الموقع في اي وقت يمكنك النقر على اشعار اليد مع العلم العوده الى الصفحه الرئيسيه يسمح لك هذا الموقع باختيار والتصويت لمرشحك المفضل الذي ترغب للتصويت له اذا لم يكن مرشحك مسجل في هذا الموقع خرج الى ما هو بضروره التسجيل في هذا الموقع كمرشح للبرلمان الاردني يمكنه هذا الموقع من مراقبه حملته الانتخابيه واعطائه رؤيه افضل عن عدد الاصوات التي يمكن ان يحصدها عن طريق هذا التسجيل في هذا الموقع الرجاء المعرفه ان هذا الموقع لا يعتبر موقعا رسميا ويمثل فقط حمله انتخابيه للتسهيل على المواطنين ولا يمثل اي انتخابات رسميه هذا الموقع ينبغي على الاشخاص الذين قاموا بالتسجيل في هذا الموقع ان يذهبوا ايضا للتسجيل والانتخاب الفعلي في الزمان والمكان التي عينتهما الحكومه الاردنيه الرجاء المعرفه طريقه التسجيل كنافذ او مرشح اردني انقر على تسجيل ناخب او مرشح التي تظهر في الشاشه الرئيسيه ثم اختر نوع التسجيل في اي وقت يمكن يمكنك النقر على قائمه المرشحين التي تظهر في الشاشه الرئيسيه ومن ثم اختيار المدينه والمنطقه التي ترغب في رؤيه قائمه مرشحيها عند النقر على الزر اوكي فانك توافق على جميع الشروط وسياسه هذا الموقع لمشاركه معلوماتك مع هذا الموقع بغرض مساعدتك في التسجيل كناخب او مرشح بعد عمليه تسجيلكناخب او كمرشح يمكنك تسجيل الدخول عن طريق النقر على الرابط او الزر تسجيل الذي يظهر على الشاشه الرئيسيه عند الوصول الى شاشه تسجيل الدخول بامكانك ادخال اسم المستخدم وكلمه المرور التي قمت بادخالهما اثناء عمليه التسجيل كناخب او مرشح بالاضافه الى رقمك الوطني باللغه الانجليزيه كما يظهر على الهويه في اي وقت يمكنك الضغط على الزر معلومات او الرابط الذي يظهر على الشاشه الرئيسيه لرؤيه هذه القائمه مره اخرى</div><br> -->
<!--          <div class = "message" dir="rtl">اهلا بكم</div> -->
         <div class = "message" >اهلا بكم, بامكانك التسجيل كناخب او مرشح للبرلمان الاردني , من الشاشه الرئيسيه اضغط على زر      <span style="color: red"> &#9660 تسجيل ناخب/مرشح </span>
         اختر تسجيل ناخب او تسجيل مرشح ادناه
         <br>
<!-- 	         		<ul style="font-size: 40px; background-color: yellow;" >  -->
<!-- 	         			<li> -->
	         				<a href="/voterRegistration" style="font-size: 40px; background-color: yellow;">تسجيل ناخب اردني</a>
<!-- 	         			</li>  -->
<!--          			</ul> -->
         			<br>
<!--          			<ul style="font-size: 40px; background-color: yellow;" > -->
<!-- 	         			<li> -->
	         				<a href="/welcome" style="font-size: 40px; background-color: yellow;">تسجيل مرشح  اردني</a>
<!-- 	         			</li> -->
<!-- 	         		</ul>  -->
         <br>
         ,سيطلب منك الموقع ادخال اسمك ورقمك الوطني كما يظهران في الهويه الشخصيه  سيطلب منك الموقع ادخال "اسم مستخدم" و "رقم سري" يمكنانك من الدخول لاتمام عمليه التصويت,  بعد اتمام عمليه التسجيل كناخب او مرشح بامكانك الان تسجيل الدخول بالنقر على رابط<a href="/logoutPage" style="font-size: 40px; background-color: yellow;"> تسجيل </a> الذي يظهر في الشاشه الرئيسيه من الزاويه العليا في اليسار ومن ثم الدخول عن طريق اسم المستخدم وكلمه المرور, لمزيد من <a href="/abouttheapplication" style="font-size: 40px; background-color: yellow;"> معلومات</a> بامكانك الضغط على زر معلومات الذي يظهر على الشاشه الرئيسيه,  
          للعوده الى الصفحه الرئيسيه في اي وقت بامكانك النقر على شعار اليد في الزاويه العليا  من جهه اليمين
<!--          <br> -->
    			<a href="/" style="float: left;">
			  		<img src="<c:url value="/resources/images/jordanflagonhand.jpg" />" alt="image"   style="width: 90px; height: 90px; border-radius: 25%; "/> 
				</a>
         </div>
<!--          <br> -->
         <button class="yes" style="font-size: 40px;">OK</button>
      </div>
      
      


<div    style="border: 3px solid #73AD21; background-color: #679FAB;  height: 10%; color: white;" dir="rtl">  
	<table > 
		<tr>
			<td>  
				<a href="/">
			  		<img src="<c:url value="/resources/images/jordanflagonhand.jpg" />" alt="image"   style="width: 100px; height: 90px; border-radius: 25%; "/> 
				</a>
			</td>
			<td style="width: 20%"></td>
			<td style="width:50%; text-align: center;">             
					<p style="font-size: 35px;">حملتك للانتخابات البرلمانيه الاردنيه</p>
					<br>
					<p style="font-size: 25px;"> هذا الموقع غير رسمي ويعتبر حمله للمرشحين </p>
			</td>
			<td style="width: 20%"></td>
			<td style="font-size: 45px; width:50%; text-align: center;">    
					<a href="/logoutPage">
						تسجيل 						
					</a>
					<a href="/english?language=english" style="color: #FF6347; font-size: 15px;"> 
					  	 English 
					</a>     
			</td>	
		</tr>
	</table>
</div>


<div    style="background-color: lightgray;  height: 30%; font-size: 23px; width: 100%;" > 
		<h1>
				<ul class="menu" style="width: 100%;">  		
					 
					 <li style="float:right;">
						<a href="#">&#9660 قائمه المرشحين  </a>
						<ul class="submenu" >
							<li >
								<a href="#"> &#9668; عمان <i style="margin-left: 45px;'"></i></a> 
								<!-- class="submenu2" -->
								<ul class="submenu2">  
									<li><a href="/listOfCandidatesPerDistrict?governorateId=1&location=عمان (المنطقة الأولى)&constituencyId=1"  >عمان (المنطقة الأولى)</a></li>
									<li><a href="/listOfCandidatesPerDistrict?governorateId=1&location=عمان (المنطقة الثانية)&constituencyId=2" >عمان (المنطقة الثانية)</a></li>
									<li><a href="/listOfCandidatesPerDistrict?governorateId=1&location=عمان (المنطقة الثالثة)&constituencyId=3"   >عمان (المنطقة الثالثة)</a></li>
								</ul>
							</li>
							<li>
								<a href="#"> &#9668; اربد <i style="margin-left: 45px;'"></i></a> 
								<ul class="submenu2">
								<!-- target = "_blank"	-->
									<li><a href="/listOfCandidatesPerDistrict?governorateId=2&location=إربد (المنطقة الأولى)&constituencyId=8">إربد (المنطقة الأولى)</a></li>
									<li><a href="/listOfCandidatesPerDistrict?governorateId=2&location=اربد (المنطقة الثانية)&constituencyId=9">اربد (المنطقة الثانية)</a></li>
								</ul>
							</li>
						
							<li><a href="/listOfCandidatesPerDistrict?governorateId=6&location=الزرقاء&constituencyId=31">الزرقاء</a></li>
							<li><a href="/listOfCandidatesPerDistrict?governorateId=10&location=جرش&constituencyId=40">جرش</a></li>
							<li><a href="/listOfCandidatesPerDistrict?governorateId=8&location=الطفيلة&constituencyId=36">الطفيلة</a></li>
							<li><a href="/listOfCandidatesPerDistrict?governorateId=12&location=العقبة&constituencyId=43">العقبة</a></li>
							<li><a href="/listOfCandidatesPerDistrict?governorateId=4&location=الكرك&constituencyId=21">الكرك</a></li>
							<li><a href="/listOfCandidatesPerDistrict?governorateId=13&location=البادية الشمالية&constituencyId=44">البادية الشمالية</a></li>
							<li><a href="/listOfCandidatesPerDistrict?governorateId=13&location=البادية الوسطى&constituencyId=45">البادية الوسطى</a></li>
							<li><a href="/listOfCandidatesPerDistrict?governorateId=13&location=البادية الجنوبية&constituencyId=46">البادية الجنوبية</a></li>
							<li><a href="/listOfCandidatesPerDistrict?governorateId=9&location=مادبا&constituencyId=38">مادبا</a></li>
							<li><a href="/listOfCandidatesPerDistrict?governorateId=4&location=معان&constituencyId=28">معان</a></li>
							<li><a href="/listOfCandidatesPerDistrict?governorateId=11&location=عجلون&constituencyId=41">عجلون</a></li>
							<li><a href="/listOfCandidatesPerDistrict?governorateId=3&location=البلقاء&constituencyId=17">البلقاء</a></li>
							<li><a href="/listOfCandidatesPerDistrict?governorateId=7&location=المفرق&constituencyId=35">المفرق</a></li>
					
						</ul>
					</li>

					<li style="float:right;">
						<a href="#">&#9660 تسجيل ناخب/مرشح</a>
						<ul class="submenu">
							<li><a href="/voterRegistration">تسجيل ناخب اردني</a></li>
							<li><a href="/welcome">تسجيل مرشح  اردني</a></li>
						</ul>
					</li>				

				</ul>
		</h1>
</div>			

<div  id="englishDiv" style=" background-color: lightgray; padding-top: 150px;">        
<span id="errorLoginMessage" style="color:red;">${errorLoginMessage}</span>

  <div style="border:1px solid gray; width: 100%; padding-top: 1%;" >
	<c:forEach items="${candidateDataList}" var="candidateData">
		<div style="padding-left: 6%; display:none; border: solid; border-color: #FF6347; background-color: #358579; color: white;" id="${candidateData.index}" >

			<table style="">
				<tr>
				<td style="width: 25%; font-size: 35px;"></td>
					<td style="font-size: 35px; color: #FF6347;">بعض المرشحين المسجلين في الموقع</td>
				</tr>
			</table>
  			<table style="text-align: center" id="${column.status.index}">
				<tr>
					<td >
						<table style="border-collapse: separate;border-spacing: 0 1em; width: 100%; ">
							<tr>
								<td width="100%">
									<button style="font-size: 30px;  background-color: blue;color: white; width: 28%; height:40%; margin-left: 1%;" >${candidateData.numberOfVotes}</button>
									مجموع الأصوات
								</td>
							</tr>
							<tr>
								<td>
									<c:choose>
									    <c:when test="${empty candidateData.base64image}">
									    	<img src="<c:url value="/resources/images/candidateDefault.png" />" alt="image"  style="width: 55%; height: 55%;"/>
									    </c:when>    
									    <c:otherwise>
									    	<img alt="img" src="data:image/png;jpg;jpeg;charset=utf-8;base64,${candidateData.base64image}" style="width: 55%; height: 55%;"/>
									    </c:otherwise>
									</c:choose>
								</td>
							</tr>
							<tr>
								<td><p style="margin-left: 40px; font-size: 20px;"> ${candidateData.fullName}</p></td>
							</tr>
						</table>
					</td>
					
					<td style="width: 1%;">
					</td>
					
					<td style="width: 60%;"> 
						<table style=" padding-top: 1px; padding-right: 5%; font-size: 25px; border-spacing: 20px;">
							<tr>
								<td>${candidateData.fullName}</td>
								<td>:اسم  المرشح</td>  
							</tr>
							<tr>
								<td>${candidateData.governorateData.arabicName}</td>  
								<td> :اسم المحافظة </td>    
							</tr>
							<tr>
								<td> ${candidateData.constituencyData.arabicName}</td>  
								<td>:الدائرة الانتخابية</td>    
							</tr>
						</table>	
					</td>
				</tr>
		      </table>
	      </div>
	 </c:forEach>
	</div>
		
		
		
<div    style="background-color: lightgray;  height: 30%; font-size: 22px; width: 100%;" > 
<h1>
	
	 <div style="float:left">
            <a href="/ListOfMembers"> مجلس النواب   </a>
    </div>
    <div style="float: right">
            <a href="/abouttheapplication"> معلومات</a>
    </div>
	
</h1>
</div>			
<br>
<br>
<br>
		
		
<div style="border:1px solid gray; width: 100%;" align="center" >
		<!--   table1    -->
		<table style="  color: #00008B;" >     
			<tr>
 				<!--style="display:none;" -->
				<td class="imageContainer" id="developedbId" > 
					<a href="#"> 
<!-- 						<p style="margin-left: 80px; font-size: 70px; color: green;"> -->
						<img src="<c:url value="/resources/images/modrinization.png" />" alt="image"  style="width:100%; "/> 
<!-- 						</p> -->
					</a>	
				</td>
				<td class="imageContainer" id="2017Td"  style="display:none;">
					<a href="#"> 
<!-- 						<p style="margin-left: 80px; font-size: 70px; color: green;"> -->
						<img src="<c:url value="/resources/images/jordan-vote-concept-man-hand-ballot-box-election-day-jordan-flag-vector.jpg" />" alt="image"  style="width:100%; " /> 
<!-- 						</p> -->
					</a>	
				</td>
				<td class="imageContainer" id="2018Td"  style="display:none;">
					<a href="#">
<!-- 						<p style="margin-left: 80px; font-size: 70px; color: blue;"> -->
<!-- 						jordainainvoteforthenation.jpg -->
						<img src="<c:url value="/resources/images/femaleCandidate.png" />" alt="image" style="width:100%;  "/> 
<!-- 						</p>	 -->
					</a>
					 		
				</td>
				<td  class="imageContainer" id="2019Td"  style="display:none;">
					<a href="#">
<!-- 						<p style="margin-left: 80px; font-size: 70px; color: red"> -->
<%-- 							<img src="<c:url value="/resources/images/jordanammanwithflag.jpg" />" alt="image"   style="width:100%;  " /> --%>
							<img src="<c:url value="/resources/images/drop_cast.png" />" alt="image"   style="width:100%;  " />
<!-- 						</p> -->
					</a>
				</td>
				<td  class="imageContainer" id="2020Td"  style="display:none;">
					<a href="#">
<!-- 						<p style="margin-left: 80px; font-size: 70px; color: yellow"> -->
						<img src="<c:url value="/resources/images/kingAbdullahSpeech.jpg" />" alt="image"  style="width:100%;  "  />
<!-- 						</p> -->
<!-- 						</p> -->
					</a>
				</td>
				 
				<td  class="imageContainer" id="2021Td"  style="display:none;">
					<a href="#">
<!-- 						<p style="margin-left: 80px; font-size: 70px; color: brown;"> -->
							<img src="<c:url value="/resources/images/jordanparlamiante.jpg" />" alt="image"  style="width:100%;  "  />
<!-- 						</p> -->
					</a>
				</td>
				<td  class="imageContainer" id="2022Td"  style="display:none;">
					<a href="#">
<!-- 						<p style="margin-left: 80px; font-size: 70px; color: orange;"> -->
						<img src="<c:url value="/resources/images/jordanflagonhand.jpg" />" alt="image"   style="width:100%;  " />
<!-- 						</p> -->
					</a>
				</td>
				<td  class="imageContainer" id="2023Td"  style="display:none;">
					<a href="#">
<!-- 						<p style="margin-left: 80px; font-size: 70px; color: black;"> -->
<%-- 						<img src="<c:url value="/resources/images/jordanmap.jpg" />" alt="image" style="width:80%; height: 400px; "    /> --%>
						<img src="<c:url value="/resources/images/Jordan_flags.jpg" />" alt="image" style="width:100%; "    />
<!-- 						</p> -->
					</a>
				</td>
				<td  class="imageContainer" id="2024Td"  style="display:none;">
					<a href="#">
<!-- 						<p style="margin-left: 80px; font-size: 70px; color: black;"> -->
<%-- 						<img src="<c:url value="/resources/images/jordanonthemap.jpg" />" alt="image" style="width:80%; height: 400px; "    /> --%>
						<img src="<c:url value="/resources/images/crowd.png" />" alt="image" style="width:100%; "    />
<!-- 						</p> -->
					</a>
				</td>
				<td  class="imageContainer" id="2025Td"  style="display:none;">
					<a href="#">
<!-- 						<p style="margin-left: 80px; font-size: 70px; color: black;"> -->
<%-- 						<img src="<c:url value="/resources/images/jordanonthemap2.jpg" />" alt="image" style="width:80%; height: 400px; "    /> --%>
						<img src="<c:url value="/resources/images/JORDAN-People.jpg" />" alt="image" style="width:100%;  "    />
<!-- 						</p> -->
					</a>
				</td>
				<td  class="imageContainer" id="2026Td"  style="display:none;">
					<a href="#">
<!-- 						<p style="margin-left: 80px; font-size: 70px; color: black;"> -->
						<img src="<c:url value="/resources/images/JORDAN-ELECTION-PARLIAMENT-RESULTS.jpg" />" alt="image" style="width:100%;  "    />
<!-- 						</p> -->
					</a>
				</td>
				<td  class="imageContainer" id="2027Td"  style="display:none;">
					<a href="#">
<!-- 						<p style="margin-left: 80px; font-size: 70px; color: black;"> -->
<%-- 							<img src="<c:url value="/resources/images/developedby.jpg" />" alt="image" style="width:80%; height: 386px;" /> --%>
							<img src="<c:url value="/resources/images/drop_cast.png" />" alt="image" style="width:100%; " />
<!-- 						</p> -->
					</a>
				</td>
				 
			</tr>
		</table>
</div>


 <div style="border:1px solid gray; width: 100%;" align="center" >
  	<br /> 
<!-- 		<table style="  color: #00008B;" >      -->
<!-- 			<tr> -->
<!-- 				<td class="imageContainer" id="">  -->
					<a href="#"> 
<!-- 						<p style="margin-left: 80px; font-size: 70px; color: green;"> -->
							<img src="<c:url value="/resources/images/rules.png" />" alt="image"  style="width:100%;  "/> 
<!-- 						</p> -->
					</a>	
<!-- 				</td> -->
<!-- 			</tr> -->
<!-- 		</table> -->
<br /> <br /> 
<!-- 		<table style="  color: #00008B;" >      -->
<!-- 			<tr> -->
<!-- 				<td class="imageContainer" id="">  -->
<!-- 					<a href="#">  -->
<!-- 						<p style="margin-left: 80px; font-size: 70px; color: green;"> -->
<%-- 						<img src="<c:url value="/resources/images/fourMembersNames.png" />" alt="image"  style="width:80%; height: 353px; "/>  --%>
<!-- 						</p> -->
<!-- 					</a>	 -->
<!-- 				</td> -->
<!-- 			</tr> -->
<!-- 		</table> -->

<!-- 		<table style="  color: #00008B; width:80%;" >      -->
<!-- 			<tr> -->
<!-- 				<td class="imageContainer" id="">  -->
					<a href="#"> 
<!-- 						<p style=" font-size: 70px; color: green; width:80%; "> -->
								<img src="<c:url value="/resources/images/modrinization.png" />" alt="image"  style="width:100%;  "/> 
<!-- 						</p> -->
					</a>	
<!-- 				</td> -->
<!-- 			</tr> -->
<!-- 		</table> -->
		
<!--   	<br /> -->
  	
  	 
<!-- 		<table style="  color: #00008B;" >      -->
<!-- 			<tr> -->
<!-- 				<td class="imageContainer" id="">  -->
<!-- 					<a href="#">  -->
<!-- 						<p style="margin-left: 80px; font-size: 70px; color: green;"> -->
<%-- 						<img src="<c:url value="/resources/images/developedby.jpg" />" alt="image"  style="width:80%; height: 386px; "/>  --%>
<!-- 						</p> -->
<!-- 					</a>	 -->
<!-- 				</td> -->
<!-- 			</tr> -->
<!-- 		</table> -->
		

<!-- 	<p> -->
<!-- 	 	<a href="/" style="font-weight: bold;color: white;"> Home</a> -->
<!-- 	 	<br />  -->
<!-- 		 <a href="" style="font-weight: bold; color: white;"> Contact</a>    -->
<!-- <!-- 		 <a target = "_blank" href="https://www.youtube.com/playlist?list=PLP-mhFFMWT9IaIU_Er99PVJq3Iq7pB4oH">    --> 
<%-- <%-- 		 	<img src="<c:url value="/resources/images/youtub.gif" />" alt="image" class="circular_image_header"   style="width: 60px; height: 40px;"/>  --%>
<!-- <!-- 		</a> -->
<%-- 		<img src="<c:url value="/resources/images/facebook.gif" />" alt="image" class="circular_image_header"   style="width: 60px; height: 40px;"/>  --%>
<!-- 	</p> -->
<!-- <!-- 	<p style="margin-top: 50px;"><span style="font-size: 20px; font-weight: bold;">Developed by: </span>Mohammad Alrifai</p> </p></p>		 -->
</div>
<br>
<br>
<div style="border:1px solid gray; width: 100%;" >
	<div style="border:1px solid gray; width: 100%;" align="left" >
<!-- 	<p> -->
	 	<a href="/" style="font-weight: bold;color: white; font-size: 40px;"> Home</a>
	 	<br /> 
	 	<br /> 
		 <a href="" style="font-weight: bold; color: white;  font-size: 40px;"> Contact</a>
		<br />
	</div>    
	<div style="border:1px solid gray; width: 100%;" align="right" >
<!-- 		 <a target = "_blank" href="https://www.youtube.com/playlist?list=PLP-mhFFMWT9IaIU_Er99PVJq3Iq7pB4oH">    -->
		 <a target = "_blank" href="#">   
		 	<img src="<c:url value="/resources/images/youtub.gif" />" alt="image" class="circular_image_header"   style="width: 50%; "/> 
		</a>
		<br><br>
		<a target = "_blank" href="#">
			<img src="<c:url value="/resources/images/facebook.gif" />" alt="image" class="circular_image_header"   style="width: 50%; "/>
		</a> 
	</div>
<!-- 	</p> -->
<!-- 	<p style="margin-top: 50px;"><span style="font-size: 20px; font-weight: bold;">Developed by: </span>Mohammad Alrifai</p> </p></p>		 -->
</div>		


<c:forEach begin="0" end="100" varStatus="loop">
<br class="verticalSpace">
</c:forEach>	
<a href="#"  >__________________________________________________________________________________________________________________________</a>
</div>

     
</div> 
</body>



<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
<script type="text/javascript">


$('#developedbId' ).show();
$('#2017Td' ).hide(); 
$('#2018Td').hide();
$('#2019Td' ).hide();
$('#2020Td' ).hide();
$('#2021Td').hide();
$('#2022Td' ).hide();
$('#2023Td').hide(); 
$('#2024Td').hide(); 
$('#2025Td').hide(); 
$('#2026Td').hide(); 
$('#2027Td').hide(); 
    
    
function functionAlert(msg, myYes)
{
   var confirmBox = $("#confirm");
   confirmBox.find(".message").text(msg);
   confirmBox.find(".yes").unbind().click(function()
   {
      confirmBox.hide();
   });
   confirmBox.find(".yes").click(myYes);
   confirmBox.show();
}
    
    window.onload = function() {
    	
    	functionAlert();
//     	alert("اهلا بكم في موقع الانتخابات البرلمانيه الاردنيه هذا الموقع بمثابه حمله انتخابيه للتسهيل على المواطنين الذين يرغبون بالترشح لمجلس النواب الاردني 2024 لتاسيس حملتهم بجهد اقل ومصاريف اقل على هذا الموقع يمكنك هذا الموقع من معرفه عدد الاصوات التي يمكن ان تحصيدها بدقه هذا الموقع محمي ويحتوي على جميع المواطنين الاردنيين المؤهلين للترشح والمؤهلين للانتخاب فقط كل حسب منطقته التي يقطن بها ولا يسمح هذا الموقع لاي شخص بان يسجل نفسه كناخب او كمرشح في منطقه اخرى غير المنطقه التي يقطن بها اي مواطن اردني تنطبق عليه شروط الترشح والانتخاب له الاحقيه الكامله في الدخول الى هذا الموقع وتسجيل نفسه كمرشح لجلب الاصوات او كناخب للتصويت للمرشح للمرغوب به يسمح هذا الموقع في اي وقت يمكنك النقر على اشعار اليد مع العلم العوده الى الصفحه الرئيسيه يسمح لك هذا الموقع باختيار والتصويت لمرشحك المفضل الذي ترغب للتصويت له اذا لم يكن مرشحك مسجل في هذا الموقع خرج الى ما هو بضروره التسجيل في هذا الموقع كمرشح للبرلمان الاردني يمكنه هذا الموقع من مراقبه حملته الانتخابيه واعطائه رؤيه افضل عن عدد الاصوات التي يمكن ان يحصدها عن طريق هذا التسجيل في هذا الموقع الرجاء المعرفه ان هذا الموقع لا يعتبر موقعا رسميا ويمثل فقط حمله انتخابيه للتسهيل على المواطنين ولا يمثل اي انتخابات رسميه هذا الموقع ينبغي على الاشخاص الذين قاموا بالتسجيل في هذا الموقع ان يذهبوا ايضا للتسجيل والانتخاب الفعلي في الزمان والمكان التي عينتهما الحكومه الاردنيه الرجاء المعرفه طريقه التسجيل كنافذ او مرشح اردني انقر على تسجيل ناخب او مرشح التي تظهر في الشاشه الرئيسيه ثم اختر نوع التسجيل في اي وقت يمكن يمكنك النقر على قائمه المرشحين التي تظهر في الشاشه الرئيسيه ومن ثم اختيار المدينه والمنطقه التي ترغب في رؤيه قائمه مرشحيها عند النقر على الزر اوكي فانك توافق على جميع الشروط وسياسه هذا الموقع لمشاركه معلوماتك مع هذا الموقع بغرض مساعدتك في التسجيل كناخب او مرشح بعد عمليه تسجيلكناخب او كمرشح يمكنك تسجيل الدخول عن طريق النقر على الرابط او الزر تسجيل الذي يظهر على الشاشه الرئيسيه عند الوصول الى شاشه تسجيل الدخول بامكانك ادخال اسم المستخدم وكلمه المرور التي قمت بادخالهما اثناء عمليه التسجيل كناخب او مرشح بالاضافه الى رقمك الوطني باللغه الانجليزيه كما يظهر على الهويه في اي وقت يمكنك الضغط على الزر معلومات او الرابط الذي يظهر على الشاشه الرئيسيه لرؤيه هذه القائمه مره اخرى");
    	
//     	$('#candidate1Id' ).show();
    	setTimeout(function() {
    		$('#errorLoginMessage').hide(); 
			}, 5000); 
    	
    	
    	
    	$('#developedbId' ).show();
    	$('#2017Td' ).hide(); 
    	$('#2018Td').hide();
    	$('#2019Td' ).hide();
    	$('#2020Td' ).hide();
    	$('#2021Td').hide();
    	$('#2022Td' ).hide();
    	$('#2023Td').hide(); 
    	$('#2024Td').hide(); 
    	$('#2025Td').hide(); 
    	$('#2026Td').hide(); 
    	$('#2027Td').hide(); 
    	
//     	callAddRowFunction();
    	
    	onOfFunction();
    	
//     	hideShowCandidate();
//     	setTimeout(function() {
// 			showRedDivId();
// 			}, 500);   	
    	
    	walkTheCandidates();
    	
    }
    
   	var originalLength = ${fn:length(candidateDataList)};
   	var length = null;
   	
    function walkTheCandidates(){
    	length = originalLength;
// 		setTimeout(function() {
				if(length>=1){
					//alert(length);
// 					alert("after --length = "+length);
					//alert("walkTheCandidates");
					ShowIndex1(1);
				}
// 			}, 2000);
  }
    
 function ShowIndex1(){
	 
		 setTimeout(function() {
		 if(length>1){
			//$('#'+i ).show();
		 	
			$('#1').show();
		 	$('#2').hide(); 
		 	$('#3').hide(); 
		 	$('#4').hide(); 
		 	//alert("ShowIndex1");
			HideIndex1ShowIndex2();
			}
		}, 2000);
		 
}

 function HideIndex1ShowIndex2(){
	 
		 setTimeout(function() {
			 if(length>1){
				//$('#'+i ).show();
				 length--;
				 $('#1').hide(); 
				 $('#2').show(); 
		 		 $('#3').hide(); 
			 	 $('#4').hide(); 
			 	 //alert("HideIndex1ShowIndex2");
				 HideIndex1and2ShowIndex3();
				}else{
					//alert("else1");
					 walkTheCandidates();
				 }
			}, 2000);

}
 function HideIndex1and2ShowIndex3(){

		setTimeout(function() {
			 if(length>1){
				 	length--;
					 $('#1').hide(); 
					 $('#2').hide(); 
					 $('#3').show();
					 $('#4').hide(); 
					 //alert("HideIndex1and2ShowIndex3");
					 HideIndex1and2and3ShowIndex4();
				 }else{
					 //alert("else2");
					 walkTheCandidates();
				 }
				}, 2000);
		 

 }
 
 function HideIndex1and2and3ShowIndex4(){
		setTimeout(function() {
			 if(length>1){
				 length--;
				 $('#1').hide(); 
				 $('#2').hide(); 
				 $('#3').hide();
				 $('#4').show();
				 //alert("HideIndex1and2ShowIndex3");
				 walkTheCandidates();
		 		}
		}, 2000);
}
 
 
 
//     function hidIndex(i){
//     	$('#'+i ).hide();
//     }
//     showIndex(var i){
//     	$('#'+i ).show();
//     }
    
    
//     function callAddRowFunction(){
//      document.getElementById('base64imageId').innerHTML += "<input type='text' value='Hi********' /><br />";

// document.getElementById('base64imageId').innerHTML += 
// 	"<img src='<c:url value='/resources/images/candidateDefault.png' />' alt='image'  style='width: 300px; height: 300px;'/>";
     
// 	  var el = document.getElementById("base64imageId");
// 	   el.innerHTML="<img src='<c:url value='/resources/images/candidateDefault.png'/>' 				  alt='image' style='width: 300px; height: 300px;'/>";
// 	   el.innerHTML="<img src='data:image/png;jpg;jpeg;charset=utf-8;base64,${candidateData.base64image}' alt='img'   style='width: 300px; height: 300px;'/>";
	   
<%-- 	   var boardsize =<%=candidateDataList%>; --%>
	   
//	   
//      document.getElementById('base64imageId').innerHTML= "dsfsdfsdfsfds";
//      document.getElementById("base64imageId").innerHTML= "Please select an option";
//     }
    
// 	function hideShowCandidate(){
		
// 		$('#candidate1Id' ).hide();
// 		$('#candidate2Id' ).show();
// 		$('#candidate3Id' ).hide();
// 		setTimeout(function() {
// 			hideShowCandidate2();
// 			}, 2000);
		
// 	}
// 	function hideShowCandidate2(){
// 		$('#candidate1Id' ).hide();
// 		$('#candidate2Id' ).hide(); 
// 		$('#candidate3Id' ).show();
// 		setTimeout(function() {
// 			hideShowCandidate3();
// 			}, 2000);
		
// 	}
// 	function hideShowCandidate3(){
// 		$('#candidate1Id' ).show();
// 		$('#candidate2Id' ).hide(); 
// 		$('#candidate3Id' ).hide();
// 		setTimeout(function() {
// 			hideShowCandidate();
// 			}, 2000);
		
// 	}
	
	
	function showRedDivId(){
		$('#redDivId').show();
		$('#blueDivId').hide();
		$('#greenDivId').hide();
		setTimeout(function() {
			showBlueDivId();
			}, 1000);
	}
	
	function showBlueDivId(){
		
		$('#redDivId').hide();
		$('#blueDivId').show();
		$('#greenDivId').hide();
		
		setTimeout(function() {
			showGreenDivId();
			}, 1000);
	}
	
	
	function showGreenDivId(){
		
		$('#redDivId').hide();
		$('#blueDivId').hide();
		$('#greenDivId').show();
		
		setTimeout(function() {
			showRedDivId5Sec();
			}, 1000);
	}
	
	
	
	
	function showRedDivId5Sec(){
		$('#redDivId').show();
		$('#blueDivId').hide();
		$('#greenDivId').hide();
		setTimeout(function() {
			showBlueDivId5Sec();
			}, 5000);
	}
	
	function showBlueDivId5Sec(){
		
		$('#redDivId').hide();
		$('#blueDivId').show();
		$('#greenDivId').hide();
		
		setTimeout(function() {
			showGreenDivId5Sec();
			}, 5000);
	}
	
	
	function showGreenDivId5Sec(){
		
		$('#redDivId').hide();
		$('#blueDivId').hide();
		$('#greenDivId').show();
		
		setTimeout(function() {
			showRedDivId();
			}, 5000); 
	}
	
    
	
	
    function searchFunction() {
    	
    	var searchableWord = document.getElementById('textId').value;
    	if(!searchableWord==null || !searchableWord==''){ 
    		window.location.href = '/searchScreen?searchableWord='+searchableWord;
    	}	
    }
    
    



    function onOfFunction(){

    	$('#tdDotId0').show(); 
    	$('#tdDotId1').hide(); 
    	$('#tdDotId2').hide(); 
    	$('#tdDotId3').hide(); 
    	$('#tdDotId4').hide(); 
    	$('#tdDotId5').hide(); 
    	$('#tdDotId6').hide(); 
    	$('#tdDotId7').hide();  

    	
    	$('#developedbId' ).show();
    	$('#2017Td' ).hide(); 
    	$('#2018Td').hide();
    	$('#2019Td' ).hide();
    	$('#2020Td' ).hide();
    	$('#2021Td').hide();
    	$('#2022Td' ).hide();
    	$('#2023Td').hide(); 
    	$('#2024Td').hide(); 
    	$('#2025Td').hide(); 
    	$('#2026Td').hide(); 
    	$('#2027Td').hide(); 
    	
    		
   		setTimeout(function() {
   			showHideSection0();
   			}, 3000);	  
   	
    	
    }
        



    function showHideSection0(){

    	$('#tdDotId0').show(); 
    	$('#tdDotId1').hide(); 
    	$('#tdDotId2').hide(); 
    	$('#tdDotId3').hide(); 
    	$('#tdDotId4').hide(); 
    	$('#tdDotId5').hide(); 
    	$('#tdDotId6').hide(); 
    	$('#tdDotId7').hide();  

    	
    	$('#developedbId' ).hide(); 
    	$('#2017Td' ).show();
    	$('#2018Td').hide();
    	$('#2019Td' ).hide();
    	$('#2020Td' ).hide();
    	$('#2021Td').hide();
    	$('#2022Td' ).hide();
    	$('#2023Td').hide(); 
    	$('#2024Td').hide(); 
    	$('#2025Td').hide(); 
    	$('#2026Td').hide(); 
    	$('#2027Td').hide(); 
    	
    		
   		setTimeout(function() {
   			showHideSection();
   			}, 3000);	  
   	
    	
    }
        
        

    function showHideSection(){
 
    	$('#tdDotId0').hide(); 
    	$('#tdDotId1').show(); 
    	$('#tdDotId2').hide(); 
    	$('#tdDotId3').hide(); 
    	$('#tdDotId4').hide(); 
    	$('#tdDotId5').hide(); 
    	$('#tdDotId6').hide(); 
    	$('#tdDotId7').hide();  

    	
    	$('#developedbId' ).hide();
    	$('#2017Td' ).hide(); 
    	$('#2018Td').show();
    	$('#2019Td' ).hide();
    	$('#2020Td' ).hide();
    	$('#2021Td').hide();
    	$('#2022Td' ).hide();
    	$('#2023Td').hide(); 
    	$('#2024Td').hide(); 
    	$('#2025Td').hide(); 
    	$('#2026Td').hide(); 
    	$('#2027Td').hide(); 
    	
		setTimeout(function() {
			showHideSection1();
			}, 3000);
    	
    }

    function showHideSection1(){
 
    	$('#tdDotId0').hide(); 
    	$('#tdDotId1').hide(); 
    	$('#tdDotId2').show(); 
    	$('#tdDotId3').hide(); 
    	$('#tdDotId4').hide(); 
    	$('#tdDotId5').hide(); 
    	$('#tdDotId6').hide(); 
    	$('#tdDotId7').hide();  

    	
    	$('#developedbId' ).hide();
    	$('#2017Td' ).hide();
    	$('#2018Td').hide();
    	$('#2019Td' ).show();
    	$('#2020Td' ).hide();
    	$('#2021Td').hide();
    	$('#2022Td' ).hide();
    	$('#2023Td').hide();
    	$('#2024Td').hide(); 
    	$('#2025Td').hide(); 
    	$('#2026Td').hide(); 
    	$('#2027Td').hide();
    	
		setTimeout(function() {
			showHideSection2();
			}, 3000);
    	
    }

    function showHideSection2(){
 
    	$('#tdDotId0').hide(); 
    	$('#tdDotId1').hide(); 
    	$('#tdDotId2').hide(); 
    	$('#tdDotId3').show(); 
    	$('#tdDotId4').hide(); 
    	$('#tdDotId5').hide(); 
    	$('#tdDotId6').hide(); 
    	$('#tdDotId7').hide();  

    	
    	$('#developedbId' ).hide();
    	$('#2017Td' ).hide();
    	$('#2018Td').hide();
    	$('#2019Td' ).hide();
    	$('#2020Td' ).show();
    	$('#2021Td').hide();
    	$('#2022Td' ).hide();
    	$('#2023Td').hide();
    	$('#2024Td').hide(); 
    	$('#2025Td').hide(); 
    	$('#2026Td').hide(); 
    	$('#2027Td').hide();
    	
		setTimeout(function() {
			showHideSection3();
			}, 3000);
    	
    }

    function showHideSection3(){
 
    	$('#tdDotId0').hide(); 
    	$('#tdDotId1').hide(); 
    	$('#tdDotId2').hide(); 
    	$('#tdDotId3').hide(); 
    	$('#tdDotId4').show(); 
    	$('#tdDotId5').hide(); 
    	$('#tdDotId6').hide(); 
    	$('#tdDotId7').hide();  

    	
    	$('#developedbId' ).hide();
    	$('#2017Td' ).hide();
    	$('#2018Td').hide();
    	$('#2019Td' ).hide();
    	$('#2020Td' ).hide();
    	$('#2021Td').show();
    	$('#2022Td' ).hide();
    	$('#2023Td').hide();
    	$('#2024Td').hide(); 
    	$('#2025Td').hide(); 
    	$('#2026Td').hide(); 
    	$('#2027Td').hide();
    	
		setTimeout(function() {
			showHideSection4();
			}, 3000);
    	
    }

    function showHideSection4(){
 
    	$('#tdDotId0').hide(); 
    	$('#tdDotId1').hide(); 
    	$('#tdDotId2').hide(); 
    	$('#tdDotId3').hide(); 
    	$('#tdDotId4').hide(); 
    	$('#tdDotId5').show(); 
    	$('#tdDotId6').hide(); 
    	$('#tdDotId7').hide();  

    	
    	$('#developedbId' ).hide();
    	$('#2017Td' ).hide();
    	$('#2018Td').hide();
    	$('#2019Td' ).hide();
    	$('#2020Td' ).hide();
    	$('#2021Td').hide();
    	$('#2022Td' ).show();
    	$('#2023Td').hide();
    	$('#2024Td').hide(); 
    	$('#2025Td').hide(); 
    	$('#2026Td').hide(); 
    	$('#2027Td').hide();
    	
		setTimeout(function() {
			showHideSection5();
			}, 3000);
    	
    }

    function showHideSection5(){
 
    	$('#tdDotId0').hide(); 
    	$('#tdDotId1').hide(); 
    	$('#tdDotId2').hide(); 
    	$('#tdDotId3').hide(); 
    	$('#tdDotId4').hide(); 
    	$('#tdDotId5').hide(); 
    	$('#tdDotId6').hide(); 
    	$('#tdDotId7').show();  

    	
    	$('#developedbId' ).hide();
    	$('#2017Td' ).hide();
    	$('#2018Td').hide();
    	$('#2019Td' ).hide();
    	$('#2020Td' ).hide();
    	$('#2021Td').hide();
    	$('#2022Td' ).hide();
    	$('#2023Td').show();
    	$('#2024Td').hide(); 
    	$('#2025Td').hide(); 
    	$('#2026Td').hide(); 
    	$('#2027Td').hide();
    	
		setTimeout(function() {
			showHideSection6(); 
			}, 3000);  
    	
    }
    function showHideSection6(){
 
    	$('#tdDotId0').hide(); 
    	$('#tdDotId1').hide(); 
    	$('#tdDotId2').hide(); 
    	$('#tdDotId3').hide(); 
    	$('#tdDotId4').hide(); 
    	$('#tdDotId5').hide(); 
    	$('#tdDotId6').hide(); 
    	$('#tdDotId7').show();  

    	$('#developedbId' ).hide();
    	$('#2017Td' ).hide();
    	$('#2018Td').hide();
    	$('#2019Td' ).hide();
    	$('#2020Td' ).hide();
    	$('#2021Td').hide();
    	$('#2022Td' ).hide();
    	$('#2023Td').hide();
    	$('#2024Td').show(); 
    	$('#2025Td').hide(); 
    	$('#2026Td').hide(); 
    	$('#2027Td').hide();
    	
		setTimeout(function() {
			showHideSection7(); 
			}, 3000);  
    	
    }
    function showHideSection7(){
 
    	$('#tdDotId0').hide(); 
    	$('#tdDotId1').hide(); 
    	$('#tdDotId2').hide(); 
    	$('#tdDotId3').hide(); 
    	$('#tdDotId4').hide(); 
    	$('#tdDotId5').hide(); 
    	$('#tdDotId6').hide(); 
    	$('#tdDotId7').show();  

    	
    	$('#developedbId' ).hide();
    	$('#2017Td' ).hide();
    	$('#2018Td').hide();
    	$('#2019Td' ).hide();
    	$('#2020Td' ).hide();
    	$('#2021Td').hide();
    	$('#2022Td' ).hide();
    	$('#2023Td').hide();
    	$('#2024Td').hide(); 
    	$('#2025Td').show(); 
    	$('#2026Td').hide(); 
    	$('#2027Td').hide();
    	
		setTimeout(function() {
			showHideSection8(); 
			}, 3000);  
    	
    }
    
    
    function showHideSection8(){
 
    	$('#tdDotId0').hide(); 
    	$('#tdDotId1').hide(); 
    	$('#tdDotId2').hide(); 
    	$('#tdDotId3').hide(); 
    	$('#tdDotId4').hide(); 
    	$('#tdDotId5').hide(); 
    	$('#tdDotId6').hide(); 
    	$('#tdDotId7').show();  

    	
    	$('#developedbId' ).hide();
    	$('#2017Td' ).hide();
    	$('#2018Td').hide();
    	$('#2019Td' ).hide();
    	$('#2020Td' ).hide();
    	$('#2021Td').hide();
    	$('#2022Td' ).hide();
    	$('#2023Td').hide();
    	$('#2024Td').hide(); 
    	$('#2025Td').hide(); 
    	$('#2026Td').show(); 
    	$('#2027Td').hide();
    	
		setTimeout(function() {
			showHideSection9(); 
			}, 3000);  
    	
    }
    
    function showHideSection9(){
 
    	$('#tdDotId0').hide(); 
    	$('#tdDotId1').hide(); 
    	$('#tdDotId2').hide(); 
    	$('#tdDotId3').hide(); 
    	$('#tdDotId4').hide(); 
    	$('#tdDotId5').hide(); 
    	$('#tdDotId6').hide(); 
    	$('#tdDotId7').show();  

    	
    	$('#developedbId' ).hide();
    	$('#2017Td' ).hide();
    	$('#2018Td').hide();
    	$('#2019Td' ).hide();
    	$('#2020Td' ).hide();
    	$('#2021Td').hide();
    	$('#2022Td' ).hide();
    	$('#2023Td').hide();
    	$('#2024Td').hide(); 
    	$('#2025Td').hide(); 
    	$('#2026Td').hide(); 
    	$('#2027Td').show();
    	
		setTimeout(function() {
			onOfFunction(); 
			}, 3000);  
    	
    }
    
    
    
    
    
    
    
    
	
</script>
</html>