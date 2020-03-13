<%@page import="com.sist.model.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	BoardDTO cont=(BoardDTO)request.getAttribute("Cont");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<table border="1" cellspacing="0" width="400">
			<%
				if(cont != null) {//검색된 ㅎ레코드가 있는 경웋ㅎㅎ
			%>
				<tr>
					<th colspan="2" align="center">
						<h3><%=cont.getBoard_writer() %>님 게시물 상세내역</h3>
					</th>
				</tr>
				<tr>
					<th>작성자</th>
					<td><%=cont.getBoard_writer() %></td>
				</tr>
				<tr>
					<th>글제목</th>
					<td><%=cont.getBoard_title() %></td>
				</tr>
				<tr>
					<th>글내용</th>
					<td>
						<textarea rows="8" cols="30" readonly><%=cont.getBoard_cont() %></textarea>
					</td>
				</tr>
				<tr>
					<th>조회수</th>
					<td><%=cont.getBoard_hit() %></td>
				</tr>
				<tr>
					<td><%=cont.getBoard_regdate() %></td>
					<th>작성일자</th>
				</tr>
			<% } else { %>
			 		<tr>
					<td colspan="2" align="center">
						<h3>검색된 레코드가 없습니다.</h3>
					</td>
					</tr>
			<% } %>
			<tr>
				<td colspan="2" align="center">
					<a href="<%=request.getContextPath() %>/update.do?no=<%=cont.getBoard_no()%>">[수정]</a><!--  -->
					<!-- 뭐 데이터가 많이 넘어오는게 아니라 글번호만 받으면되니까 그냥 jsp페이지로 넘겨버려야징.. 
						다른것도 넘겨줘도 되는데 ! 유지보수엔 좋지않앗 -->
					<a href="board_delete.jsp?no=<%=cont.getBoard_no()%>">[삭제]</a>
					<a href="select.do">[전체목록]</a>
				</td>
			</tr>
		
		</table>
	</div>
</body>
</html>