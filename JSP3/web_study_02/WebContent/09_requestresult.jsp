<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Request Example</h1>
	<%
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String studentNum = request.getParameter("studentNum");
		String sex = request.getParameter("sex");
		String major = request.getParameter("major");
		
		if(sex.equals("man")){
			  sex = "남자";
			 }else{
			  sex = "여자";
			 }
	%>

	성명:<%=name%><br>
	학번:<%=studentNum%><br>
	성별:<%=sex%><br>
	전공:<%=major%>
</body>
</html>