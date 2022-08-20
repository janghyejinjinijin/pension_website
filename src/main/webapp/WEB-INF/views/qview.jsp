<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/header.css">
</head>
<body>
<%@ include file="include/header.jsp" %>
<center>
<h2>Q&A</h2>
<table width="500px">
		<input type="hidden" name="qnum" value="${QboardDto.qnum }" >
		<tr>
			<td bgcolor="#ccc">
				<table>
					<tr>
						<td align="right">NAME</td>
						<td>
						<input class="" type="text" name="qname" value="${QboardDto.qname }" style="width:450px" readonly>
						</td>					
					</tr>
					<tr>
						<td align="right">TITLE</td>
						<td>
						<input class="" type="text" name="qname" value="${QboardDto.qtitle }" style="width:450px" readonly>
						</td>
					</tr>	
					<tr>
						<td align="right">CONTENT	</td>
						<td width="">
						<textarea rows="8" cols="24" name="qcontent" style="width:450px" readonly> ${QboardDto.qcontent } </textarea>
						</td>
					</tr>
					<tr>
						<td align="right">PHONE</td>
						<td>
						<input class="" type="text" name="qname" value="${QboardDto.qphone }" style="width:450px" readonly>
						</td>
					</tr>
					<tr align="right">
						<td colspan="2" align="right">
						<input class="button02" type="button" value="글삭제" onclick="location.href='delete?qnum=${QboardDto.qnum}'">	
						<input class="button01" type="button" value="글목록" onclick="location.href='qna'">
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>	
	
	
		
		
		
</center>	
</body>
</html>