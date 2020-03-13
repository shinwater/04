
<%@page import="com.sist.model.BoardDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<BoardDTO> board = (List<BoardDTO>)request.getAttribute("List");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<hr width="50%" color="tomato">
			<h3>BOARD1 테이블 전체 게시물 목록</h3>
		<hr width="50%" color="tomato">
		<br/><br/>
		<table border="1" cellspacing="0" width="400">
			<tr>
				<th> 글번호</th><th> 글제목</th>
				<th> 쪼회수</th><th> 작성일자</th>
			</tr>
			
			<%
				if(board.size() != 0) { //검색된 레코드가 있는 경우
					//검색된 레코드 수 만큼 반복해서 웹 브라우저에 출력
					for(int i=0; i<board.size(); i++){
						BoardDTO dto = board.get(i); // board.get(i):주소값 ->dto에 같은주소값 넣기~..
					%>
						<tr>
							<td><%= dto.getBoard_no() %></td>
							<td>
								<a href="cont.do?no=<%= dto.getBoard_no() %>">
								<%= dto.getBoard_title() %></a>
							</td>
							<td><%= dto.getBoard_hit() %></td>
							<td><%= dto.getBoard_regdate() %></td>
						</tr>
				<% }//for문 end
				}else{ //검색된 레코드가 없는 경우
				%> 
					<tr>
						<td colspan="4" align="center">
							<h3>검색된 렡코드가 없습니당.</h3>
						</td>
					</tr>
			 <% } %>
		
		</table>
		<br/>
		<hr width="50%" color="tomato">
		<br/>
		<input type="button" value="글쓰기"
			onclick="location.href='board_write.jsp'"/>
		<br/>
		<form method="post" action="<%=request.getContextPath()%>/search.do">
			<select name="find_field">
				<option value="title">제목</option>
				<option value="cont">내용</option>
				<option value="title_cont">제목+내용</option>
			</select>
			<input type="text" name="find_name" size="15" />
			<input type="submit" value="검색" />
			
		</form>
		
		
		
	</div>
</body>
</html>