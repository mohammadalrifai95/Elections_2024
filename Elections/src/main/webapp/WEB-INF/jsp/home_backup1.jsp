<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>Insert title here</title>
</head>
<body>


	<div style="padding-left: 250px;"> 
			<table style="width: 100%; padding-top: 100px; padding-bottom: 50px;">
				<tr>
					<td>
						<label style="font-size: 25px; font-weight: bold; margin-left: 400px;">
						<!--Candidate Details -->
							تفاصيل المرشح
						</label>
					</td>
				</tr>
			</table>
			<table style="width: 100%;" id="candidate1Id">
				<tr>
					<!--Table1 -->
					<td>
						<table style="border-collapse: separate;border-spacing: 0 1em; width: 400px; margin-top: -40px;">
							<tr>
								<td>
<%-- 								<spring:message code = "${Total}" /> --%>
<%-- 								<c:out value="${Total}"/> --%>
<%-- 								<spring:message code="${Total}" arguments="${Total}"/> --%>
								
<%-- 								<c:set var="title"><spring:message code = "${Total}"  htmlEscape="false" /></c:set>   --%>
								  
								<%--<spring:message code = "${Total}" /> --%>
<%-- 								<spring:message code = "${Total}" text="${Total}" htmlEscape="false" />    --%>
<%-- 								<h2 data-th-text="${Total}">${Total}</h2> --%>
<%-- 								<h1><spring:message code="Total" text="default"/></h1> --%>
<%-- 								<h1><spring:message code="Total" text="default"/></h1> --%>
									<a href="/SeeListOfVoters?userName=${userData.userName}&password=${userData.password}" style="font-size: 20px; margin-left: 60px;">
<!-- 									Total Votes   -->
									<button style="font-size: 30px;  background-color: blue;color: white; width: 50px; height:50px; margin-left: 10px;" >${numberOfVotes}</button>
									مجموع الأصوات
									</a> 
								</td>
							</tr>
							<tr>
								<td id="base64imageId">
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
								<td><p style="margin-left: 70px;"> ${candidateData.fullName}</p></td>
							</tr>
						</table>
					</td>
					<td> 
					<!--Table2 -->
					<table style="margin-top: -200px; padding-top: 1px; padding-right: 200px; font-size: 25px;">
							<tr>
<!-- 								<td>Full name as entered :</td>   -->
								<td style="padding-right: 40px;">${candidateData.fullName}</td>
								<td>:اسم  المرشح</td>  
							</tr>
							<tr>
								<td style="padding-left: 180px;">${governorateData.arabicName}</td>  
<!-- 								<td>Governorate Arabic Name :</td>     -->
								<td>:اسم المحافظة</td>    
							</tr>
							<tr>
								<td style="padding-left: 20px;"> ${constituencyData.arabicName}</td>  
								<td>:الدائرة الانتخابية</td>    
							</tr>
						</table>	
					</td>
				</tr>
			</table>
			
			
			<table style="width: 100%; " id="candidate2Id">
				<tr>
					<!--Table1 -->
					<td>
						<table style="border-collapse: separate;border-spacing: 0 1em; width: 400px; margin-top: -40px;">
							<tr>
								<td>
									<a href="/SeeListOfVoters?userName=${userData.userName}&password=${userData.password}" style="font-size: 20px; margin-left: 60px;">
<!-- 									Total Votes   -->
										<button style="font-size: 30px;  background-color: blue;color: white; width: 50px; height:50px; margin-left: 10px;" >${numberOfVotes2}</button>
										مجموع الأصوات
									</a>
								</td>
							</tr>
							<tr>
								<td>
								
									<c:choose>
									    <c:when test="${empty candidateData2.base64image}">
									    	<img src="<c:url value="/resources/images/candidateDefault.png" />" alt="image"  style="width: 300px; height: 300px;"/>
									    </c:when>    
									    <c:otherwise>
									    	<img alt="img" src="data:image/png;jpg;jpeg;charset=utf-8;base64,${candidateData2.base64image}" style="width: 300px; height: 300px;"/>
									    </c:otherwise>
									</c:choose>
								</td>
							</tr>
							<tr>
								<td><p style="margin-left: 70px;"> ${candidateData2.fullName}</p></td>
							</tr>
						</table>
					</td>				
				<!--Table2 -->				
					<td> 
					<table style="margin-top: -200px; padding-top: 1px; padding-right: 200px; font-size: 25px;">
<!-- 						<table style="border-collapse: separate;border-spacing: 0 1em; width: 560px; margin-top: -80px;"> -->
							<tr>
<!-- 								<td>Full name as entered :</td>   -->
								<td style="padding-right: 40px;">${candidateData2.fullName}</td>
								<td>:اسم  المرشح</td>  
							</tr>
							<tr>
								<td style="padding-left: 180px;">${governorateData2.arabicName}</td>  
<!-- 								<td>Governorate Arabic Name :</td>     -->
								<td>:اسم المحافظة</td>    
							</tr>
							<tr>
								<td style="padding-left: 20px;"> ${constituencyData2.arabicName}</td>  
								<td>:الدائرة الانتخابية</td>    
							</tr>
						</table>	
					</td>

				</tr>
			</table>


			<table style="width: 100%; " id="candidate3Id">
				<tr>
					<!--Table1 -->
					<td>
						<table style="border-collapse: separate;border-spacing: 0 1em; width: 400px; margin-top: -40px;">
							<tr>
								<td>
									<a href="/SeeListOfVoters?userName=${userData.userName}&password=${userData.password}" style="font-size: 20px; margin-left: 60px;">
<!-- 									Total Votes   -->
										<button style="font-size: 30px;  background-color: blue;color: white; width: 50px; height:50px; margin-left: 10px;" >${numberOfVotes3}</button>
										مجموع الأصوات
									</a>
								</td>
							</tr>
							<tr>
								<td>
								
									<c:choose>
									    <c:when test="${empty candidateData3.base64image}">
									    	<img src="<c:url value="/resources/images/candidateDefault.png" />" alt="image"  style="width: 300px; height: 300px;"/>
									    </c:when>    
									    <c:otherwise>
									    	<img alt="img" src="data:image/png;jpg;jpeg;charset=utf-8;base64,${candidateData3.base64image}" style="width: 300px; height: 300px;"/>
									    </c:otherwise>
									</c:choose>
								</td>
							</tr>
							<tr>
								<td><p style="margin-left: 70px;"> ${candidateData3.fullName}</p></td>
							</tr>
						</table>
					</td>
					<!--Table2 -->				
					<td> 
					<table style="margin-top: -200px; padding-top: 1px; padding-right: 200px; font-size: 25px;">
<!-- 						<table style="border-collapse: separate;border-spacing: 0 1em; width: 560px; margin-top: -80px;"> -->
							<tr>
<!-- 								<td>Full name as entered :</td>   -->
								<td style="padding-right: 40px;">${candidateData3.fullName}</td>
								<td>:اسم  المرشح</td>  
							</tr>
							<tr>
								<td style="padding-left: 180px;">${governorateData3.arabicName}</td>  
<!-- 								<td>Governorate Arabic Name :</td>     -->
								<td>:اسم المحافظة</td>    
							</tr>
							<tr>
								<td style="padding-left: 20px;"> ${constituencyData3.arabicName}</td>  
								<td>:الدائرة الانتخابية</td>    
							</tr>
						</table>	
					</td>
				</tr>
			</table>
		</div>
		
		
</body>
</html>