<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>예약하기</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/reservationCSS.css">
</head>
<body>
<SCRIPT LANGUAGE="JavaScript">
     var monthName=new Array("1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월")
     var monthDays=new Array(31,28,31,30,31,30,31,31,30,31,30,31)
     var now=new Date
     var nowd=now.getDate()
     var nowm=now.getMonth()
     var nowy=now.getYear()+1900
     function showCalendar(day,month,year)
     {
  if ((year%4==0||year%100==0)&&(year%400==0)) monthDays[1]=29; else monthDays[1]=28 //leap year test
  var firstDay=new Date(year,month,1).getDay()
  var calStr="<table border=0 cellpadding=5 cellspacing=1 align=center bgcolor=#CCCCCC>"
  calStr+="<tr bgcolor=white><td colspan=7>"
  calStr+="<table border=0 cellpadding=0 cellspacing=0 align=center width=100%>"
  calStr+="<td><font size='2'><a href='javascript:;' onClick='nowm--; if (nowm<0) { nowy--; nowm=11; } showCalendar(nowd,nowm,nowy)' title='이전 월'> <<</a></font></td>"
  calStr+="<td align=center><font size='2'>"+monthName[month].toUpperCase()+" "+year+"년</font></td>"
  calStr+="<td align=right><font size='2'><a href='javascript:;'  onClick='nowm++; if (nowm>11) { nowy++; nowm=0; } showCalendar(nowd,nowm,nowy)' title='다음 월'> >></a></font></td>"
  calStr+="</tr></table>"
  calStr+="</td></tr>" 
  calStr+="<tr align=center bgcolor='#336666'>"
  calStr+="<th><font color='red' size='2'>일</font></th>"
  calStr+="<th><font color='white' size='2'>월</font></th>"
  calStr+="<th><font color='white' size='2'>화</font></th>"
  calStr+="<th><font color='white' size='2'>수</font></th>"
  calStr+="<th><font color='white' size='2'>목</font></th>"
  calStr+="<th><font color='white' size='2'>금</font></th>"
  calStr+="<th><font color='#66CCFF' size='2'>토</font></th>" 
  calStr+="</tr>" 
  var dayCount=1
  calStr+="<tr bgcolor=white>"
  for (var i=0;i<firstDay;i++) calStr+="<td> "  //공백
  for (var i=0;i<monthDays[month];i++)
  {
 
  if(dayCount==nowd) {
  calStr+="<td align=center bgcolor='#DFE7DE'><font size='2'><b>" // 오늘 날짜일때 배경색 지정,글자 진하게
  } else {
  calStr+="<td align=center><font size='2'>"  // 오늘 날짜가 아닐때 배경색 지정
  }
  calStr+="<a href='register_list.jsp?year="
calStr +=year
calStr+="&month="
calStr+=(month+1)
calStr+="&day="
calStr+= dayCount
calStr+="'>" // 링크설정
  calStr+=dayCount++
  calStr+="</a>"
  if(dayCount==nowd) {
  calStr+="</b>"; // 오늘 날짜일때 글자 진하게
  } else {
  calStr+="";  // 오늘 날짜가 글자 진하게 안함
  }
        calStr+="</font>"
   if ((i+firstDay+1)%7==0&&(dayCount<monthDays[month]+1)) calStr+="<tr bgcolor=white>"
  }
  var totCells=firstDay+monthDays[month];
  for (var i=0;i<(totCells>28?(totCells>35?42:35):28)-totCells;i++) calStr+="<td> "
	calStr += "</table></form>";
  calendar.innerHTML=calStr;

     }
    
    
</script>
<SPAN ID=calendar STYLE="position:relative;"></SPAN>

		<script type="text/javascript"> showCalendar(nowd,nowm,nowy);</script>
		<center><br />예약을 원하는 날짜를 선택해 주세요.<br />
		(클릭시 해당 날짜의 예약 현황 페이지로 이동합니다.)<br /><a href="../main.jsp">홈으로 이동</a></center>
</body>
</html>