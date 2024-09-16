<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
 
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     --%> 
<%-- <%@ taglib uri="jakarta.tags.core" prefix="c" %>  --%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--  <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> --%> 
 
 
 
<%-- <%@ taglib  prefix="c" uri="http://java.sun.com/jstl/core"  %> --%>




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
/* 	color: #666; */
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


.popupBox{
position:absolute;
/*  background-color: #F5F5F5; */
  background-color: coral;   
/* background-color: #679FAB; */
/* top:70%; */
left:50%;
width:550px;  /* adjust as per your needs */
height:180px;   /* adjust as per your needs */
margin-left:-21%;   /* negative half of width above */
margin-top:80px;   /* negative half of height above */
flex: 0 0 200px;
border-radius: 20px; 
background-image: linear-gradient(to top left, rgba(0, 0, 0, 0.2), rgba(0, 0, 0, 0.2) 30%, rgba(0, 0, 0, 0));
box-shadow: inset 2px 2px 3px rgba(255, 255, 255, 0.6), inset -2px -2px 3px rgba(0, 0, 0, 0.6);
}

.center {
  border: 5px solid;
  margin: auto;
  width: 90%;
  height: 90%;  
  padding: 10px;
}
</style>
<body>


<div  class="center" dir="rtl"> 
	<div style="border: 3px solid #73AD21; background-color: #679FAB;  height: 100px; color: white;" >  
		<table>            
			<tr>
				<td>            
					<p style=" margin-top: 1px;">  
						<a href="/">   
					  		<img src="<c:url value="/resources/images/jordanflagonhand.jpg" />" alt="image" class="circular_image_header"   style="width: 100px; height: 90px; "/>
						</a>
					</p>
				</td>
				<td style="width: 35%;">
				</td>
				<td style="width: 500px; font-size: 25px; font-weight: bold;">   
						الانتخابات النيابية			

				</td>
				<td style="width: 10%;">
				</td>   
				<td>  
					<h5 style=" margin-top: 40px; font-size: 25px;">  
						<a href="/logoutPage">تسجيل</a>   
					</h5>  
				</td>
				
			</tr>
		</table>
	</div>
	<div style="font-size: 22px;" align="center" >     
  			تم التسجيل بنجاح
  	</div>
	<div  class="popupBox"  style="font-size: 20px;" >
	<p style=" padding-top: 30px; text-align: center;"> 
					لقد قمت بالتسجيل بنجاح كناخب جديد، هذا التسجيل لا يعد تصويت لكن يسمح لك بالدخول للتصويت انت لم تصوت بعد للتصويت يرجى تسجيل الدخول باستخدام بيانات الاعتماد الخاصة بك التي أدخلتها يرجى النقر <a href="/logoutPage"  style="font-size: 30px;"> تسجيل الدخول </a>
					
	</p>
	</div>			

</div>
 
</body>



<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
<script type="text/javascript">
 
    
    window.onload = function() {
		
 
    	
    	onOfFunction();
    	
    	
//     	setTimeout(function() {
// 			showRedDivId();
// 			}, 500);   	
    	
    }
    
 
    
    
    
    
	
</script>
</html>