<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약하기</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/join.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/header.css">
</head>
<body>
<%@ include file="include/header.jsp" %>
	<center>
		<h2>예약하기</h2>
		<form action="/doReservation" method="Post" name="reservationList_frm">
		<table width="700" cellpadding="0" cellspacing="0" border="" style="border-color:#eee" align ="center"  >
			<tr>
				<td>
					<span>예약자명</span>
					</td><td>
					<input type="text" name="name" />
				</td>
			</tr>
			<tr>
				<td>
					<span>게스트</span></td><td>
					<input type = "number" name ="rguest"  />
				</td>
			</tr>
			<tr>
				<td>
					<span>룸이름</span></td><td>
					<select name = "room_name">
						<option value = "java">java방</option>
						<option value = "css">css방</option>
						<option value = "oracle">oracle방</option>
						<option value = "python">python방</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>
				<span>예약일자</span></td><td>
				<input type = "date" value="${year}-${month}-${date}" readOnly name="startRdate"/>
				<span> ~ </span>
				<input type = "date" value="${year}-${month}-${date}"  min="${year}-${month}-${date}" name="endRdate"/>
				</td>
			</tr>
			
			<tr>
				<td>
					<span>스페셜</span></td><td>
					<select name = "special">
					<option value = "none">없음</option>
					<option value = "bbq">BBQ</option>
					<option value = "campfire">캠프파이어</option>
					</select>
				</td>
			</tr>
		</table>
		<right>
		<input type = "button" value="예약하기"  onclick="reservationListCheck()"/>
		</right>
		</form>
	</center>
</body>
</html>