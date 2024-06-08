<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
 
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>




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
/*   width: 100px; */
/*   height: 100px; */
/*   border-radius: 25%;  */
/*   overflow: hidden; */
/*   background-color: blue; */
  /* commented for demo
  float: left;
  margin-left: 125px;
  margin-top: 20px;
  */
  
  /*for demo*/
/*   display:inline-block; */
/*   vertical-align:middle; */
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
}


.menu li {
	position: relative;
	

}

.menu a {
	/* change here */ 
	text-decoration: none;
/* 	color: #000080; */
	color: black; 
	background-color: white;   
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
	
}


/* Show menu on hover */

.menu li:hover > .submenu {  
	display:block; 
	
}

.submenu li:hover .submenu2 {
	display:block;
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

</style>
<body>
<div style="width: 1250px;
   height: 1250px;  
   position: relative;
   margin-left: auto;
   margin-right: auto;"> 
   
<div style="margin: auto; width: 1500px;"> 
<!-- class="fixedElement" -->
<div    style="border: 3px solid #73AD21; background-color: #679FAB; width: 1200px; height: 100px; color: white;" >  
	<table style="margin-left: 50px;">            
		<tr>
			<td>            
				<p style=" margin-top: 1px;">  
					<a href="/">   
					<!-- removed class="circular_image_header" added border-radius: 25%;  -->
				  		<img src="<c:url value="/resources/images/jordanflagonhand.jpg" />" alt="image"   style="width: 100px; height: 90px; border-radius: 25%; "/>
					</a>
				</p>
			</td>
			<td style="width: 50px;">
			</td>
			<td style="width: 500px;">        
				<h2 style=" padding-bottom:15px; margin-left: 220px;">
					Election of Jordan  
				</h2>
				<p style="padding-bottom:15px; margin-left: 250px;"> This site is unofficial </p>
				
			</td>
			<td style="width: 350px;">
			</td>   
			<td>  
				<h5 style="font-size: 18px;">  
					<a href="/logoutPage">Register</a>   
				</h5>  
			</td>   
			
		</tr>
	</table>
</div>

<!-- class="fixedElement" -->
<div    style=" background-color: white;  width: 1200px; height: 100px; " >
		<h4 style="margin-left: 30px; ">
				<ul class="menu">  						
					<li>
						<a href="#">About Us &#9660</a>
						<ul class="submenu">
							<li><a href="/abouttheapplication">About the application</a></li> 
<!-- 							<li><a href="/corporatesustainability">Corporate Sustainability</a></li>   -->
<!-- 							<li><a href="/awards">Awards</a></li>   -->
						</ul>
					</li>


					<li><a href="#">Electoral districts &#9660</a>
						<ul class="submenu">
							<li><a href="/electoralDistricts">New Electoral districts </a></li>
						</ul>
					</li>
					
					<li><a href="#">List of members &#9660</a>
						<ul class="submenu">
							<li><a href="/ListOfMembers">List of parliament members </a></li>
						</ul>
					</li>
					
<!-- 					<li> -->
<!-- 						<a href="#">List of voters 2016-2020 &#9660</a> -->
<!-- 						<ul class="submenu"> -->
<!-- 							<li> -->
<!-- 								<a href="#">Amman City<i class="arrow right" style="margin-left: 45px;'"></i></a>  -->
<!-- 								<ul class="submenu2">  -->
<!-- 									<li><a href="https://www.iec.jo/sites/default/files/2020-10/%D8%A7%D9%84%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9%20%D8%A7%D9%84%D8%A7%D9%88%D9%84%D9%89%20%D8%A7%D9%84%D8%B9%D8%A7%D8%B5%D9%85%D8%A9%20-%202020%20-%20%D8%A7%D9%84%D8%B3%D8%AC%D9%84%D8%A7%D8%AA%20%D8%A7%D9%84%D9%86%D9%87%D8%A7%D8%A6%D9%8A%D8%A9.pdf"  target = "_blank">Amman (first district)</a></li> -->
<!-- 									<li><a href="https://www.iec.jo/sites/default/files/2020-10/%D8%A7%D9%84%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9%20%D8%A7%D9%84%D8%AB%D8%A7%D9%86%D9%8A%D8%A9%20%D8%A7%D9%84%D8%B9%D8%A7%D8%B5%D9%85%D8%A9%20-%202020%20-%20%D8%A7%D9%84%D8%B3%D8%AC%D9%84%D8%A7%D8%AA%20%D8%A7%D9%84%D9%86%D9%87%D8%A7%D8%A6%D9%8A%D8%A9.pdf" target = "_blank">Amman (second district)</a></li> -->
<!-- 									<li><a href="https://www.iec.jo/sites/default/files/2020-10/%D8%A7%D9%84%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9%20%D8%A7%D9%84%D8%AB%D8%A7%D9%84%D8%AB%D8%A9%20%D8%A7%D9%84%D8%B9%D8%A7%D8%B5%D9%85%D8%A9%20-%202020%20-%20%D8%A7%D9%84%D8%B3%D8%AC%D9%84%D8%A7%D8%AA%20%D8%A7%D9%84%D9%86%D9%87%D8%A7%D8%A6%D9%8A%D8%A9.pdf"   target = "_blank">Amman (third district)</a></li> -->
<!-- 									<li><a href="https://www.iec.jo/sites/default/files/2020-10/%D8%A7%D9%84%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9%20%D8%A7%D9%84%D8%B1%D8%A7%D8%A8%D8%B9%D8%A9%20%D8%A7%D9%84%D8%B9%D8%A7%D8%B5%D9%85%D8%A9%20-%202020%20-%20%D8%A7%D9%84%D8%B3%D8%AC%D9%84%D8%A7%D8%AA%20%D8%A7%D9%84%D9%86%D9%87%D8%A7%D8%A6%D9%8A%D8%A9.pdf"   target = "_blank">Amman (4th district)</a></li> -->
<!-- 									<li><a href="https://www.iec.jo/sites/default/files/2020-10/%D8%A7%D9%84%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9%20%D8%A7%D9%84%D8%AE%D8%A7%D9%85%D8%B3%D8%A9%20%D8%A7%D9%84%D8%B9%D8%A7%D8%B5%D9%85%D8%A9%20-%202020%20-%20%D8%A7%D9%84%D8%B3%D8%AC%D9%84%D8%A7%D8%AA%20%D8%A7%D9%84%D9%86%D9%87%D8%A7%D8%A6%D9%8A%D8%A9.pdf"   target = "_blank">Amman (fifth district)</a></li> -->
<!-- 								</ul> -->
<!-- 							</li> -->
<!-- 							<li> -->
<!-- 								<a href="#">Irbid City<i class="arrow right" style="margin-left: 45px;'"></i></a>  -->
<!-- 								<ul class="submenu2">  -->
<!-- 									<li><a href="https://www.iec.jo/sites/default/files/2020-10/%D8%A7%D9%84%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9%20%D8%A7%D9%84%D8%A7%D9%88%D9%84%D9%89%20%D8%A7%D8%B1%D8%A8%D8%AF%20-%202020%20-%20%D8%A7%D9%84%D8%B3%D8%AC%D9%84%D8%A7%D8%AA%20%D8%A7%D9%84%D9%86%D9%87%D8%A7%D8%A6%D9%8A%D8%A9.pdf"   target = "_blank">Irbid (first district)</a></li> -->
<!-- 									<li><a href="https://www.iec.jo/sites/default/files/2020-10/%D8%A7%D9%84%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9%20%D8%A7%D9%84%D8%AB%D8%A7%D9%86%D9%8A%D8%A9%20%D8%A7%D8%B1%D8%A8%D8%AF%20-%202020%20-%20%D8%A7%D9%84%D8%B3%D8%AC%D9%84%D8%A7%D8%AA%20%D8%A7%D9%84%D9%86%D9%87%D8%A7%D8%A6%D9%8A%D8%A9.pdf"   target = "_blank">Irbid (Second District)</a></li> -->
<!-- 									<li><a href="https://www.iec.jo/sites/default/files/2020-10/%D8%A7%D9%84%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9%20%D8%A7%D9%84%D8%AB%D8%A7%D9%84%D8%AB%D8%A9%20%D8%A7%D8%B1%D8%A8%D8%AF%20-%202020%20-%20%D8%A7%D9%84%D8%B3%D8%AC%D9%84%D8%A7%D8%AA%20%D8%A7%D9%84%D9%86%D9%87%D8%A7%D8%A6%D9%8A%D8%A9.pdf"   target = "_blank">Irbid (Third District)</a></li> -->
<!-- 									<li><a href="https://www.iec.jo/sites/default/files/2020-10/%D8%A7%D9%84%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9%20%D8%A7%D9%84%D8%B1%D8%A7%D8%A8%D8%B9%D8%A9%20%D8%A7%D8%B1%D8%A8%D8%AF%20-%202020%20-%20%D8%A7%D9%84%D8%B3%D8%AC%D9%84%D8%A7%D8%AA%20%D8%A7%D9%84%D9%86%D9%87%D8%A7%D8%A6%D9%8A%D8%A9.pdf"   target = "_blank">Irbid (Fourth District)</a></li> -->
<!-- 								</ul> -->
<!-- 							</li> -->
<!-- 							<li> -->
<!-- 								<a href="#">Zarqa City<i class="arrow right" style="margin-left: 45px;'"></i></a>  -->
<!-- 								<ul class="submenu2">  -->
<!-- 									<li><a href="https://origin.iec.jo/sites/default/files/2020-10/%D8%A7%D9%84%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9%20%D8%A7%D9%84%D8%A7%D9%88%D9%84%D9%89%20%D8%A7%D9%84%D8%B2%D8%B1%D9%82%D8%A7%D8%A1%20-%202020%20-%20%D8%A7%D9%84%D8%B3%D8%AC%D9%84%D8%A7%D8%AA%20%D8%A7%D9%84%D9%86%D9%87%D8%A7%D8%A6%D9%8A%D8%A9.pdf"   target = "_blank">Zarqa (first district)</a></li> -->
<!-- 									<li><a href="https://www.iec.jo/sites/default/files/2020-10/%D8%A7%D9%84%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9%20%D8%A7%D9%84%D8%AB%D8%A7%D9%86%D9%8A%D8%A9%20%D8%A7%D9%84%D8%B2%D8%B1%D9%82%D8%A7%D8%A1-%202020%20-%20%D8%A7%D9%84%D8%B3%D8%AC%D9%84%D8%A7%D8%AA%20%D8%A7%D9%84%D9%86%D9%87%D8%A7%D8%A6%D9%8A%D8%A9.pdf"   target = "_blank">Zarqa (Second District)</a></li> -->
<!-- 								</ul> -->
<!-- 							</li> -->
						
<!-- 							<li><a href="https://www.iec.jo/sites/default/files/2020-10/%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9%20%D8%AC%D8%B1%D8%B4%20-%202020%20-%20%D8%A7%D9%84%D8%B3%D8%AC%D9%84%D8%A7%D8%AA%20%D8%A7%D9%84%D9%86%D9%87%D8%A7%D8%A6%D9%8A%D8%A9.pdf"   target = "_blank">Jerash</a></li> -->
<!-- 							<li><a href="https://www.iec.jo/sites/default/files/2020-10/%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9%20%D8%A7%D9%84%D8%B7%D9%81%D9%8A%D9%84%D8%A9%20-%202020%20-%20%D8%A7%D9%84%D8%B3%D8%AC%D9%84%D8%A7%D8%AA%20%D8%A7%D9%84%D9%86%D9%87%D8%A7%D8%A6%D9%8A%D8%A9.pdf"   target = "_blank">Tafila</a></li> -->
<!-- 							<li><a href="https://www.iec.jo/sites/default/files/2020-10/%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9%20%D8%A7%D9%84%D8%B9%D9%82%D8%A8%D8%A9%20-%202020%20-%20%D8%A7%D9%84%D8%B3%D8%AC%D9%84%D8%A7%D8%AA%20%D8%A7%D9%84%D9%86%D9%87%D8%A7%D8%A6%D9%8A%D8%A9.pdf"   target = "_blank">Aqaba</a></li> -->
<!-- 							<li><a href="https://www.iec.jo/sites/default/files/2020-08/%D8%A7%D9%84%D9%83%D8%B1%D9%83_%D8%A7%D9%84%D8%A7%D8%B3%D8%AA%D8%AD%D9%82%D8%A7%D9%82_%D8%A7%D9%84%D8%AF%D8%B3%D8%AA%D9%88%D8%B1%D9%8A_%D8%A7%D9%84%D8%A7%D9%86%D8%AA%D8%AE%D8%A7%D8%A8%D8%A7%D8%AA%20%D8%A7%D9%84%D9%86%D9%8A%D8%A7%D8%A8%D9%8A%D8%A9_2020.pdf"   target = "_blank">Karak</a></li> -->
<!-- 							<li><a href="https://www.iec.jo/sites/default/files/2020-10/%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9%20%D8%A8%D8%AF%D9%88%20%D8%A7%D9%84%D8%B4%D9%85%D8%A7%D9%84%20-%202020%20-%20%D8%A7%D9%84%D8%B3%D8%AC%D9%84%D8%A7%D8%AA%20%D8%A7%D9%84%D9%86%D9%87%D8%A7%D8%A6%D9%8A%D8%A9.pdf"   target = "_blank">Northern Badia</a></li> -->
<!-- 							<li><a href="https://www.iec.jo/sites/default/files/2020-10/%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9%20%D8%A8%D8%AF%D9%88%20%D8%A7%D9%84%D8%AC%D9%86%D9%88%D8%A8%20-%202020%20-%20%D8%A7%D9%84%D8%B3%D8%AC%D9%84%D8%A7%D8%AA%20%D8%A7%D9%84%D9%86%D9%87%D8%A7%D8%A6%D9%8A%D8%A9.pdf"   target = "_blank">Southern Badia</a></li> -->
<!-- 							<li><a href="https://www.iec.jo/sites/default/files/2020-10/%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9%20%D8%A8%D8%AF%D9%88%20%D8%A7%D9%84%D9%88%D8%B3%D8%B7%20-%202020%20-%20%D8%A7%D9%84%D8%B3%D8%AC%D9%84%D8%A7%D8%AA%20%D8%A7%D9%84%D9%86%D9%87%D8%A7%D8%A6%D9%8A%D8%A9.pdf"   target = "_blank">Central Badia</a></li> -->
<!-- 							<li><a href="https://www.iec.jo/sites/default/files/2020-10/%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9%20%D9%85%D8%A3%D8%AF%D8%A8%D8%A7%20-%202020%20-%20%D8%A7%D9%84%D8%B3%D8%AC%D9%84%D8%A7%D8%AA%20%D8%A7%D9%84%D9%86%D9%87%D8%A7%D8%A6%D9%8A%D8%A9.pdf"   target = "_blank">Madaba</a></li> -->
<!-- 							<li><a href="https://www.iec.jo/sites/default/files/2020-10/%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9%20%D9%85%D8%B9%D8%A7%D9%86%20-%202020%20-%20%D8%A7%D9%84%D8%B3%D8%AC%D9%84%D8%A7%D8%AA%20%D8%A7%D9%84%D9%86%D9%87%D8%A7%D8%A6%D9%8A%D8%A9.pdf"   target = "_blank">Ma'an</a></li> -->
<!-- 							<li><a href="https://www.iec.jo/sites/default/files/2020-10/%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9%20%D8%B9%D8%AC%D9%84%D9%88%D9%86%20%D8%A7%D9%84%D9%85%D9%88%D9%82%D8%B9%20%D8%A7%D9%84%D8%A7%D9%84%D9%83%D8%AA%D8%B1%D9%88%D9%86%D9%8A-%D9%85%D8%B8%D8%BA%D9%88%D8%B7.pdf"   target = "_blank">Ajloun</a></li> -->
<!-- 							<li><a href="https://www.iec.jo/sites/default/files/2020-10/%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9%20%D8%A7%D9%84%D8%A8%D9%84%D9%82%D8%A7%D8%A1%20%D8%A7%D9%84%D9%85%D9%88%D9%82%D8%B9%20%D8%A7%D9%84%D8%A7%D9%84%D9%83%D8%AA%D8%B1%D9%88%D9%86%D9%8A-%D9%85%D8%B8%D8%BA%D9%88%D8%B7.pdf"   target = "_blank">Balqa</a></li> -->
<!-- 							<li><a href="https://www.iec.jo/sites/default/files/2020-10/%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9%20%D8%A7%D9%84%D9%85%D9%81%D8%B1%D9%82%20-%202020%20-%20%D8%A7%D9%84%D8%B3%D8%AC%D9%84%D8%A7%D8%AA%20%D8%A7%D9%84%D9%86%D9%87%D8%A7%D8%A6%D9%8A%D8%A9.pdf"   target = "_blank">Mafraq</a></li> -->
					
<!-- 						</ul> -->
<!-- 					</li> -->
					
					<li>
						<a href="#">List of voters 2020-2024 &#9660</a>
						<ul class="submenu">
							<li>
								<a href="#">Amman City<i class="arrow right" style="margin-left: 45px;'"></i></a> 
								<ul class="submenu2"> 
									<li><a href="https://www.iec.jo/sites/default/files/2023-09/01_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D8%A7%D9%84%D8%B9%D8%A7%D8%B5%D9%85%D8%A9_%D8%A7%D9%84%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9_%D8%A7%D9%84%D8%A7%D9%88%D9%84%D9%89.PDF"  target = "_blank">Amman (first district)</a></li>
									<li><a href="https://www.iec.jo/sites/default/files/2023-09/002_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D8%A7%D9%84%D8%B9%D8%A7%D8%B5%D9%85%D8%A9_%D8%A7%D9%84%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9_%D8%A7%D9%84%D8%AB%D8%A7%D9%86%D9%8A%D8%A9.PDF" target = "_blank">Amman (second district)</a></li>
									<li><a href="https://www.iec.jo/sites/default/files/2023-09/03_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D8%A7%D9%84%D8%B9%D8%A7%D8%B5%D9%85%D8%A9_%D8%A7%D9%84%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9_%D8%A7%D9%84%D8%AB%D8%A7%D9%84%D8%AB%D8%A9.PDF"   target = "_blank">Amman (third district)</a></li>
								</ul>
							</li>
							<li>
								<a href="#">Irbid City<i class="arrow right" style="margin-left: 45px;'"></i></a> 
								<ul class="submenu2"> 
									<li><a href="https://www.iec.jo/sites/default/files/2023-09/04_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D8%A7%D8%B1%D8%A8%D8%AF_%D8%A7%D9%84%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9_%D8%A7%D9%84%D8%A7%D9%88%D9%84%D9%89.PDF"   target = "_blank">Irbid (first district)</a></li>
									<li><a href="https://www.iec.jo/sites/default/files/2023-09/05_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D8%A7%D8%B1%D8%A8%D8%AF_%D8%A7%D9%84%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9_%D8%A7%D9%84%D8%AB%D8%A7%D9%86%D9%8A%D8%A9.PDF"   target = "_blank">Irbid (Second District)</a></li>
								</ul>
							</li>

						
							<li><a href="https://www.iec.jo/sites/default/files/2023-09/09_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D8%A7%D9%84%D8%B2%D8%B1%D9%82%D8%A7%D8%A1.PDF"   target = "_blank">Zarqa City</a></li>
							<li><a href="https://www.iec.jo/sites/default/files/2023-09/13_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D8%AC%D8%B1%D8%B4.PDF"   target = "_blank">Jerash</a></li>
							<li><a href="https://www.iec.jo/sites/default/files/2023-09/11_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D8%A7%D9%84%D8%B7%D9%81%D9%8A%D9%84%D9%87.PDF"   target = "_blank">Tafila</a></li>
							<li><a href="https://www.iec.jo/sites/default/files/2023-09/15_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9%20%D8%A7%D9%84%D8%B9%D9%82%D8%A8%D9%87.PDF"   target = "_blank">Aqaba</a></li>
							<li><a href="https://www.iec.jo/sites/default/files/2023-09/07_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D8%A7%D9%84%D9%83%D8%B1%D9%83.PDF"   target = "_blank">Karak</a></li>
							<li><a href="https://www.iec.jo/sites/default/files/2023-09/16_%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9_%D8%A8%D8%AF%D9%88_%D8%A7%D9%84%D8%B4%D9%85%D8%A7%D9%84.PDF"  target = "_blank">Northern Badia</a></li>
							<li><a href="https://www.iec.jo/sites/default/files/2023-09/18_%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9_%D8%A8%D8%AF%D9%88_%D8%A7%D9%84%D8%AC%D9%86%D9%88%D8%A8.PDF"   target = "_blank">Southern Badia</a></li>
							<li><a href="https://www.iec.jo/sites/default/files/2023-09/17_%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9_%D8%A8%D8%AF%D9%88_%D8%A7%D9%84%D9%88%D8%B3%D8%B7.PDF"   target = "_blank">Central Badia</a></li>
							<li><a href="https://www.iec.jo/sites/default/files/2023-09/12_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D9%85%D8%A3%D8%AF%D8%A8%D8%A7.PDF"   target = "_blank">Madaba</a></li>
							<li><a href="https://www.iec.jo/sites/default/files/2023-09/08_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D9%85%D8%B9%D8%A7%D9%86.PDF"   target = "_blank">Ma'an</a></li>
							<li><a href="https://www.iec.jo/sites/default/files/2023-09/14_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D8%B9%D8%AC%D9%84%D9%88%D9%86.PDF"   target = "_blank">Ajloun</a></li>
							<li><a href="https://www.iec.jo/sites/default/files/2023-09/06_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D8%A7%D9%84%D8%A8%D9%84%D9%82%D8%A7%D8%A1.PDF"   target = "_blank">Balqa</a></li>
							<li><a href="https://www.iec.jo/sites/default/files/2023-09/10_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D8%A7%D9%84%D9%85%D9%81%D8%B1%D9%82.PDF"   target = "_blank">Mafraq</a></li>

						</ul>
					</li>
					 		
					  <input id="textId" type="text" placeholder="Search.." name="search2" style="height: 30px; width: 200px;" >
					<!--background-color:  #00008B; --> 
					  <button id="searchButtonId" type="submit" style="width: 40px; height: 30px; background-color:black;  " onclick="searchFunction()"><i class="fa fa-search" style="color: white; "></i></button>
					  
   					<li>
						<a href="/" style="color: #FF6347; margin-left: 65px; font-size: 22px;">
						 	 العربية
						</a>
			 		</li>
					  					
				</ul>
		</h4>
</div>			

<div  id="englishDiv" style=" background-color: #FFFFF9; padding-top: 1px; width: 1200px;">        

  <div style="border:1px solid gray; width: 100%;" >
  <h3 style="margin-left: 50px;">Welcome to Jordan Election Application </h3>
  <br /> 
		<!--   table1    -->
		<table style="  color: #00008B;" >     
			<tr>
				<td class="imageContainer" id="developedbId">
					<a href="#"> 
						<p style="margin-left: 80px; font-size: 70px; color: green;">
						<img src="<c:url value="/resources/images/modrinization.png" />" alt="image"  style="width:782px; height: 386px; "/> 
						</p>
					</a>	
				</td>
				<td class="imageContainer" id="2017Td">
					<a href="#"> 
						<p style="margin-left: 80px; font-size: 70px; color: green;">
						<img src="<c:url value="/resources/images/jordan-vote-concept-man-hand-ballot-box-election-day-jordan-flag-vector.jpg" />" alt="image"  style="width:782px; height: 386px; "/> 
						</p>
					</a>	
				</td>
				<td class="imageContainer" id="2018Td">
					<a href="#">
						<p style="margin-left: 80px; font-size: 70px; color: blue;">
						<img src="<c:url value="/resources/images/femaleCandidate.png" />" alt="image" style="width:782px; height: 386px; "/> 
						</p>	
					</a>
					 		
				</td>
				<td  class="imageContainer" id="2019Td">
					<a href="#">
						<p style="margin-left: 80px; font-size: 70px; color: red">
						<img src="<c:url value="/resources/images/jordanammanwithflag.jpg" />" alt="image"   style="width:695px; height: 371px; " />
<!-- 						</p> -->
						</p>
					</a>
				</td>
				<td  class="imageContainer" id="2020Td">
					<a href="#">
						<p style="margin-left: 80px; font-size: 70px; color: yellow">
						<img src="<c:url value="/resources/images/kingAbdullahSpeech.jpg" />" alt="image"  style="width:750px; height: 370px; "  />
<!-- 						</p> -->
						</p>
					</a>
				</td>
				 
				<td  class="imageContainer" id="2021Td">
					<a href="#">
						<p style="margin-left: 80px; font-size: 70px; color: brown;">
							<img src="<c:url value="/resources/images/jordanparlamiante.jpg" />" alt="image"  style="width:780px; height: 380px; "  />
						</p>
					</a>
				</td>
				<td  class="imageContainer" id="2022Td">
					<a href="#">
						<p style="margin-left: 80px; font-size: 70px; color: orange;">
						<img src="<c:url value="/resources/images/jordanflagonhand.jpg" />" alt="image"   style="width:780px; height: 400px; " />
						</p>
					</a>
				</td>
				<td  class="imageContainer" id="2023Td">
					<a href="#">
						<p style="margin-left: 80px; font-size: 70px; color: black;">
						<img src="<c:url value="/resources/images/jordanmap.jpg" />" alt="image" style="width:780px; height: 400px; "    />
						</p>
					</a>
				</td>
				<td  class="imageContainer" id="2024Td">
					<a href="#">
						<p style="margin-left: 80px; font-size: 70px; color: black;">
						<img src="<c:url value="/resources/images/jordanonthemap.jpg" />" alt="image" style="width:780px; height: 400px; "    />
						</p>
					</a>
				</td>
				<td  class="imageContainer" id="2025Td">
					<a href="#">
						<p style="margin-left: 80px; font-size: 70px; color: black;">
						<img src="<c:url value="/resources/images/jordanonthemap2.jpg" />" alt="image" style="width:780px; height: 400px; "    />
						</p>
					</a>
				</td>
				<td  class="imageContainer" id="2026Td">
					<a href="#">
						<p style="margin-left: 80px; font-size: 70px; color: black;">
						<img src="<c:url value="/resources/images/JORDAN-ELECTION-PARLIAMENT-RESULTS.jpg" />" alt="image" style="width:780px; height: 400px; "    />
						</p>
					</a>
				</td>
				<td  class="imageContainer" id="2027Td">
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
	 <a target = "_blank" href="https://www.youtube.com/playlist?list=PLP-mhFFMWT9IywlhBinCDtGylwemClbTq" style=" margin-left: 1000px;">   
	 	<img src="<c:url value="/resources/images/youtub.gif" />" alt="image" class="circular_image_header"   style="width: 60px; height: 40px;"/> 
	</a>
	<img src="<c:url value="/resources/images/facebook.gif" />" alt="image" class="circular_image_header"   style="width: 60px; height: 40px;"/> 
</p>
<p style="margin-top: 50px;"><span style="font-size: 20px; font-weight: bold;">Developed by: </span>Mohammad Alrifai</p> </p></p>		
	</div>

</div> 
</div>
 
</div> 
</body>



<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
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
    
    
    window.onload = function() {
		
    	
    	onOfFunction();
 
    }
    
    
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