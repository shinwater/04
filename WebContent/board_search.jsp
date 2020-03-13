<%@page import="com.sist.model.BoardDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<BoardDTO> search = (List<BoardDTO>)request.getAttribute("List");
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
				if(search.size() != 0) { //검색된 레코드가 있는 경우
					//검색된 레코드 수 만큼 반복해서 웹 브라우저에 출력
					for(int i=0; i<search.size(); i++){
						BoardDTO dto = search.get(i); // board.get(i):주소값 ->dto에 같은주소값 넣기~..
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
		
		<input type="button" value="전체목록"
			onclick="location.href='select.do'"/>
		
		
	</div>
</body>
</html>