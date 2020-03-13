<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<hr width="50%" color="red"/>
		<h3>BOARD1 메인 페이지 </h3>
		<hr width="50%" color="red"/>
		<br/><br/><br/><br/><br/><br/>
		
		<%-- request.getContextPath() : 현재 프로젝트명을 반환하는 메서드 
		<%-- <a href = "<%=request.getContextPath()%>/select">이렇게 써도되고 아래처럼 써도되고!!--%>
		<a href="<%=request.getContextPath()%>/select.do">[레코드 검색]</a>
	</div>
</body>
</html>