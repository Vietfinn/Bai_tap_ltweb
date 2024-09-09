<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="vn.iostar.connection.ConnectionProvider"%>
<%@ page import ="java.sql.*"%>
<%
	String email= request.getParameter("email");
	String password= request.getParameter("password");
	
	int kt=0;
	try{
		Connection con= ConnectionProvider.getConn();
		Statement st= con.createStatement();
		String sql= "select * from users where email='"+email+"'and password='"+password+"'";
		ResultSet rs= st.executeQuery(sql);
		while (rs.next())
		{
			kt=1;
			String name= rs.getString("name");
			session.setAttribute("email1", email );
			session.setAttribute("name1", name );
			response.sendRedirect("home.jsp");
		}
		if(kt==0)
			response.sendRedirect("login.jsp?msg=noexist");
	}catch(Exception e)
	{
		System.out.println(e);
		response.sendRedirect("login.jsp?msg=invalid");
	}
%>