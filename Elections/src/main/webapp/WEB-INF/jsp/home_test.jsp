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

/* body { */
/* 	font-size: 1rem; */
/* 	line-height: 1.6; */
/* 	background-color: #ecf0f1; */
/* 	color: #666; */
/* 	font-family:  'Roboto Condensed', sans-serif; */
/* }  */

/* Nav Style */

header{

	background-color: #679FAB;
	padding: 2rem 0;

}

 
.menu > li, .menu > a {
	display: inline-block;
	
/* 	01 06 2024 */
/* 	float: right; */
 	float: left;
/* 	text-align: left; */
/* 	float: right;  */
    
/*     text-align:right;  */

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
/* 	left: 100%; */
	width: 140px;
	top: 0;
	background-color: #2c3e50;
	display: none;
	/* 	changehere  */
	width: 320px;  


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
     
/*     position: relative; */
/*   display: block; */
/*   position: absolute; */
/*   left: 100%; */
/*   top: 20px; */
/*   background-color: green; */
/*   width: 100%; */


/*     float:left;   */
/*     text-align: left;  	 */
/*     display: none; position:absolute; right:0;*/ 
}
 
/* menu li > ul li:hover > ul { */
/*   display: block; */
/*   position: absolute; */
/*   left: 100%; */
/*   top: 20px; */
/*   background-color: green; */
/*   width: 100%; */
/* } */
/* .has_children { */
/*   position: relative; */
/* } */

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

<div    style="background-color: lightgray;  width: 1200px; height: 50px;" >
		<h4 style="margin-left: 30px; ">
				<ul class="menu">  		
					<!--background-color:  #00008B; --> 
				<li >  
					<a href="/english?language=english" style="color: #FF6347; margin-right: 50px;"> 
					  	 English 
					</a>
				</li>		

 				
 					<li style="float:right; margin-right: 40px;">     
						<a href="#">
						&#9660 ������� ���
						</a>
						<ul class="submenu">
							<li >
								<a href="/abouttheapplication">
									������� ��� �������
								</a>
							</li> 
						</ul>
					 </li>
					
 
																			 
					<li style="float:right;"><a href="#">&#9660 ����� ������ ��������   </a>
						<ul class="submenu">
							<li><a href="/ListOfMembers">
							����� ����� ������ �������� 
							</a></li>
						</ul>
					</li>
																								 
					 
					<li style="float:right;">
						<a href="#">&#9660 ����� ��������  </a>
						<ul class="submenu" >
							<li >
								<a href="#"> &#9668; ���� <i style="margin-left: 45px;'"></i></a> 
								<!-- class="submenu2" -->
								<ul class="submenu2">  
									<li><a href="/ammanFirstDistrict"  target = "_blank">���� (������� ������)</a></li>
									<li><a href="https://www.iec.jo/sites/default/files/2023-09/002_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D8%A7%D9%84%D8%B9%D8%A7%D8%B5%D9%85%D8%A9_%D8%A7%D9%84%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9_%D8%A7%D9%84%D8%AB%D8%A7%D9%86%D9%8A%D8%A9.PDF" target = "_blank">���� (������� �������)</a></li>
									<li><a href="https://www.iec.jo/sites/default/files/2023-09/03_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D8%A7%D9%84%D8%B9%D8%A7%D8%B5%D9%85%D8%A9_%D8%A7%D9%84%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9_%D8%A7%D9%84%D8%AB%D8%A7%D9%84%D8%AB%D8%A9.PDF"   target = "_blank">���� (������� �������)</a></li>
								</ul>
							</li>
							<li>
								<a href="#"> &#9668; ���� <i style="margin-left: 45px;'"></i></a> 
								<ul class="submenu2"> 
									<li><a href="#"   target = "_blank">���� (������� ������)</a></li>
									<li><a href="https://www.iec.jo/sites/default/files/2023-09/05_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D8%A7%D8%B1%D8%A8%D8%AF_%D8%A7%D9%84%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9_%D8%A7%D9%84%D8%AB%D8%A7%D9%86%D9%8A%D8%A9.PDF"   target = "_blank">���� (������� �������)</a></li>
								</ul>
							</li>
						
							<li><a href="https://www.iec.jo/sites/default/files/2023-09/09_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D8%A7%D9%84%D8%B2%D8%B1%D9%82%D8%A7%D8%A1.PDF"   target = "_blank">�������</a></li>
							<li><a href="https://www.iec.jo/sites/default/files/2023-09/13_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D8%AC%D8%B1%D8%B4.PDF"   target = "_blank">���</a></li>
							<li><a href="https://www.iec.jo/sites/default/files/2023-09/11_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D8%A7%D9%84%D8%B7%D9%81%D9%8A%D9%84%D9%87.PDF"   target = "_blank">�������</a></li>
							<li><a href="https://www.iec.jo/sites/default/files/2023-09/15_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9%20%D8%A7%D9%84%D8%B9%D9%82%D8%A8%D9%87.PDF"   target = "_blank">������</a></li>
							<li><a href="https://www.iec.jo/sites/default/files/2023-09/07_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D8%A7%D9%84%D9%83%D8%B1%D9%83.PDF"   target = "_blank">�����</a></li>
							<li><a href="https://www.iec.jo/sites/default/files/2023-09/16_%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9_%D8%A8%D8%AF%D9%88_%D8%A7%D9%84%D8%B4%D9%85%D8%A7%D9%84.PDF"  target = "_blank">������� ��������</a></li>
							<li><a href="https://www.iec.jo/sites/default/files/2023-09/18_%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9_%D8%A8%D8%AF%D9%88_%D8%A7%D9%84%D8%AC%D9%86%D9%88%D8%A8.PDF"   target = "_blank">������� ��������</a></li>
							<li><a href="https://www.iec.jo/sites/default/files/2023-09/17_%D8%AF%D8%A7%D8%A6%D8%B1%D8%A9_%D8%A8%D8%AF%D9%88_%D8%A7%D9%84%D9%88%D8%B3%D8%B7.PDF"   target = "_blank">������� ������</a></li>
							<li><a href="https://www.iec.jo/sites/default/files/2023-09/12_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D9%85%D8%A3%D8%AF%D8%A8%D8%A7.PDF"   target = "_blank">�����</a></li>
							<li><a href="https://www.iec.jo/sites/default/files/2023-09/08_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D9%85%D8%B9%D8%A7%D9%86.PDF"   target = "_blank">����</a></li>
							<li><a href="https://www.iec.jo/sites/default/files/2023-09/14_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D8%B9%D8%AC%D9%84%D9%88%D9%86.PDF"   target = "_blank">�����</a></li>
							<li><a href="https://www.iec.jo/sites/default/files/2023-09/06_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D8%A7%D9%84%D8%A8%D9%84%D9%82%D8%A7%D8%A1.PDF"   target = "_blank">�������</a></li>
							<li><a href="https://www.iec.jo/sites/default/files/2023-09/10_%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D8%A7%D9%84%D9%85%D9%81%D8%B1%D9%82.PDF"   target = "_blank">������</a></li>
					
						</ul>
					</li>

					

					
					

 
				</ul>
		</h4>
</div>	



</div> 
</body>



<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
<script type="text/javascript">

</script>

</html>