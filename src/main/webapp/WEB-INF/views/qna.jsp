<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Q&A</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/input.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/header.css">
</head>
<body>
<%@ include file="include/header.jsp" %>
<center>
<h2>Q&A 게시판</h2>

	<hr>
	<table width="700" color="#999" cellpadding="0" cellspacing="0" border="" style="border-color:#eee"  >
		<tr bgcolor="#555"  align="center" height="30" style="color:#ccc">
			<td>No</td>
			<td>NAME</td>
			<td>TITLE</td>
			<td>PHONE</td>
			<td>Date</td>
		</tr>
		<c:forEach items="${qna_list}" var="qdto">
		<tr height="30">
			<td align="center">${qdto.qnum }</td>
			<td align="center">${qdto.qname }</td>
			<td width="50%">&nbsp;
			<a href="qview?qnum=${qdto.qnum }" >
				<c:choose>
					<c:when test="${fn:length(qdto.qtitle) > 20}">
						<c:out value="${fn:substring(qdto.qcontent,0,19) }" /> ...
					</c:when> 
					<c:otherwise>
						<c:out value="${qdto.qtitle}"/>
					</c:otherwise>
				</c:choose>
			</a>
			</td>
			<td align="center">${qdto.qphone }</td>
			<td align="center"><c:out value="${fn:substring(qdto.qdate,5,16)}"/></td>
		</tr>		
		</c:forEach>
		<tr>
			<td colspan="6" align="right">
			<input class="" type="button" value="질문작성" onclick="location.href='qna_input'">
			</td>
		</tr>
	</table>
	
	
</center>
</body>
</html>