<%@page import="model.BoardBean"%>
<%@page import="model.BoardDAO"%>
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
	<h2>게시글 삭제</h2>
<%
	BoardDAO bdao = new BoardDAO();
	int num = Integer.parseInt(request.getParameter("num"));
	BoardBean bean = bdao.getOneUpdateBoard(num);
	
	
%>	
	<form action="BoardDeleteProc.jsp" method="post">
            <table width="600" border="1" bgcolor="skyblue">
                <tr height="40">
                    <td width="120" align="center">작성자</td>
                    <td width="180" align="center"><%=bean.getWriter()%></td>
 
                    <td width="120" align="center">작성일</td>
                    <td width="180" align="center"><%=bean.getReg_date()%></td>
                </tr>
 
                <tr height="40">
                    <td width="120" align="center">제목</td>
                    <td align="center" colspan="3"><%=bean.getSubject()%></td>
                </tr>
 
                <tr height="40">
                    <td width="120" align="center">패스워드</td>
                    <td align="Left" colspan="3"><input type="password"
                        name="password" size="60"></td>
                </tr>
 
 
                <tr height="40">
                    <td align="center" colspan="4"><input type="hidden" name="num"
                        value="<%=num%>">
                    <!-- 처리파일에 num값을 그대로 넘겨준다 (삭제하기 위해서) --> <input type="submit"
                        value="글삭제"> &nbsp;&nbsp; <input type="button"
                        onclick="location.href='BoardList.jsp'" value="목록보기"></td>
                </tr>
 
 
            </table>
        </form>
</div>


</body>
</html>