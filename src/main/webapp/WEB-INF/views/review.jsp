<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Review Board</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/input.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/header.css">
</head>
<body>
<%@ include file="include/header.jsp" %>


<center>
<h2>리뷰 게시판</h2>
	<hr>
	<table width="930" color="#999" cellpadding="0" cellspacing="0" border="1" style="border-color:#eee"  >
		<tr bgcolor="#555"  align="center" height="30" style="color:#ccc">
			<td>No</td>
			<td>Room</td>
			<td>Writer</td>
			<td>Review</td>
			<td>Score</td>
			<td>Date</td>
		</tr>
		<c:forEach items="${review_list}" var="rdto">
		<tr height="30">
			<td align="center">${rdto.rnum }</td>
			<td align="center">${rdto.rname }</td>
			<td align="center">${rdto.ruser }</td>
			<td >&nbsp;
				<c:choose>
					<c:when test="${fn:length(rdto.rcontent) > 40}">
						<c:out value="${fn:substring(rdto.rcontent,0,29) }" /> ...
					</c:when> 
					<c:otherwise>
						<c:out value="${rdto.rcontent}"/>
					</c:otherwise>
				</c:choose>
			</td>
			<td align="center" style="color:#3a3">${rdto.rscore }</td>
			<td align="center"><c:out value="${fn:substring(rdto.rvdate,5,16)}"/></td>
			
		</tr>		
		</c:forEach>
				
	</table>


<form action="/reviewOk" method="get" name="review_frm">
<table>
	<tr>
		<td bgcolor="#ccc">
			<table>
				<tr>
					<td align="center">Room
					</td>
					<td align="center">Writer
					</td>
					<td align="center" width="300px">Review
					</td>
					<td align="center">Score
					</td>		
					<td>
					&nbsp;
					</td>
				</tr>
				<tr>
					<td>
					<select name="rname" style="width:100px; height:35px"> 
						<option value="java">java</option>
						<option value="python">python</option>
						<option value="css">css</option>
						<option value="oracle">oracle</option>
					</select>
					</td>
					<td>
					<input type="text" name="ruser" value="<% {out.print("GUEST");}%>" style="width:100px; height:30px; text-align:center">
					
					</td>
					<td width="">
					<input type="text" name="rcontent" placeholder="5글자 이상 40자 이하로 입력해 주세요!" style="width:500px; height:30px; text-align:center" >
					</td>
					<td>
					<select name="rscore" style="width:120px; height:35px">
						<option value="★★★★★">5 ★★★★★</option>
						<option value="★★★★☆">4 ★★★★☆</option>
						<option value="★★★☆☆">3 ★★★☆☆</option>
						<option value="★★☆☆☆">2 ★★☆☆☆</option>
						<option value="★☆☆☆☆">1 ★☆☆☆☆</option>
						
					</select>
					</td>
					<td>
					<!-- <input type=submit value="리뷰입력" style="width:100px; height:35px"> -->
					<input class="" type="button" value="작성완료" onclick="inputCheck()">
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>	
</form>

</center>
</body>
</html>