<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lognin_page</title>
</head>
<body>
	
	<form action="loginAction.jsp" method="post">
		
		<input type="email" name="email" id= "email" placeholder= "Nhap email " required>
		<input type="password" name="password" id= "password" placeholder= "Nhap mat khau " required> 
		<input type="submit" value= "dang nhap">
	</form>
	<br/>
	<h2><a href ="signup.jsp">Dang ky</a></h2>
	<h2>
		<a href ="forgotPassword.jsp">Ban quen mat khau</a>
	</h2>
	<br/>
	<br/>
	<br/>
	<br/>
	<div class='whysignlogin'>
		<%
		String msg= request.getParameter("msg");
		if ("noexist".equals(msg))
		{
	%>
		<h2>Sai email hoac password </h2>
	<%} %>	
		
		<%
		if ("invalid".equals(msg))
		{
	%>	
		<h2>Loi dang nhap</h2>
	<%} %>	
	</div>
</body>
</html>