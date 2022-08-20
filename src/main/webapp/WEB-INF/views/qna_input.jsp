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

<h2>Q&A</h2>
<hr>
	<form action="/qnaOk" method="get" name="qna_frm">
	<table width="500px">
		<tr>
			<td bgcolor="#ccc">
				<table>
					<tr>
						<td align="right">NAME</td>
						<td>
						<input type="text" name="qname" placeholder="연락받을 분의 성함을 입력해주세요" style="width:450px" >
						</td>					
					</tr>
					<tr>
						<td align="right">TITLE</td>
						<td>
						<input type="text" name="qtitle" placeholder="제목을 입력해 주세요!" style="width:450px" >
						</td>
					</tr>	
					<tr>
						<td align="right">CONTENT	</td>
						<td width="">
						<textarea class="" rows="8" cols="24" name="qcontent" placeholder="질문 내용을 입력해 주세요" style="width:450px"></textarea>
						</td>
					</tr>
					<tr>
						<td align="right">PHONE</td>
						<td>
						<input type="text" name="qphone" placeholder="연락처를 입력해주세요" style="width:450px">
						</td>
					</tr>
					<tr>
						<td colspan="2" align="right">
						<input class="" type="button" value="글목록" onclick="location='qna'">
						<input class="" type="reset" value="내용 지우기">
						<input class="" type="button" value="작성완료" onclick="qnaCheck()">	
						</td>
					</tr>
					
				</table>
			</td>
		</tr>
	</table>	
	</form>		
	
		</td>
	</tr>
</table>
</center>
</body>
</html>