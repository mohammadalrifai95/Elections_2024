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
<div  class="fixedElement"  style="border: 3px solid #73AD21; background-color: #679FAB; width: 100%; height: 100px; color: white;" >  
	<table style="margin-left: 100px;">            
		<tr>
			<td>            
				<p style=" margin-top: 1px;">  
					<a href="/">   
				  		<img src="<c:url value="/resources/images/jordanflagonhand.jpg" />" alt="image" class="circular_image_header"   style="width: 100px; height: 100px; "/>
					</a>
				</p>
			</td>
			<td style="width: 50px;">
			</td>
			<td style="width: 500px;">        
				<h2 style=" margin-top: 10px;">   
					Election of Jordan  
				</h2>
			</td>
			<td style="width: 350px;">
			</td>   
			<td>  
				<h5 style=" margin-top: 40px;">  
					<a href="/logoutPage">Log in/Sign up</a>   
				</h5>  
			</td>
		</tr>
	</table>
</div>




<div id="parantDiv" style="margin-left: 50px; margin-top: 50px;"> 
<div>
<!-- 				• • = alt key + 0149 -->
 
 					<h1>18th Parliament of Jordan</h1>
 					The 18th Parliament of Jordan was elected at the 2016 Jordanian general election. 130 members were elected and had the right to sit in the National Assembly of Jordan.<br>

					The parliament was opened on 7 November 2016 when King Abdullah II inaugurated the first regular session of the new parliament with a speech from the throne.[1] The King dissolved the parliament on 27 September 2020.[2]<br>
 					   
 					   
 					<br>
 					<h1>List of members</h1>   
 					<br>

The names of the council members are in alphabetical order:<br><br>

