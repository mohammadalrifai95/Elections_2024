<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
 
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ taglib prefix="mytags" tagdir="/WEB-INF/tags" %> --%>


<%-- <%@ page import="com.election.mainapp.constant.GlobalMessage_AR" %> --%>
<%-- <%@ page import="com.election.mainapp.constant.GlobalConstant" %> --%>

<!-- Note2 -->
<%-- <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %> --%>
 

    
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>Insert title here</title>




</head>
<style>


.dropbtn {
  background-color: #04AA6D;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #ddd;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #3e8e41;}

 
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

.active {
  background-color: #04AA6D;
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


 
<div dir="rtl" style="border: 3px solid #73AD21; background-color: #679FAB; width: 70%; padding-right:5%;padding-left:5%; margin-right:5%; margin-left:5%; color: white;">  
	<table style="width: 100%" >            
		<tr>
			<td style="width:20%;">
				<p style=" margin-top: 1px;">
					<span>����� �������<br> ${voterData.fullName}</span>   
				</p>
			</td>
			<td style="width: 10%">
			</td>
			<td style="width: 50%; font-size: 28px;">        
					<p >���������� �������� �������� 2024</p>   
			</td>
			<td style="width: 10%">
			</td>   
			<td  style="width:20%;">  
				<a href="/logoutPage">����� ����</a>
			</td>
		</tr>
	</table>
</div>
 
<div dir="rtl" style="width: 70%; margin-top: 0.05%; padding-top:4%; padding-right:5%;padding-left:5%; margin-right:5%; margin-left:5%; background-color: lightgray; border: 3px solid lightgray;" >            
<table >
	<tr>
		<td>
			<label style="font-size: 20px; font-weight: bold; margin-left: 400px;">���� ����� ��������� ���� ��� �������� ��</label>
		</td>
	</tr>
	<tr>
		<!--Table1 -->
		<td> 
			<table style="border-collapse: separate;border-spacing: 0 1em; width: 560px; margin-top: -80px;">
				<tr>
					<td>����� ������ ��� �� ������:</td>  
					<td>${candidateData.fullName}
					</td> 
				</tr>

				<tr>
					<td>��� �������� :</td>    
					<td>${governorateData.arabicName}</td>  
				</tr>

				<tr>
					<td>������� ����������</td>    
					<td>${constituencyData.arabicName}</td>  
				</tr>
			</table>	
		</td>
		
		<!--Table2 -->		
		<td>
			<table style="margin-top: -30px;">
				<tr dir="rtl">
					<td>
						<a href="#" style="font-size: 20px; margin-left: 60px;">����� �������  
							<button style="font-size: 30px;  background-color: blue;color: white; width: 50px; height:50px; margin-left: 10px;" >${numberOfVotes}</button>
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
						    	<img alt="img" src="data:image/jpg;base64,${candidateData.base64image}" style="width: 300px; height: 300px;"/>
						    </c:otherwise>
						</c:choose>
								
					</td>
				</tr>
				<tr>
					<td><p style="margin-left: 70px;"> ${candidateData.fullName}</p></td>
				</tr>
			</table>
<%-- 		    <a href="/SeeListOfVoters?userName=${userData.userName}&password=${userData.password}" style="font-size: 20px;">See total List of Voters  </a> --%>
<%-- 		    <span style="font-size: 30px;  background-color: blue;color: white; width: 100%; " >${numberOfVotes}</span> --%>
<!-- 		    <br><br> -->
<%-- 			<img alt="img" src="data:image/jpg;base64,${candidateData.base64image}" style="width: 300px; height: 300px;"/>  --%>

		</td>
	</tr>
	
	<tr>
		<td>
			<form action="signin" method = "GET">    
				 <input  type="text" name="id"  id="id" value="${voterData.id}"  style="display: none;"/> 
				 <input  type="text" name="userName"  id="userName" value="${voterData.userName}" style="display: none;" /> 
				 <input  type="password" name="password"  id="password" value="${voterData.password}" style="display: none;" /> 
				 <input type="submit" value="������ ��������" id="backId" name="Back" class="button"> 
			</form>
		</td>
	</tr> 
</table>


</div>







</body>




<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
<script type="text/javascript">
</script>

    
    
</html>
