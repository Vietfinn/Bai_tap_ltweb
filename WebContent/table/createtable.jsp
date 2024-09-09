<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="vn.iostar.connection.ConnectionProvider"%>
<%@ page import ="java.sql.*"%>
<%
	try{
		Connection con = ConnectionProvider.getConn();
		Statement st = con.createStatement(); // thực thi truy vấn ko tham số
		
		//String q1= "create table users(name varchar(100), email varchar(100)primary key,phone bigint, password varchar(100), address varchar(500),city varchar(100), state varchar(100), country varchar(100))";
		String q1= "create table product(id int, name varchar(500), category varchar(100), price bigint, active varchar(100))";
		System.out.println(q1);
		st.execute(q1);
		System.out.println("tao bang thanh cong");
		con.close();
	}
	catch(Exception e)
	{
		System.out.println(e);	
	}
%>