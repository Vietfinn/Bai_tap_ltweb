<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home_page</title>
</head>
<body>
<%
	String email= session.getAttribute("email1").toString();
	String name= session.getAttribute("name1").toString();
%>
<h1>Hello	<%=name %>
<br/>
<br/>

		<%=email %>
		
	</h1>
</body>
</html>