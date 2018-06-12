<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="com.Model.*" %>
    <%@ page import="com.dao.*" %>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta content="text/html; charset=UTF-8; " http-equiv="Content-Type" />
<title>Thay đổi mật khẩu thất bại</title>
<% response.addHeader("X-Frame-Options", "SAMEORIGIN"); %> 
<% response.addHeader("X-Content-Type-Options", "nosniff");%> 
</head>
<body>

	<script src="JS/jquery.js" type="text/javascript"></script>
	<script src="JS/bootstrap.min.js" type="text/javascript"></script>
	<%
	String nameStu="";
	String nameTea="";
	String userName=request.getParameter("username");
	String passWord=request.getParameter("password");
	DangNhap_GV dangnhap= (DangNhap_GV)session.getAttribute("dangnhap");
	
	%>
	<p onmouseover="EventHandler();">'</p>
	
	<script type="text/javascript">
        function EventHandler()
        {
        	<%
        	String temp=userName.substring(0,3);
        	if(temp.equals("151")){%>
        	alert("Tài khoản hoặc mật khẩu không đúng.!");
        	window.location="SV_ThongTinCaNhan.jsp?username=<%=userName%>";
        	<%}else{
        		if(temp.equals("232")){
        	%>
        	alert("Tài khoản hoặc mật khẩu không đúng.!");
        	window.location="GV_ThongTinCaNhan.jsp?username=<%=userName%>";
        		<%}%>
        	<%}%>
        }
</script>
</body>
</html>