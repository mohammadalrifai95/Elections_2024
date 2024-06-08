<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
 
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

.center {
  margin: auto;
  width: 50%;
  border: 3px solid green;
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
	width: 140px;
	left: 0;
	display: none;
/* 	changehere  */
	width: 300px; 
}



/* Submenu level2 style */ 


.submenu2 {
	position: absolute;
	left: 100%;
	width: 140px;
	top: 0;
	background-color: #2c3e50;
	display: none;
	/* 	changehere  */
	width: 320px;  

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

</style>
<body>


<div style="width: 1250px;
   height: 1250px;  
   position: relative;
   margin-left: auto;
   margin-right: auto;"> 

<!-- class="fixedElement" -->
<div    style="border: 3px solid #73AD21; background-color: #679FAB; width: 1200px; height: 100px; color: white;" >  
	<table style="margin-left: 50px;">            
		<tr>
			<td>            
				<p style=" margin-top: -10px;">  
					<a href="/">   
					<!-- class="circular_image_header" 					 -->
				  		<img src="<c:url value="/resources/images/jordanflagonhand.jpg" />" alt="image"   style="width: 100px; height: 90px; border-radius: 25%; "/> 
					</a>
				</p>
			</td>
			<td style="width: 50px;">
			</td>
			<td style="width: 700px;">        
				<h1 style="padding-bottom:15px; margin-left: 160px;">   
<!-- 					Welcome to Jordan Election Application   -->
					مرحبا بكم في تطبيق الانتخابات الأردنية
				</h1>
				<p style="padding-bottom:15px; margin-left: 300px;"> هذا الموقع غير رسمي </p>
			</td>
			<td style="width: 350px;">
			</td>   
			<td>  
				<h2 style="margin-right: 55px;">  
					<a href="/logoutPage">
						تسجيل 						
					</a>   
				</h2>  
			</td>	
		</tr>
	</table>
</div>


<!-- background-color: #679FAB; -->
<!-- <div style="border:1px solid gray; width: 100%; height:70px; background-color: white">         -->
<!--  background-color: white;  -->
<!-- class="fixedElement" -->
<div    style="background-color: lightgray;  width: 1200px; height: 50px;" >
		<h4 style="margin-left: 30px; ">
				<ul class="menu">  		
					<!--background-color:  #00008B; --> 
				<li >  
					<a href="/english?language=english" style="color: #FF6347; margin-right: 50px;"> 
					  	 English 
					</a>
				 </li>
				  
				  <button id="searchButtonId" type="submit" style="width: 40px; height: 30px; background-color:black;  " onclick="searchFunction()"><i class="fa fa-search" style="color: white; "></i></button>					
				  <input id="textId" type="text" placeholder="..يبحث" name="search2" style="height: 30px; width: 200px;" dir="rtl">
					
<!-- 					<li> -->
<!-- 						<a href="#">List of voters 2020-2024 &#9660</a> -->
<!-- 						<ul class="submenu"> -->
<!-- 							<li> -->
<!-- 								<a href="#">Amman City<i class="arrow right" style="margin-left: 45px;'"></i></a>  -->
<!-- 								<ul class="submenu2">  -->
<!-- 									<li><a href="https://www.iec.jo/sites/default/files/2023-09/01_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D8%A7%D9%84%D8%B9%D8%A7%D8%B5%D9%85%D8%A9_%D8%A7%D9%84%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9_%D8%A7%D9%84%D8%A7%D9%88%D9%84%D9%89.PDF"  target = "_blank">Amman (first district)</a></li> -->
<!-- 									<li><a href="https://www.iec.jo/sites/default/files/2023-09/002_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D8%A7%D9%84%D8%B9%D8%A7%D8%B5%D9%85%D8%A9_%D8%A7%D9%84%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9_%D8%A7%D9%84%D8%AB%D8%A7%D9%86%D9%8A%D8%A9.PDF" target = "_blank">Amman (second district)</a></li> -->
<!-- 									<li><a href="https://www.iec.jo/sites/default/files/2023-09/03_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D8%A7%D9%84%D8%B9%D8%A7%D8%B5%D9%85%D8%A9_%D8%A7%D9%84%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9_%D8%A7%D9%84%D8%AB%D8%A7%D9%84%D8%AB%D8%A9.PDF"   target = "_blank">Amman (third district)</a></li> -->
<!-- 								</ul> -->
<!-- 							</li> -->
<!-- 							<li> -->
<!-- 								<a href="#">Irbid City<i class="arrow right" style="margin-left: 45px;'"></i></a>  -->
<!-- 								<ul class="submenu2">  -->
<!-- 									<li><a href="https://www.iec.jo/sites/default/files/2023-09/04_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D8%A7%D8%B1%D8%A8%D8%AF_%D8%A7%D9%84%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9_%D8%A7%D9%84%D8%A7%D9%88%D9%84%D9%89.PDF"   target = "_blank">Irbid (first district)</a></li> -->
<!-- 									<li><a href="https://www.iec.jo/sites/default/files/2023-09/05_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D8%A7%D8%B1%D8%A8%D8%AF_%D8%A7%D9%84%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9_%D8%A7%D9%84%D8%AB%D8%A7%D9%86%D9%8A%D8%A9.PDF"   target = "_blank">Irbid (Second District)</a></li> -->
<!-- 								</ul> -->
<!-- 							</li> -->

						
<!-- 							<li><a href="https://www.iec.jo/sites/default/files/2023-09/09_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D8%A7%D9%84%D8%B2%D8%B1%D9%82%D8%A7%D8%A1.PDF"   target = "_blank">Zarqa City</a></li> -->
<!-- 							<li><a href="https://www.iec.jo/sites/default/files/2023-09/13_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D8%AC%D8%B1%D8%B4.PDF"   target = "_blank">Jerash</a></li> -->
<!-- 							<li><a href="https://www.iec.jo/sites/default/files/2023-09/11_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D8%A7%D9%84%D8%B7%D9%81%D9%8A%D9%84%D9%87.PDF"   target = "_blank">Tafila</a></li> -->
<!-- 							<li><a href="https://www.iec.jo/sites/default/files/2023-09/15_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9%20%D8%A7%D9%84%D8%B9%D9%82%D8%A8%D9%87.PDF"   target = "_blank">Aqaba</a></li> -->
<!-- 							<li><a href="https://www.iec.jo/sites/default/files/2023-09/07_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D8%A7%D9%84%D9%83%D8%B1%D9%83.PDF"   target = "_blank">Karak</a></li> -->
<!-- 							<li><a href="https://www.iec.jo/sites/default/files/2023-09/16_%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9_%D8%A8%D8%AF%D9%88_%D8%A7%D9%84%D8%B4%D9%85%D8%A7%D9%84.PDF"  target = "_blank">Northern Badia</a></li> -->
<!-- 							<li><a href="https://www.iec.jo/sites/default/files/2023-09/18_%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9_%D8%A8%D8%AF%D9%88_%D8%A7%D9%84%D8%AC%D9%86%D9%88%D8%A8.PDF"   target = "_blank">Southern Badia</a></li> -->
<!-- 							<li><a href="https://www.iec.jo/sites/default/files/2023-09/17_%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9_%D8%A8%D8%AF%D9%88_%D8%A7%D9%84%D9%88%D8%B3%D8%B7.PDF"   target = "_blank">Central Badia</a></li> -->
<!-- 							<li><a href="https://www.iec.jo/sites/default/files/2023-09/12_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D9%85%D8%A3%D8%AF%D8%A8%D8%A7.PDF"   target = "_blank">Madaba</a></li> -->
<!-- 							<li><a href="https://www.iec.jo/sites/default/files/2023-09/08_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D9%85%D8%B9%D8%A7%D9%86.PDF"   target = "_blank">Ma'an</a></li> -->
<!-- 							<li><a href="https://www.iec.jo/sites/default/files/2023-09/14_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D8%B9%D8%AC%D9%84%D9%88%D9%86.PDF"   target = "_blank">Ajloun</a></li> -->
<!-- 							<li><a href="https://www.iec.jo/sites/default/files/2023-09/06_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D8%A7%D9%84%D8%A8%D9%84%D9%82%D8%A7%D8%A1.PDF"   target = "_blank">Balqa</a></li> -->
<!-- 							<li><a href="https://www.iec.jo/sites/default/files/2023-09/10_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D8%A7%D9%84%D9%85%D9%81%D8%B1%D9%82.PDF"   target = "_blank">Mafraq</a></li> -->
					
<!-- 						</ul> -->
<!-- 					</li> -->
					
<!-- 					<li> -->
<!-- 						<a href="#">قائمة المرشحين &#9660</a> -->
<!-- 						<ul class="submenu"> -->
<!-- 							<li> -->
<!-- 								<a href="#"> &#9668; عمان <i style="margin-left: 45px;'"></i></a>  -->
<!-- 								<ul class="submenu2">  -->
<!-- 									<li><a href="https://www.iec.jo/sites/default/files/2020-10/%D8%A7%D9%84%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9%20%D8%A7%D9%84%D8%A7%D9%88%D9%84%D9%89%20%D8%A7%D9%84%D8%B9%D8%A7%D8%B5%D9%85%D8%A9%20-%202020%20-%20%D8%A7%D9%84%D8%B3%D8%AC%D9%84%D8%A7%D8%AA%20%D8%A7%D9%84%D9%86%D9%87%D8%A7%D8%A6%D9%8A%D8%A9.pdf"  target = "_blank">Amman (first district)</a></li> -->
<!-- 									<li><a href="https://www.iec.jo/sites/default/files/2020-10/%D8%A7%D9%84%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9%20%D8%A7%D9%84%D8%AB%D8%A7%D9%86%D9%8A%D8%A9%20%D8%A7%D9%84%D8%B9%D8%A7%D8%B5%D9%85%D8%A9%20-%202020%20-%20%D8%A7%D9%84%D8%B3%D8%AC%D9%84%D8%A7%D8%AA%20%D8%A7%D9%84%D9%86%D9%87%D8%A7%D8%A6%D9%8A%D8%A9.pdf" target = "_blank">Amman (second district)</a></li> -->
<!-- 									<li><a href="https://www.iec.jo/sites/default/files/2020-10/%D8%A7%D9%84%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9%20%D8%A7%D9%84%D8%AB%D8%A7%D9%84%D8%AB%D8%A9%20%D8%A7%D9%84%D8%B9%D8%A7%D8%B5%D9%85%D8%A9%20-%202020%20-%20%D8%A7%D9%84%D8%B3%D8%AC%D9%84%D8%A7%D8%AA%20%D8%A7%D9%84%D9%86%D9%87%D8%A7%D8%A6%D9%8A%D8%A9.pdf"   target = "_blank">Amman (third district)</a></li> -->
<!-- 									<li><a href="https://www.iec.jo/sites/default/files/2020-10/%D8%A7%D9%84%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9%20%D8%A7%D9%84%D8%B1%D8%A7%D8%A8%D8%B9%D8%A9%20%D8%A7%D9%84%D8%B9%D8%A7%D8%B5%D9%85%D8%A9%20-%202020%20-%20%D8%A7%D9%84%D8%B3%D8%AC%D9%84%D8%A7%D8%AA%20%D8%A7%D9%84%D9%86%D9%87%D8%A7%D8%A6%D9%8A%D8%A9.pdf"   target = "_blank">Amman (4th district)</a></li> -->
<!-- 									<li><a href="https://www.iec.jo/sites/default/files/2020-10/%D8%A7%D9%84%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9%20%D8%A7%D9%84%D8%AE%D8%A7%D9%85%D8%B3%D8%A9%20%D8%A7%D9%84%D8%B9%D8%A7%D8%B5%D9%85%D8%A9%20-%202020%20-%20%D8%A7%D9%84%D8%B3%D8%AC%D9%84%D8%A7%D8%AA%20%D8%A7%D9%84%D9%86%D9%87%D8%A7%D8%A6%D9%8A%D8%A9.pdf"   target = "_blank">Amman (fifth district)</a></li> -->
<!-- 								</ul> -->
<!-- 							</li> -->
<!-- 							<li> -->
<!-- 								<a href="#"> &#9668; اربد <i  style="margin-left: 45px;'"></i></a>  -->
<!-- 								<ul class="submenu2">  -->
<!-- 									<li><a href="https://www.iec.jo/sites/default/files/2020-10/%D8%A7%D9%84%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9%20%D8%A7%D9%84%D8%A7%D9%88%D9%84%D9%89%20%D8%A7%D8%B1%D8%A8%D8%AF%20-%202020%20-%20%D8%A7%D9%84%D8%B3%D8%AC%D9%84%D8%A7%D8%AA%20%D8%A7%D9%84%D9%86%D9%87%D8%A7%D8%A6%D9%8A%D8%A9.pdf"   target = "_blank">Irbid (first district)</a></li> -->
<!-- 									<li><a href="https://www.iec.jo/sites/default/files/2020-10/%D8%A7%D9%84%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9%20%D8%A7%D9%84%D8%AB%D8%A7%D9%86%D9%8A%D8%A9%20%D8%A7%D8%B1%D8%A8%D8%AF%20-%202020%20-%20%D8%A7%D9%84%D8%B3%D8%AC%D9%84%D8%A7%D8%AA%20%D8%A7%D9%84%D9%86%D9%87%D8%A7%D8%A6%D9%8A%D8%A9.pdf"   target = "_blank">Irbid (Second District)</a></li> -->
<!-- 									<li><a href="https://www.iec.jo/sites/default/files/2020-10/%D8%A7%D9%84%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9%20%D8%A7%D9%84%D8%AB%D8%A7%D9%84%D8%AB%D8%A9%20%D8%A7%D8%B1%D8%A8%D8%AF%20-%202020%20-%20%D8%A7%D9%84%D8%B3%D8%AC%D9%84%D8%A7%D8%AA%20%D8%A7%D9%84%D9%86%D9%87%D8%A7%D8%A6%D9%8A%D8%A9.pdf"   target = "_blank">Irbid (Third District)</a></li> -->
<!-- 									<li><a href="https://www.iec.jo/sites/default/files/2020-10/%D8%A7%D9%84%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9%20%D8%A7%D9%84%D8%B1%D8%A7%D8%A8%D8%B9%D8%A9%20%D8%A7%D8%B1%D8%A8%D8%AF%20-%202020%20-%20%D8%A7%D9%84%D8%B3%D8%AC%D9%84%D8%A7%D8%AA%20%D8%A7%D9%84%D9%86%D9%87%D8%A7%D8%A6%D9%8A%D8%A9.pdf"   target = "_blank">Irbid (Fourth District)</a></li> -->
<!-- 								</ul> -->
<!-- 							</li> -->
<!-- 							<li> -->
<!-- 								<a href="#">الزرقاء<i  style="margin-left: 45px;'"></i></a>  -->
<!-- 								<ul class="submenu2">  -->
<!-- 									<li><a href="https://origin.iec.jo/sites/default/files/2020-10/%D8%A7%D9%84%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9%20%D8%A7%D9%84%D8%A7%D9%88%D9%84%D9%89%20%D8%A7%D9%84%D8%B2%D8%B1%D9%82%D8%A7%D8%A1%20-%202020%20-%20%D8%A7%D9%84%D8%B3%D8%AC%D9%84%D8%A7%D8%AA%20%D8%A7%D9%84%D9%86%D9%87%D8%A7%D8%A6%D9%8A%D8%A9.pdf"   target = "_blank">Zarqa (first district)</a></li> -->
<!-- 									<li><a href="https://www.iec.jo/sites/default/files/2020-10/%D8%A7%D9%84%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9%20%D8%A7%D9%84%D8%AB%D8%A7%D9%86%D9%8A%D8%A9%20%D8%A7%D9%84%D8%B2%D8%B1%D9%82%D8%A7%D8%A1-%202020%20-%20%D8%A7%D9%84%D8%B3%D8%AC%D9%84%D8%A7%D8%AA%20%D8%A7%D9%84%D9%86%D9%87%D8%A7%D8%A6%D9%8A%D8%A9.pdf"   target = "_blank">Zarqa (Second District)</a></li> -->
<!-- 								</ul> -->
<!-- 							</li> -->
						
<!-- 							<li><a href="https://www.iec.jo/sites/default/files/2020-10/%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9%20%D8%AC%D8%B1%D8%B4%20-%202020%20-%20%D8%A7%D9%84%D8%B3%D8%AC%D9%84%D8%A7%D8%AA%20%D8%A7%D9%84%D9%86%D9%87%D8%A7%D8%A6%D9%8A%D8%A9.pdf"   target = "_blank">جرش</a></li> -->
<!-- 							<li><a href="https://www.iec.jo/sites/default/files/2020-10/%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9%20%D8%A7%D9%84%D8%B7%D9%81%D9%8A%D9%84%D8%A9%20-%202020%20-%20%D8%A7%D9%84%D8%B3%D8%AC%D9%84%D8%A7%D8%AA%20%D8%A7%D9%84%D9%86%D9%87%D8%A7%D8%A6%D9%8A%D8%A9.pdf"   target = "_blank">الطفيلة</a></li> -->
<!-- 							<li><a href="https://www.iec.jo/sites/default/files/2020-10/%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9%20%D8%A7%D9%84%D8%B9%D9%82%D8%A8%D8%A9%20-%202020%20-%20%D8%A7%D9%84%D8%B3%D8%AC%D9%84%D8%A7%D8%AA%20%D8%A7%D9%84%D9%86%D9%87%D8%A7%D8%A6%D9%8A%D8%A9.pdf"   target = "_blank">العقبة</a></li> -->
<!-- 							<li><a href="https://www.iec.jo/sites/default/files/2020-08/%D8%A7%D9%84%D9%83%D8%B1%D9%83_%D8%A7%D9%84%D8%A7%D8%B3%D8%AA%D8%AD%D9%82%D8%A7%D9%82_%D8%A7%D9%84%D8%AF%D8%B3%D8%AA%D9%88%D8%B1%D9%8A_%D8%A7%D9%84%D8%A7%D9%86%D8%AA%D8%AE%D8%A7%D8%A8%D8%A7%D8%AA%20%D8%A7%D9%84%D9%86%D9%8A%D8%A7%D8%A8%D9%8A%D8%A9_2020.pdf"   target = "_blank">الكرك</a></li> -->
<!-- 							<li><a href="https://www.iec.jo/sites/default/files/2020-10/%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9%20%D8%A8%D8%AF%D9%88%20%D8%A7%D9%84%D8%B4%D9%85%D8%A7%D9%84%20-%202020%20-%20%D8%A7%D9%84%D8%B3%D8%AC%D9%84%D8%A7%D8%AA%20%D8%A7%D9%84%D9%86%D9%87%D8%A7%D8%A6%D9%8A%D8%A9.pdf"   target = "_blank">البادية الشمالية</a></li> -->
<!-- 							<li><a href="https://www.iec.jo/sites/default/files/2020-10/%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9%20%D8%A8%D8%AF%D9%88%20%D8%A7%D9%84%D8%AC%D9%86%D9%88%D8%A8%20-%202020%20-%20%D8%A7%D9%84%D8%B3%D8%AC%D9%84%D8%A7%D8%AA%20%D8%A7%D9%84%D9%86%D9%87%D8%A7%D8%A6%D9%8A%D8%A9.pdf"   target = "_blank">البادية الجنوبية</a></li> -->
<!-- 							<li><a href="https://www.iec.jo/sites/default/files/2020-10/%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9%20%D8%A8%D8%AF%D9%88%20%D8%A7%D9%84%D9%88%D8%B3%D8%B7%20-%202020%20-%20%D8%A7%D9%84%D8%B3%D8%AC%D9%84%D8%A7%D8%AA%20%D8%A7%D9%84%D9%86%D9%87%D8%A7%D8%A6%D9%8A%D8%A9.pdf"   target = "_blank">البادية الوسطى</a></li> -->
<!-- 							<li><a href="https://www.iec.jo/sites/default/files/2020-10/%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9%20%D9%85%D8%A3%D8%AF%D8%A8%D8%A7%20-%202020%20-%20%D8%A7%D9%84%D8%B3%D8%AC%D9%84%D8%A7%D8%AA%20%D8%A7%D9%84%D9%86%D9%87%D8%A7%D8%A6%D9%8A%D8%A9.pdf"   target = "_blank">مادبا</a></li> -->
<!-- 							<li><a href="https://www.iec.jo/sites/default/files/2020-10/%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9%20%D9%85%D8%B9%D8%A7%D9%86%20-%202020%20-%20%D8%A7%D9%84%D8%B3%D8%AC%D9%84%D8%A7%D8%AA%20%D8%A7%D9%84%D9%86%D9%87%D8%A7%D8%A6%D9%8A%D8%A9.pdf"   target = "_blank">معان</a></li> -->
<!-- 							<li><a href="https://www.iec.jo/sites/default/files/2020-10/%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9%20%D8%B9%D8%AC%D9%84%D9%88%D9%86%20%D8%A7%D9%84%D9%85%D9%88%D9%82%D8%B9%20%D8%A7%D9%84%D8%A7%D9%84%D9%83%D8%AA%D8%B1%D9%88%D9%86%D9%8A-%D9%85%D8%B8%D8%BA%D9%88%D8%B7.pdf"   target = "_blank">عجلون</a></li> -->
<!-- 							<li><a href="https://www.iec.jo/sites/default/files/2020-10/%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9%20%D8%A7%D9%84%D8%A8%D9%84%D9%82%D8%A7%D8%A1%20%D8%A7%D9%84%D9%85%D9%88%D9%82%D8%B9%20%D8%A7%D9%84%D8%A7%D9%84%D9%83%D8%AA%D8%B1%D9%88%D9%86%D9%8A-%D9%85%D8%B8%D8%BA%D9%88%D8%B7.pdf"   target = "_blank">البلقاء</a></li> -->
<!-- 							<li><a href="https://www.iec.jo/sites/default/files/2020-10/%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9%20%D8%A7%D9%84%D9%85%D9%81%D8%B1%D9%82%20-%202020%20-%20%D8%A7%D9%84%D8%B3%D8%AC%D9%84%D8%A7%D8%AA%20%D8%A7%D9%84%D9%86%D9%87%D8%A7%D8%A6%D9%8A%D8%A9.pdf"   target = "_blank">المفرق</a></li> -->
					
<!-- 						</ul> -->
<!-- 					</li>					 -->
 				
 					<li style="float:right; margin-right: 40px;">     
						<a href="#">
						&#9660 معلومات عنا
						</a>
						<ul class="submenu">
							<li >
								<a href="/abouttheapplication">
									معلومات حول التطبيق
								</a>
							</li> 
						</ul>
					 </li>
					
					<li style="float:right;">
						<a href="#">&#9660 الدوائر الانتخابية   </a>
						<ul class="submenu">
							<li>
								<a href="/electoralDistricts">
									الدوائر الانتخابية الجديدة 
								</a>
							</li>
						</ul>
					</li>
																			 
					<li style="float:right;"><a href="#">&#9660 قائمة النواب الحاليين   </a>
						<ul class="submenu">
							<li><a href="/ListOfMembers">
							قائمه اسماء النواب الحاليين 
							</a></li>
						</ul>
					</li>
																								 
					 
					<li style="float:right;">
						<a href="#">&#9660 قائمه المرشحين  </a>
						<ul class="submenu" >
							<li >
								<a href="#"> &#9668; عمان <i style="margin-left: 45px;'"></i></a> 
								<!-- class="submenu2" -->
								<ul class="submenu2">  
									<li><a href="/ammanFirstDistrict"  target = "_blank">عمان (المنطقة الأولى)</a></li>
									<li><a href="https://www.iec.jo/sites/default/files/2023-09/002_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D8%A7%D9%84%D8%B9%D8%A7%D8%B5%D9%85%D8%A9_%D8%A7%D9%84%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9_%D8%A7%D9%84%D8%AB%D8%A7%D9%86%D9%8A%D8%A9.PDF" target = "_blank">عمان (المنطقة الثانية)</a></li>
									<li><a href="https://www.iec.jo/sites/default/files/2023-09/03_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D8%A7%D9%84%D8%B9%D8%A7%D8%B5%D9%85%D8%A9_%D8%A7%D9%84%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9_%D8%A7%D9%84%D8%AB%D8%A7%D9%84%D8%AB%D8%A9.PDF"   target = "_blank">عمان (المنطقة الثالثة)</a></li>
								</ul>
							</li>
							<li>
								<a href="#"> &#9668; اربد <i style="margin-left: 45px;'"></i></a> 
								<ul class="submenu2"> 
									<li><a href="#"   target = "_blank">إربد (المنطقة الأولى)</a></li>
									<li><a href="https://www.iec.jo/sites/default/files/2023-09/05_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D8%A7%D8%B1%D8%A8%D8%AF_%D8%A7%D9%84%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9_%D8%A7%D9%84%D8%AB%D8%A7%D9%86%D9%8A%D8%A9.PDF"   target = "_blank">اربد (المنطقة الثانية)</a></li>
								</ul>
							</li>
						
							<li><a href="https://www.iec.jo/sites/default/files/2023-09/09_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D8%A7%D9%84%D8%B2%D8%B1%D9%82%D8%A7%D8%A1.PDF"   target = "_blank">الزرقاء</a></li>
							<li><a href="https://www.iec.jo/sites/default/files/2023-09/13_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D8%AC%D8%B1%D8%B4.PDF"   target = "_blank">جرش</a></li>
							<li><a href="https://www.iec.jo/sites/default/files/2023-09/11_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D8%A7%D9%84%D8%B7%D9%81%D9%8A%D9%84%D9%87.PDF"   target = "_blank">الطفيلة</a></li>
							<li><a href="https://www.iec.jo/sites/default/files/2023-09/15_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9%20%D8%A7%D9%84%D8%B9%D9%82%D8%A8%D9%87.PDF"   target = "_blank">العقبة</a></li>
							<li><a href="https://www.iec.jo/sites/default/files/2023-09/07_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D8%A7%D9%84%D9%83%D8%B1%D9%83.PDF"   target = "_blank">الكرك</a></li>
							<li><a href="https://www.iec.jo/sites/default/files/2023-09/16_%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9_%D8%A8%D8%AF%D9%88_%D8%A7%D9%84%D8%B4%D9%85%D8%A7%D9%84.PDF"  target = "_blank">البادية الشمالية</a></li>
							<li><a href="https://www.iec.jo/sites/default/files/2023-09/18_%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9_%D8%A8%D8%AF%D9%88_%D8%A7%D9%84%D8%AC%D9%86%D9%88%D8%A8.PDF"   target = "_blank">البادية الجنوبية</a></li>
							<li><a href="https://www.iec.jo/sites/default/files/2023-09/17_%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9_%D8%A8%D8%AF%D9%88_%D8%A7%D9%84%D9%88%D8%B3%D8%B7.PDF"   target = "_blank">البادية الوسطى</a></li>
							<li><a href="https://www.iec.jo/sites/default/files/2023-09/12_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D9%85%D8%A3%D8%AF%D8%A8%D8%A7.PDF"   target = "_blank">مادبا</a></li>
							<li><a href="https://www.iec.jo/sites/default/files/2023-09/08_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D9%85%D8%B9%D8%A7%D9%86.PDF"   target = "_blank">معان</a></li>
							<li><a href="https://www.iec.jo/sites/default/files/2023-09/14_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D8%B9%D8%AC%D9%84%D9%88%D9%86.PDF"   target = "_blank">عجلون</a></li>
							<li><a href="https://www.iec.jo/sites/default/files/2023-09/06_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D8%A7%D9%84%D8%A8%D9%84%D9%82%D8%A7%D8%A1.PDF"   target = "_blank">البلقاء</a></li>
							<li><a href="https://www.iec.jo/sites/default/files/2023-09/10_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D8%A7%D9%84%D9%85%D9%81%D8%B1%D9%82.PDF"   target = "_blank">المفرق</a></li>
					
						</ul>
					</li>

					

					
					

 
				</ul>
		</h4>
</div>			

<!-- background-color: lightgray; -->
<!-- background-color: #FFFFF9; -->
<%--background-image:url(<c:url value='/resources/images/jordanMap.png' />) --%>
<div  id="englishDiv" style=" background-color: lightgray; padding-top: 1px; width: 1200px;">        

  
<%-- background-image:url(<c:url value='/resources/images/jordanMap2.jpg' />)   --%>
  <div style="border:1px solid gray; width: 100%; padding-top: 1px;" >
	<c:forEach items="${candidateDataList}" var="candidateData">
		<div style="padding-left: 250px; display:none;" id="${candidateData.index}" >
<%-- 		${candidateData.index}  --%>
<!-- 			<table style="width: 100%;  padding-bottom: 50px;"> -->
<!-- 				<tr> -->
<!-- 					<td> -->
<!-- 						<label style="font-size: 25px; font-weight: bold; margin-left: 400px;"> -->
<!-- 							تفاصيل المرشح -->
<!-- 						</label> -->
<!-- 					</td> -->
<!-- 				</tr> -->
<!-- 			</table> -->
			<table style="width: 20px;">
				<tr>
					<td></td>
				</tr>
			</table>
  			<table style="width: 1100px; text-align: center" id="${column.status.index}">
				<tr>
					<td>
						<table style="border-collapse: separate;border-spacing: 0 1em; width: 400px; ">
							<tr>
								<td>
									<a href="/SeeListOfVoters?userName=${candidateData.userData.userName}&password=${candidateData.userData.password}" style="font-size: 20px; margin-left: 1px;">
									<button style="font-size: 30px;  background-color: blue;color: white; width: 50px; height:50px; margin-left: 10px;" >${candidateData.numberOfVotes}</button>
									مجموع الأصوات
									</a> 
								</td>
							</tr>
							<tr>
								<td>
									<c:choose>
									    <c:when test="${empty candidateData.base64image}">
									    	<img src="<c:url value="/resources/images/candidateDefault.png" />" alt="image"  style="width: 300px; height: 300px;"/>
									    </c:when>    
									    <c:otherwise>
									    	<img alt="img" src="data:image/png;jpg;jpeg;charset=utf-8;base64,${candidateData.base64image}" style="width: 300px; height: 300px;"/>
									    </c:otherwise>
									</c:choose>
								</td>
							</tr>
							<tr>
								<td><p style="margin-left: 40px; font-size: 20px;"> ${candidateData.fullName}</p></td>
							</tr>
						</table>
					</td>
					<td> 
						<table style="margin-top: -200px; padding-top: 1px; padding-right: 200px; font-size: 25px;">
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
		      
<!--  		 <h3 style="margin-left: 50px; padding-top: 90px;" >Welcome to Jordan Election Application </h3> -->
<!-- 		<table style="  color: #00008B; padding-left: 400px;" >      -->
<!-- 			<tr > -->
<!--  				style="display:none;" -->
<!-- 				<td class="imageContainer" >  -->
<!-- 					<a href="#">  -->
<%-- 						<c:choose> --%>
<%-- 						    <c:when test="${empty candidateData.base64image}"> --%>
<%-- 						    	<img src="<c:url value="/resources/images/candidateDefault.png" />" alt="image"  style="width: 300px; height: 300px;"/> --%>
<%-- 						    </c:when>     --%>
<%-- 						    <c:otherwise> --%>
<%-- 						    	<img alt="img" src="data:image/png;jpg;jpeg;charset=utf-8;base64,${candidateData.base64image}" style="width: 300px; height: 300px;"/> --%>
<%-- 						    </c:otherwise> --%>
<%-- 						</c:choose>  --%>
<!-- 					</a>	 -->
<!-- 				</td> -->
<!-- 			</tr> -->
<!-- 		</table> -->

	</div>
		
		
		
		
		
		
		
		<div style="border:1px solid gray; width: 100%;" >
		<!--   table1    -->
		<table style="  color: #00008B;" >     
			<tr>
 				<!--style="display:none;" -->
				<td class="imageContainer" id="developedbId" > 
					<a href="#"> 
						<p style="margin-left: 80px; font-size: 70px; color: green;">
						<img src="<c:url value="/resources/images/modrinization.png" />" alt="image"  style="width:782px; height: 386px; "/> 
						</p>
					</a>	
				</td>
				<td class="imageContainer" id="2017Td"  style="display:none;">
<!-- 					<a href="/wheats">  -->
					<a href="#"> 
						<p style="margin-left: 80px; font-size: 70px; color: green;">
						<img src="<c:url value="/resources/images/jordan-vote-concept-man-hand-ballot-box-election-day-jordan-flag-vector.jpg" />" alt="image"  style="width:782px; height: 386px; " /> 
						</p>
					</a>	
				</td>
				<td class="imageContainer" id="2018Td"  style="display:none;">
					<a href="#">
						<p style="margin-left: 80px; font-size: 70px; color: blue;">
<!-- 						jordainainvoteforthenation.jpg -->
						<img src="<c:url value="/resources/images/femaleCandidate.png" />" alt="image" style="width:782px; height: 386px; "/> 
						</p>	
					</a>
					 		
				</td>
				<td  class="imageContainer" id="2019Td"  style="display:none;">
					<a href="#">
						<p style="margin-left: 80px; font-size: 70px; color: red">
						<img src="<c:url value="/resources/images/jordanammanwithflag.jpg" />" alt="image"   style="width:695px; height: 371px; " />
<!-- 						</p> -->
						</p>
					</a>
				</td>
				<td  class="imageContainer" id="2020Td"  style="display:none;">
					<a href="#">
						<p style="margin-left: 80px; font-size: 70px; color: yellow">
						<img src="<c:url value="/resources/images/kingAbdullahSpeech.jpg" />" alt="image"  style="width:750px; height: 370px; "  />
<!-- 						</p> -->
						</p>
					</a>
				</td>
				 
				<td  class="imageContainer" id="2021Td"  style="display:none;">
					<a href="#">
						<p style="margin-left: 80px; font-size: 70px; color: brown;">
							<img src="<c:url value="/resources/images/jordanparlamiante.jpg" />" alt="image"  style="width:780px; height: 380px; "  />
						</p>
					</a>
				</td>
				<td  class="imageContainer" id="2022Td"  style="display:none;">
					<a href="#">
						<p style="margin-left: 80px; font-size: 70px; color: orange;">
						<img src="<c:url value="/resources/images/jordanflagonhand.jpg" />" alt="image"   style="width:780px; height: 400px; " />
						</p>
					</a>
				</td>
				<td  class="imageContainer" id="2023Td"  style="display:none;">
					<a href="#">
						<p style="margin-left: 80px; font-size: 70px; color: black;">
						<img src="<c:url value="/resources/images/jordanmap.jpg" />" alt="image" style="width:780px; height: 400px; "    />
						</p>
					</a>
				</td>
				<td  class="imageContainer" id="2024Td"  style="display:none;">
					<a href="#">
						<p style="margin-left: 80px; font-size: 70px; color: black;">
						<img src="<c:url value="/resources/images/jordanonthemap.jpg" />" alt="image" style="width:780px; height: 400px; "    />
						</p>
					</a>
				</td>
				<td  class="imageContainer" id="2025Td"  style="display:none;">
					<a href="#">
						<p style="margin-left: 80px; font-size: 70px; color: black;">
						<img src="<c:url value="/resources/images/jordanonthemap2.jpg" />" alt="image" style="width:780px; height: 400px; "    />
						</p>
					</a>
				</td>
				<td  class="imageContainer" id="2026Td"  style="display:none;">
					<a href="#">
						<p style="margin-left: 80px; font-size: 70px; color: black;">
						<img src="<c:url value="/resources/images/JORDAN-ELECTION-PARLIAMENT-RESULTS.jpg" />" alt="image" style="width:780px; height: 400px; "    />
						</p>
					</a>
				</td>
				<td  class="imageContainer" id="2027Td"  style="display:none;">
					<a href="#">
						<p style="margin-left: 80px; font-size: 70px; color: black;">
						<img src="<c:url value="/resources/images/developedby.jpg" />" alt="image" style="width:782px; height: 386px; "    />
						</p>
					</a>
				</td>
				 
			</tr>
		</table>
</div>





  <div style="border:1px solid gray; width: 100%;" >
  	<br /> 
		<table style="  color: #00008B;" >     
			<tr>
				<td class="imageContainer" id=""> 
					<a href="#"> 
						<p style="margin-left: 80px; font-size: 70px; color: green;">
						<img src="<c:url value="/resources/images/rules.png" />" alt="image"  style="width:1100px; height: 290px; "/> 
						</p>
					</a>	
				</td>
			</tr>
		</table>
		<table style="  color: #00008B;" >     
			<tr>
				<td class="imageContainer" id=""> 
					<a href="#"> 
						<p style="margin-left: 80px; font-size: 70px; color: green;">
						<img src="<c:url value="/resources/images/fourMembersNames.png" />" alt="image"  style="width:1100px; height: 353px; "/> 
						</p>
					</a>	
				</td>
			</tr>
		</table>

		<table style="  color: #00008B;" >     
			<tr>
				<td class="imageContainer" id=""> 
					<a href="#"> 
						<p style="margin-left: 80px; font-size: 70px; color: green;">
						<img src="<c:url value="/resources/images/modrinization.png" />" alt="image"  style="width:1100px; height: 353px; "/> 
						</p>
					</a>	
				</td>
			</tr>
		</table>
		
  	<br /> 
		<table style="  color: #00008B;" >     
			<tr>
				<td class="imageContainer" id=""> 
					<a href="#"> 
						<p style="margin-left: 80px; font-size: 70px; color: green;">
						<img src="<c:url value="/resources/images/developedby.jpg" />" alt="image"  style="width:782px; height: 386px; "/> 
						</p>
					</a>	
				</td>
			</tr>
		</table>
		

<p>
 	<a href="/" style="font-weight: bold;color: white;"> Home</a>
 	<br /> 
	 <a href="" style="font-weight: bold; color: white;"> Contact</a>   
	 <a target = "_blank" href="https://www.youtube.com/playlist?list=PLP-mhFFMWT9IaIU_Er99PVJq3Iq7pB4oH" style=" margin-left: 1000px;">   
	 	<img src="<c:url value="/resources/images/youtub.gif" />" alt="image" class="circular_image_header"   style="width: 60px; height: 40px;"/> 
	</a>
	<img src="<c:url value="/resources/images/facebook.gif" />" alt="image" class="circular_image_header"   style="width: 60px; height: 40px;"/> 
</p>
<p style="margin-top: 50px;"><span style="font-size: 20px; font-weight: bold;">Developed by: </span>Mohammad Alrifai</p> </p></p>		
	</div>
				
	
</div>




</div> 
</body>



<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
<script type="text/javascript">

// $('#candidate1Id' ).show();

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
    
    
    window.onload = function() {
    	
//     	$('#candidate1Id' ).show();
    	
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