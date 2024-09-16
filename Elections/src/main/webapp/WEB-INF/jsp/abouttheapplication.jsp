<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
    
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
<meta charset="windows-1256">
<title>Insert title here</title>

<style type="text/css">

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
.dotstyle{
    content: "\00B7";
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


</style>
</head>

<body>
<!-- <ul style="width: 250px;"> -->
<!-- 	<li style="margin-bottom: 20px; "> -->
<!-- 		<a class="active" style="" href="/login?alredyLoggedin=Yes" > -->
<!-- 			Home -->
<!-- 		</a> -->
<!-- 	</li> -->

<!-- 	<li><a href="/candidateinformation?viewName=home2" id="selectCityLi">How to become a Candidate</a></li> -->
<!-- 	<li><a href="/candidacyconditions">Add New Candidate</a></li> -->
<!-- 	<li><a href="/contactUs">Candidate/Voter</a></li> -->
<!-- 	<li><a href="/news">News</a></li> -->
<%-- 	<c:if test="${role == 'ROLE_ADMIN'}"> --%>
<!--         <li><a href="/admin">Admin</a></li>  -->
<%--     </c:if>	 --%>
	
<!-- 	 <li style="width: 200px; height: 30px; margin-top: 430px; background-color: black;">   	  -->
<%-- 			<c:choose> --%>
<%-- 					<c:when test="${PreviousPage == 'home2'}">  --%>
<!-- 					<a href="/login?alredyLoggedin=Yes" class="active" style="background-color: black" class="active">Back</a>  -->
<!-- 			 		<a href="/" class="active" style="background-color: black" class="active">Back</a>  -->
<%-- 	   			 </c:when> --%>
<%-- 	   			 <c:otherwise> --%>
<!-- 			 		<a href="/" class="active" style="background-color: black">Back</a>  -->
<%-- 	   			 </c:otherwise>  --%>
<%-- 			</c:choose> --%>
<!-- 	</li> -->
<!-- </ul> -->
<!-- <div   style="margin: auto;  border: 3px solid #73AD21; padding: 1px;background-color: #679FAB; width: 100%; height: 10%; text-align: center;" > -->
<!--   <h3 >Welcome to the Election System app - this is the login page</h3> -->
 
<!-- </div> -->
<!-- <div  class="fixedElement"  style="border: 3px solid #73AD21; background-color: #679FAB; width: 100%; height: 100px; color: white;" > -->
<div    style="border: 3px solid #73AD21; background-color: #679FAB;  height: 10%; color: white;             width: 70%;   margin-right:5%; margin-left:5%;" dir="rtl">  
<!-- <div style="width: 1100px; height: 1250px; position: relative; margin-left: auto; margin-right: auto;"> -->
		<table > 
		<tr>
			<td>  
				<a href="/">
			  		<img src="<c:url value="/resources/images/jordanflagonhand.jpg" />" alt="image"   style="width: 100px; height: 90px; border-radius: 25%; "/> 
				</a>
			</td>
			<td style="width: 20%"></td>
			<td style="width:50%; text-align: center;">             
					<p style="font-size: 35px;"> تطبيق الانتخابات البرلمانية الأردنية </p>
					<br>
					<p style="font-size: 25px;"> معلومات عن الموقع </p>
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
	



<!-- <div    style="background-color: lightgray;  height: 30%; font-size: 23px; width: 100%;" >  -->
<!-- <div  id="englishDiv" style=" background-color: lightgray; padding-top: 150px;"> -->
<div    style="border: 3px solid #73AD21; background-color: #679FAB;  height: 10%; color: white;             width: 70%;   margin-right:5%; margin-left:5%;" dir="rtl">
<div>
<h1>
اهلا بكم في موقع الانتخابات البرلمانيه الاردنيه هذا الموقع بمثابه حمله انتخابيه للتسهيل على المواطنين الذين يرغبون بالترشح لمجلس النواب الاردني 2024 لتاسيس حملتهم بجهد اقل ومصاريف اقل على هذا الموقع
	 <br> 
	 <br> 
 يمكن هذا الموقع المرشح  من معرفه عدد الاصوات التي يمكن ان يحصل عليها بدقه هذا الموقع محمي ويحتوي على جميع المواطنين الاردنيين المؤهلين للترشح والمؤهلين للانتخاب فقط كل حسب منطقته التي يقطن بها ولا يسمح هذا الموقع لاي شخص بان يسجل نفسه كناخب او كمرشح في منطقه اخرى غير المنطقه التي يقطن بها
 	 <br> 
	 <br>
  اي مواطن اردني تنطبق عليه شروط الترشح والانتخاب له الاحقيه الكامله في الدخول الى هذا الموقع وتسجيل نفسه كمرشح لجلب الاصوات او كناخب للتصويت للمرشح للمرغوب به  في اي وقت يمكنك النقر على اشعار اليد مع العلم العوده الى الصفحه الرئيسيه يسمح لك هذا الموقع باختيار والتصويت لمرشحك المفضل الذي ترغب للتصويت له اذا لم يكن مرشحك مسجل في هذا الموقع خرج الى ما هو بضروره التسجيل في هذا الموقع كمرشح للبرلمان الاردني يمكنه هذا الموقع من مراقبه حملته الانتخابيه واعطائه رؤيه افضل عن عدد الاصوات التي يمكن ان يحصدها عن طريق هذا التسجيل في هذا الموقع الرجاء المعرفه ان هذا الموقع لا يعتبر موقعا رسميا ويمثل فقط حمله انتخابيه للتسهيل على المواطنين ولا يمثل اي انتخابات رسميه هذا الموقع ينبغي على الاشخاص الذين قاموا بالتسجيل في هذا الموقع ان يذهبوا ايضا للتسجيل والانتخاب الفعلي في الزمان والمكان التي عينتهما الحكومه الاردنيه الرجاء المعرفه طريقه التسجيل كنافذ او مرشح اردني انقر على تسجيل ناخب او مرشح التي تظهر في الشاشه الرئيسيه ثم اختر نوع التسجيل في اي وقت يمكن يمكنك النقر على قائمه المرشحين التي تظهر في الشاشه الرئيسيه ومن ثم اختيار المدينه والمنطقه التي ترغب في رؤيه قائمه مرشحيها عند النقر على الزر اوكي فانك توافق على جميع الشروط وسياسه هذا الموقع لمشاركه معلوماتك مع هذا الموقع بغرض مساعدتك في التسجيل كناخب او مرشح بعد عمليه تسجيلكناخب او كمرشح يمكنك تسجيل الدخول عن طريق النقر على الرابط او الزر تسجيل الذي يظهر على الشاشه الرئيسيه عند الوصول الى شاشه تسجيل الدخول بامكانك ادخال اسم المستخدم وكلمه المرور التي قمت بادخالهما اثناء عمليه التسجيل كناخب او مرشح بالاضافه الى رقمك الوطني باللغه الانجليزيه كما يظهر على الهويه في اي وقت يمكنك الضغط على الزر معلومات او الرابط الذي يظهر على الشاشه الرئيسيه لرؤيه هذه القائمه مره اخرى
</h1>
<!-- 				• • = alt key + 0149 -->

<!--  					<h1>About The Application</h1>    -->
<!--  					<br> -->
<!-- <p style="font-size: 23px;">  -->
<!-- Election of Jordan country application has been launched in order to simplify the parliament election to Jordanian people,<br>  -->
<!-- application allows any Jordanian nationality who's eligible and has satisfied all parliament conditions to be parliament candidate.<br>  -->
<!-- All what they have to do is to sing up to this application with all information needed and then the application will tell if this person <br> -->
<!-- is eligible to be a candidate.<br> -->


<!-- <br> -->
<!-- <br> -->
<!-- Currently Election of Jordan country application is filtering voters name and social security numbers,<br> -->
<!-- number of voters which currently register in the application around 5 millions records, <br> -->
<!-- any one outside of theses records try to register themselves as voter, application will reject that <br> -->
<!-- and will pop up a message on the screen stating:  "The name you entered is not registered in 2023, <br> -->
<!-- to be able to vote from now to any candidate preparing for 2024, please register your name at Jordan Independent Election Commission before you register in this application" ,<br> -->

<!-- <br> -->
<!-- <br>  -->
<!-- these names are currently registered on The Jordanian Independent Authority,  -->
<!-- and they are published online in Arabic language, we allow any candidate to see all<br> -->
<!-- voters available in his/her region by clicking on link provided on the screen.<br><br> -->

<!-- Application also will allow candidates to see all current representative was elected in 18th Parliament of Jordan.  -->

<!-- <br> -->
<!-- <br> -->
<!-- Application will allow more people to register as candidates and monitor voting status on a daily/weekly basis before they<br> -->
<!-- become actual government candidates.<br>  -->
<!-- It also will save candidates time and reduce the number of campaigns, so that the people's voice is better represented. -->
<!-- Application launched and tested in country of Jordan, we are targeting to grow it into large scale application.  -->
<!-- It targeted to increase the percentage of votes from 30% in 2020 to at least 75% to 95%. -->
 
<!-- <br> -->
<!-- <br> -->
<!-- We have reserved a database in order to have more space to any voters want to registers, voters will not be charged any fees and it will be totaly free for them -->
<!-- , once they sign up with Username and password -->
<!-- they will be able any time to login again and change their votes before the deadline in 2024, once pass the dead line,  -->
<!-- the voters will not be able to vote to different candidate. -->
<!-- <br> -->
<!-- <br> -->
<!-- We also have different tables in our database in order to save candidate's information, Application is targeting the candidate by  -->
<!-- allow them to pay registration fees in monthly basis to be able to register and monitor the results "number of votes" currently gained, -->
<!-- candidate will also be able to see all voters in his/her region and also will be able to see all voters names who voted to him/her. -->

<!-- <br> -->
<!-- <br> -->
<!-- Dividing the Kingdom into 18 electoral districts The Kingdom was divided into 18 local electoral districts <br> -->
<!-- and a general electoral district, to which 138 seats were allocated,<br>  -->
<!-- with 97 seats for the local districts and 41 seats for the general district, so that the capital, Amman,<br>  -->
<!-- was divided into three local electoral districts, and Irbid Governorate into two local districts, while the rest were<br>  -->
<!-- allocated to each of them.  -->

<!-- <br> -->
<!-- <br> -->
<!-- The governorates have one local district, in addition to allocating three districts for the Bedouins of the north,<br>  -->
<!-- center, and south, each district having three seats. -->
    <br>   
    <br>   
    <br>   
    <br>   
    <div style="background-color: lightgray"> 
<h1>References</h1> 

 </div>
 
</p>
    
<!-- 					<h1>Candidacy requirements stipulated by law:</h1>    -->
					
<!-- 					<h3>A candidate for membership in the House of Representatives, according to Article (10), shall meet the following:</h3>  -->
<!-- 					<br /> -->
<!-- 					<span style="font-size: 22px; margin-right: 10px;">•</span> To be Jordanian for at least ten years -->
<!-- 					<br /> -->
<!-- 					<span style="font-size: 22px; margin-right: 10px;">•</span> He must have completed thirty solar years of his age on polling day -->
<!-- 					<br /> -->
<!-- 					<span style="font-size: 22px; margin-right: 10px;">•</span>He must not have been convicted of bankruptcy and has not regained his legal status -->
<!-- 					<br /> -->
<!-- 					<span style="font-size: 22px; margin-right: 10px;">•</span>That he is not interdicted and the interdiction has not been lifted from him -->
<!-- 					<br /> -->
<!-- 					<span style="font-size: 22px; margin-right: 10px;">•</span>He must not have been sentenced to imprisonment for a period exceeding one year for a non-political crime and has not been pardoned -->
<!-- 					<br /> -->
<!-- 					<span style="font-size: 22px; margin-right: 10px;">•</span>Not to be crazy or imbecile -->
<!-- 					<br /> -->
<!-- 					<span style="font-size: 22px; margin-right: 10px;">•</span>He should not be a relative of the King to the degree specified by a special law -->
<!-- 					<br /> -->
<!-- 					<span style="font-size: 22px; margin-right: 10px;">•</span>He should not be contracting with the government, public official institutions, companies owned or controlled by the government, or any public official -->
<!-- 					<span style="margin-left: 20px;">institution, whether this contract is direct or indirect, with the exception of land and property lease contracts and whoever is a shareholder</span><br />      -->
<!-- 					<span style="margin-left: 20px;">in a company whose members are more than ten people.</span>   -->
<!-- 					<br /> -->
 
				</div>
</div>



</body>
</html>