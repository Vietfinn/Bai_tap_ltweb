<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="vn.iostar.connection.ConnectionProvider"%>
<%@ page import ="java.sql.*"%>
<%
	request.setCharacterEncoding("UTF-8"); // hiển thị tiếng việt trong jva
	String name= request.getParameter("name"); // nhận dữ liệu từ form
	String email= request.getParameter("email");
	String password= request.getParameter("password");
	String phone= request.getParameter("phone");
	String address="";
	String city="";
	String state="";
	String country="";
	
	try{
		Connection con= ConnectionProvider.getConn();
		String sql = "INSERT INTO users VALUES (?,?,?,?,?,?,?,?)";
		PreparedStatement ps= con.prepareStatement(sql); // thực thi truy vấn có tham số
		// chỉ định các cột của table users
		ps.setString(1, name);
		ps.setString(2, email);
		ps.setString(3, phone);
		ps.setString(4, password);
		ps.setString(5, address);
		ps.setString(6, city);
		ps.setString(7, state);
		ps.setString(8, country);
		// thực thi PS
		ps.executeUpdate();
		response.sendRedirect("signup.jsp?msg=done"); // request thông qua url
	}
	catch(Exception e)
	{
		System.out.println(e);
		response.sendRedirect("signup.jsp?msg=invalid"); 
	}
%>