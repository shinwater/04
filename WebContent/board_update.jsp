<%@page import="com.sist.model.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	BoardDTO dto = (BoardDTO)request.getAttribute("cont");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div align="center">
		<hr width="50%" color="skyblue">
			<h3>BOARD1 테이블에 게시물 수정 폼</h3>
		<hr width="50%" color="skyblue">
		
		<form method="post" action="<%=request.getContextPath()%>/updateOk.do"><!-- 폼태그안의 데이터들도 같이넘어간돵 -->
			<!--서블릿으로 넘어갈때 글번호를 가져가야해! 
				type="hidden":<form> 태그에는 보이지않고 , 데이터를 서블릿으로 전송하는 속성 !!!쭝요! -->
			<input type="hidden" name="no" value="<%=dto.getBoard_no()%>">
			
			
			<table border="1" cellspacing="0" width="400">
				<tr>
					<th>작성자</th>
					<td><input type="text" name="writer"
						value="<%=dto.getBoard_writer() %>" readonly/> </td>
						
				</tr>
				<tr>
					<th>글제목</th>
					<td><input type="text" name="title" 
						value="<%=dto.getBoard_title() %>"/> </td>
				</tr>
				<tr>
					<th>글내용</th>
					<td><textarea rows="7" cols="30" name="content"><%=dto.getBoard_cont() %></textarea> </td><!-- !!!여기 바로붙여주기 -->
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="pwd" /> </td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="글쓰기" /> &nbsp;&nbsp;
						<input type="reset" value="취소" /> &nbsp;&nbsp;
					</td>
				</tr>
			</table>
		</form>
	
	</div>
</body>
</html>