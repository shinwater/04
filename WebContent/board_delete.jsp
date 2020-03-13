<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	int board_no = Integer.parseInt(request.getParameter("no"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<hr width="50%" color="orange"/>
			<h3>BOARD1 테이블 게시글 삭제 폼</h3>
		<hr width="50%" color="orange"/>
		
		<form method="post" action="<%=request.getContextPath() %>/delete.do">
		
			<!-- 수정할때나 삭제할때는 무조건 글번호 들어가야해욧 !!!중요!!!-->
			<input type="hidden" name="no" value="<%=board_no %>"/>
			
			<table border="1" cellspacing="0" width="350">
				<tr>
					<th>삭제할 비밀번호</th>
					<td><input type="password" name="pwd"/> </td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="글삭제"/> &nbsp;&nbsp;
						<input type="reset" value="취소"/>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>