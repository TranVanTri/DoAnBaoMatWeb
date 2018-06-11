<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta content="text/html; charset=UTF-8; X-Content-Type-Options=nosniff" http-equiv="Content-Type" />
<title>Đăng nhập thất bại</title>
<script type="text/javascript">
        function EventHandler()
        {
        	alert("Tài khoản hoặc mật khẩu không đúng.!");
        	window.location="TrangChuAdmin.jsp";
        }
</script>
</head>
<body>
	<p onmouseover="EventHandler();">'</p>
	
	<script src="JS/jquery.js" type="text/javascript"></script>
	<script src="JS/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>