1  .Ibtisam Youssef Khalil Al-Nawafleh                         <br>
2  .Ibrahim Hussein Al-Ali Bani Hani                           <br>
3  .Ibrahim Abdel-Razzaq Suleiman Abu Al-Ezz                   <br>
4  .Ibrahim Mahfouz Atallah Al-Badour                          <br>
5  .Ibrahim Mohammed Salman Abu Sayed                          <br>
6  .Ibrahim Musharraf Al-Radwan Al-Quran                       <br>
7  .Ahmed Ibrahim Salama Al-Hmisat                             <br>
8  .Ahmed Hassan Suleiman Al-Fraihat                           <br>
9  .Ahmed Salama Faleh Al-Lozy                                 <br>
10 .Ahmed Mohammed Ali Al-Safadi                               <br>
11 .Intisar Badi Mustafa Hegazy                                <br>
12 .Andrei Murad Mahmoud Abdel-Jalil Hawari                    <br>
13 .Insaf Ahmed Salama Al-Khawaldeh                            <br>
14 .Ahmed Suleiman Awad Al-Raqab                               <br>
15 .Barakat Kamel Abdulkarim Al-Nimr Almhairat Al-Abadi        <br>
16 .Tamer Shaher Syed Mohamed Bino                             <br>
17 .Jamal Issa Jeries Gammoh                                   <br>
18 .Jawdat Ibrahim Nasir Al-Darabah                            <br>
19 .Habis Rakad Khalif Al Shabib                               <br>
20 .Habis Sami Mithqal Al-Fayez                                <br>
21 .Hazem Saleh Saleh Al-Majali                                <br>
22 .Hassan Asri Abdul Qader Al Saud                            <br>
23 .Hassan Mufleh Auda Allah Al-Ajarmeh                        <br>
24 .Hosni Mohamed Fendi Al Sheyab                              <br>
25 .Hussein Attia Musa Al-Qaisi                                <br>
26 .Hammoud Ibrahim Ahmed Al-Zawahra                           <br>
27 .The life of Hussein Ali Massimi                            <br>
28 .Khaled Ramadan Mohamed Awad                                <br>
29 .Khaled Zaher Al-Abed Al-Fanatah                            <br>
30 .Khaled Abdel-Razzaq Musa Al-Hiyari                         <br>
31 .Khaled Mahmoud Mohamed Al-Bakkar Al-Bishtawi               <br>
32 .Khaled Musa Issa Al Abdullah Abu Hassan                    <br>
33 .Khalil Hussein Khalil Attia                                <br>
34 .Khamis Hussein Khalil Attia                                <br>
35 .Khair Abdullah Ayad Abu Sa'ilek                            <br>
36 .Dima Mohamed Tariq Tahboub                                 <br>
37 .Rashid Mohammed Suleiman Al-Shuha                          <br>
38 .Raed Aqleh Mufleh Al-Khazaleh                              <br>
39 .Raja Jazaa Ali Al-Sarayrah                                 <br>
40 .Rasmiya Ali Awad Al-Kaabneh                                <br>
41 .Ramadan Muhammad Falah Al-Hunaiti                          <br>
42 .Randa Abata Abdullah Al Shaar                              <br>
43 .Riyad Muhammad Arsan Al-Azzam                              <br>
44 .Reem Oqla Nawash Abu Dalbouh                               <br>
45 .Zaid Muhammad Falah Al Shawabkeh                           <br>
46 .Zainab Hammoud Salem Al-Zubaid                             <br>
47 .Saud Salem Ali Abu Mahfouz                                 <br>
48 .Suleiman Huwaila Eid Al-Zaben                              <br>
49 .Shah Salem Salim Abu Shusha Al-Amarin                      <br>
50 .Shoaib Khalaf Al Muhammed Al Shdeifat                      <br>
51 .Saleh Sari Muhammad Abu Tayeh                              <br>
52 .Saleh Abdulkarim Shehadeh Al-Armouti                       <br>
53 .Good morning Freej logo                                    <br>
54 .Saddah Ahmed Mohammed Al-Habashneh                         <br>
55 .Safaa Abdullah Mohammed Al Momani                          <br>
56 .Fountains ask for balconies                                <br>
57 .Tarek Sami Hanna Khoury                                    <br>
58 .Atef Youssef Saleh Al-Tarawneh                             <br>
59 .Abdul Ali Muhammad Alyan Al-Mahsiri                        <br>
60 .Abdul Rahman Hussain Muhammad Al-Awaysha                   <br>
61 .Abdul Qadir Salman Nuri Al-Fishikat Al-Azaydah             <br>
62 .Abdul Karim Faisal Dhaifallah Al-Daghmi                    <br>
63 .Abdullah Badi’ Muhammad Abdul-Dayem Al-Qaramas             <br>
64 .Abdullah Ali Odeh Akaileh                                  <br>
65 .Abdullah Ghanem Suleiman Zureikat                          <br>
66 .Abdullah Qassem Mohammed Obeidat                           <br>
67 .Abdel Moneim Saleh Shehadeh Al-Awdat                       <br>
68 .Adnan Saeed Mohammed Al-Rakibat                            <br>
69 .Aziz Muhammad Ali Salman Al-Obaidi                         <br>
70 .His mind is ghamar moflih the customer                     <br>
71 .Ali Khalaf Radwan Al-Hajjaj                                <br>
72 .Ali Salem Fadel Al-Khalayleh                               <br>
73 .Alia Odeh Nassar Abu Halil                                 <br>
74 .Omar Sobhi Shehadeh Qaraqish                               <br>
75 .Awwad Mohammed Salman Al-Zawaida                           <br>
76 .Issa Ali Issa Khashasnah                                   <br>
77 .Ghazi Muhammad Salem Al-Hawamleh                           <br>
78 .Fudayl Munawwar Fudayl Al-Nahar Al-Manasir Al-Abadi        <br>
79 .Silver blood money Abdullah Faleh Abu Qaddoura             <br>
80 .Fawaz Mahmoud Mufleh Al Zoubi                              <br>
81 .Fawzy Shaker Taima Daoud                                   <br>
82 .Faisal Nayef Gad Al-Awar                                   <br>
83 .Qusai Ahmed Abdel Hamid Al-Domaisi                         <br>
84 .Qais Khalil Yaqoub Ziyadin                                 <br>
85 .Kamal Ahmed Mohamed Al-Zogoul                              <br>
86 .Majed Mahmoud Hassan Qweism                                <br>
87 .Mazen Turki Saud Al-Qadi                                   <br>
88 .Majhem Hamad Hussein Al-Suqur                              <br>
89 .Pros of Manizil Attia Al-Sharaa                            <br>
90 .Muhammad Jamil Muhammad Al-Zahrawi                         <br>
91 .Muhammad Husayn Muhammad Abu Sitta al-Ayasra               <br>
92 .Mohammed Rashid Odeh Al-Braiseh                            <br>
93 .Mohamed Saad Salama Al-Atayqa                              <br>
94 .Muhammad Daif Allah Suleiman Al-Falahat                    <br>
95 .Mohamed Abdel Fattah Mahmoud Hodeeb                        <br>
96 .Muhammad Ali Hassan Al-Riyati                              <br>
97 .Mohammed Nasser Salim Al Zoubi                             <br>
98 .Muhammad Noah Ali worshiping judges                        <br>
99 .Mahmoud Ahmed Al-Saud Al-Adwan                             <br>
100.Mahmoud Jamil Khalaf Al-Farahid                            <br>
101.Mahmoud Khalaf Hamad Al-Naimat                             <br>
102.Mahmoud Atallah Younes Titi                                <br>
103.Maram Muslim Ali Al-Hisa                                   <br>
104.Marzouq Hamad Awad Al-Habarneh Al-Dajh                     <br>
105.Mustafa Ramadan Abdel Qader Yaghi                          <br>
106.Mustafa Abdul Rahman Mazen Al-Assaf                        <br>
107.Mustafa Fouad Muhammad Al-Khasawneh                        <br>
108.Musleh Ahmed Musa Tarawneh                                 <br>
109.Moataz Muhammad Musa Abu Rumman                            <br>
110.Muflih Muhammad Muflih Al-Khazaleh                         <br>
111.Manal Ali Abdul Rahman Al-Damour                           <br>
112.Muntaha Abdel-Gawad Ahmed Al-Baoul                         <br>
113.Mansour Seif El-Din Mourad Sajaja                          <br>
114.Musa Barakat Saud Al-Zawahra                               <br>
115.Musa Ali Muhammad al-Wahsh                                 <br>
116.Musa Ali Muhammad Hantash                                  <br>
117.Nabil Kamel Ahmed Al Shishani                              <br>
118.Nabil Mikhail Odeh Al-Ghishan                              <br>
119.Nassar Hassan Salem Al-Qaisi                               <br>
120.Nidal Mahmoud Ahmed Al-Taani                               <br>
121.Nawaf Hussein Farhan Al-Nuaimat                            <br>
122.Nawaf Muqbel Salman Al Mualla Al Zayoud                    <br>
123.Hoda Hussein Mohammed Al-Atoum                             <br>
124.Haya Hussein Ali Muflih Al-Shibli Al-Abadi                 <br>
125.Haitham Jeries The return of Al-Zayadin                    <br>
126.Wael Moussa Youssef Razzouk                                <br>
127.Wasfi Hilal Abdullah Haddad                                <br>
128.Wafaa Saeed Yaqoub Bani Mustafa                            <br>
129.Yahya Muhammad Mahmoud Al-Saud                             <br>
130.Youssef Muhammad Yusuf Al-Jarrah                           <br>

 
<br><br>
<div style="background-color: lightgray"> 
<h1>References</h1> 
 "| مجلس النواب الاردني". 2020-01-27. Archived from the original on 2020-01-27. Retrieved 2022-01-23.
 "إرادة ملكية بحل مجلس النواب". رؤيا الأخباري (in Arabic). Retrieved 2022-01-23.
 "| مجلس النواب الاردني". 2020-02-27. Archived from the original on 2020-02-27. Retrieved 2022-01-23.
 </div>
 
</div>
</div>



</body>
</html>