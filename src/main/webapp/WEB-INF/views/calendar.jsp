<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html lang="ko">
<head>
   <title>예약하기</title>
   <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/reservationCSS.css">
 
   <meta http-equiv="content-type" content="text/html; charset=utf-8">
</head>
<body>
<form name="calendarFrm" id="calendarFrm" action="register_list" method="GET">
<SPAN ID=calendar1 STYLE="position:relative;"></SPAN>
		<input type="button" class="today_button" onclick="admin" value="관리자"/> 
		<script type="text/javascript"> showCalendar(nowd,nowm,nowy);</script>
		<center><br />예약을 원하는 것을 선택해 주세요.<br />
		(클릭시 해당 날짜의 예약 현황 페이지로 이동합니다.)<br />
		<a href="main">홈으로 이동</a></center>



<div class="calendar" >

   <!--날짜 네비게이션  -->
   <div class="navigation">
      <a class="before_after_year" href="./calendar.do?year=${today_info.search_year-1}&month=${today_info.search_month-1}">
         &lt;&lt;
      <!-- 이전해 -->
      </a> 
      <a class="before_after_month" href="./calendar.do?year=${today_info.before_year}&month=${today_info.before_month}">
         &lt;
      <!-- 이전달 -->
      </a> 
      <span class="this_month">
         &nbsp;${today_info.search_year}. 
         <c:if test="${today_info.search_month<10}">0</c:if>${today_info.search_month}
      </span>
      <a class="before_after_month" href="/calendar.do?year=${today_info.after_year}&month=${today_info.after_month}">
      <!-- 다음달 -->
         &gt;
      </a> 
      <a class="before_after_year" href="/calendar.do?year=${today_info.search_year+1}&month=${today_info.search_month-1}">
         <!-- 다음해 -->
         &gt;&gt;
      </a>
   </div>

<div class="today_button_div">
<input type="button" class="today_button" onclick="javascript:location.href='/calendar'" value="오늘날짜로"/> 
</div>
<table class="calendar_body">

<thead>
   <tr bgcolor="#CECECE">
      <td class="day sun" >
         일
      </td>
      <td class="day" >
         월
      </td>
      <td class="day" >
         화
      </td>
      <td class="day" >
         수
      </td>
      <td class="day" >
         목
      </td>
      <td class="day" >
         금
      </td>
      <td class="day sat" >
         토
      </td>
   </tr>
</thead>
<tbody>
   <tr>
      <c:forEach var="dateList" items="${dateList}" varStatus="date_status">
         <c:choose>
            <c:when test="${dateList.value=='today'}">
               <td class="today">
                  <div class="date">
                     <a href = "main.jsp">${dateList.date}</a>
                             <c:out value="예약종료">예약가능</c:out>
                  </div>
                  <div>
                  </div>
               </td>
            </c:when>
            <c:when test="${date_status.index%7==6}">
               <td class="sat_day">
                  <div class="sat">
    				 <a href = "main.jsp">${dateList.date}</a>
    				         <c:out value="예약종료">예약가능</c:out>
                  </div>
                  <div>
                  </div>
               </td>
            </c:when>
            <c:when test="${date_status.index%7==0}">
   </tr>
   <tr>
      <td class="sun_day">
         <div class="sun">
                 <a href = "main.jsp">${dateList.date}</a>
                         <c:out value="예약종료">예약가능</c:out>
         </div>
         <div>
         </div>
      </td>
            </c:when>
            <c:otherwise>
      <td class="normal_day">
         <div class="date">
                <a href = "main.jsp">${dateList.date}</a>
                        <c:out value="예약종료">예약가능</c:out>
         </div>
         <div>
 
            <c:choose>
           
                                       <c:when test="${dateList.month eq 6 and dateList.date eq 24}">
                               <span>극성수기<span>
                    </c:when>
                                       <c:when test="${dateList.month eq 6 and dateList.date eq 25}">
                               <span>극성수기<span>
                    </c:when>
                                       <c:when test="${dateList.month eq 6 and dateList.date eq 26}">
                               <span>극성수기<span>
                    </c:when>
                                       <c:when test="${dateList.month eq 6 and dateList.date eq 27}">
                               <span>극성수기<span>
                    </c:when>
                                       <c:when test="${dateList.month eq 6 and dateList.date eq 28}">
                               <span>극성수기<span>
                    </c:when>
                                       <c:when test="${dateList.month eq 6 and dateList.date eq 29}">
                               <span>극성수기<span>
                    </c:when>                   <c:when test="${dateList.month eq 6 and dateList.date eq 30}">
                               <span>극성수기<span>
                    </c:when>                   <c:when test="${dateList.month eq 7 and dateList.date eq 1}">
                               <span>극성수기<span>
                    </c:when>                   <c:when test="${dateList.month eq 7 and dateList.date eq 2}">
                               <span>극성수기<span>
                    </c:when>
               </c:choose>
         </div>
      </td>
            </c:otherwise>
         </c:choose>

      </c:forEach>
</tbody>

</table>
</div>
</form>
</body>
</html>