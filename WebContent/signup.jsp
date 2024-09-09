<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Signup_page</title>
</head>
<body>
	<%
		String msg= request.getParameter("msg");
		if ("done".equals(msg))
		{
	%>
		<h2>Dang ky thanh cong </h2>
	<%} %>	
		
	<%
	if ("invalid".equals(msg))
	{
%>
	<h2>Dang ky khong  thanh cong </h2>
<%} %>	

	
	<form action="signupAction.jsp" method="post">
		<input type="text" name="name" id= "name" placeholder= "Nhap ho ten " required>
		<input type="email" name="email" id= "email" placeholder= "Nhap email " required>
		<input type="password" name="password" id= "password" placeholder= "Nhap mat khau " required>
		<input type="number" name="phone" id= "phone" placeholder= "Nhap sodt " required>
		<input type="submit" value= "dang ky">
	</form>
	<br/>
	<h2><a href ="login.jsp">Dang nhap</a></h2>
</body>
</html>