<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
	System.out.println("system�α׾ƿ��ϴ���1"); 
	
 session.invalidate();
 response.sendRedirect("../index.jsp");
%>
</body>
</html>