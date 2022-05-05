<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이젠, 집에서 | 회원가입</title>
<link href="css/styles.css" rel="stylesheet" />
</head>
<body>
<jsp:include page="nav.jsp"></jsp:include>
        <div id="wrap">

	${session.name}님 안녕하세요<br>
	<a href ="modify.jsp">회원정보 수정</a>
	
	</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>