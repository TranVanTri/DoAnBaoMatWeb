<?xml version="1.0" encoding="utf-8" ?>
<%@page import="com.dao.DuyetDT_SV_DAO"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>
<%@page import="com.dao.Connect" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<title>Duyệt đề tài</title>
<link type="text/css" rel="stylesheet" href="CSS/SV_Thongtincanhan.css" />
<link rel="stylesheet" href="CSS/bootstrap.min.css" />
<link rel="stylesheet" href="CSS/font-awesome.min.css"/>

</head>
<body>
	<div class="container-fluid">

		<div class="row" id="menutop">
			<%--MenuTop--%>
			<div class="col-lg-12">
				<header> <a>Menu</a> <nav>
				<ul>
					<li><a href="TrangChuAdmin.jsp">Trang chủ</a></li>
					<li><a href="#">Tin tức</a></li>
					<li><a href="#">Nghiên cứu</a></li>
					<li><a href="#">Liên hệ</a></li>

					<li id="logout"><a href="TrangChuAdmin.jsp"><span
							class="glyphicon glyphicon-log-in"></span> Thoát</a></li>
					<li id="logout"><a href="#"><span
							class="glyphicon glyphicon-user"></span> admin  <br /></a></li>

					

				</ul>

				</nav>
				<div>
					<a id="i-nav" href="#"><span
						class="glyphicon glyphicon-align-justify"
						style="font-size: 32px; color: white;"></span></a>
				</div>

				</header>
			</div>
		</div>
		<%--MenuTop--%>
		<div class="row">
			<%--Anh chuyen dong--%>
			<div class="col-lg-12">
				<div id="myCarousel" class="carousel slide" data-ride="carousel">

					<ol class="carousel-indicators" id="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
					</ol>


					<div class="carousel-inner">
						<div class="item active">
							<img src="image/banner/1.jpg" alt="Los Angeles"
								style="width: 100%;">
						</div>

						<div class="item">
							<img src="image/banner/2.jpeg" alt="Chicago" style="width: 100%;">
						</div>

						<div class="item">
							<img src="image/banner/3.png" alt="New york" style="width: 100%;">
						</div>
					</div>


					<a class="left carousel-control" href="#myCarousel"
						data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#myCarousel"
						data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right"></span> <span
						class="sr-only">Next</span>
					</a>
				</div>

			</div>
		</div>
		<%--Anh chuyen dong--%>

		<div class="row" id="main">
			<%--Main--%>

			<div class="col-lg-2" id="mainleft">
				<div class="row">
					<div class="col-lg-12">
						<div class="dropdown">
							<button class="dropbtn">Trang của bạn</button>
							<div class="dropdown-content">
								<a href="TrangChu.jsp">Hướng dẫn chung</a> 
								<a href="Admin_ThongBaoDuAnMoi.jsp?username=admin">Thông báo PDT</a> 
							</div>
						</div>
					</div>
				</div>
			</div>
			<%--Mainleft--%>

			<div class="col-lg-10" id="maincenter">
				<div class="row">
					<div class="col-lg-12">
						<button class="dropbtn">Duyệt đề tài</button>
					</div>
				</div>

				<!--From DUYỆT ĐỀ TÀI-->
				<%
				int idSub=Integer.parseInt(request.getParameter("idSub"));
				int idAcc=Integer.parseInt(request.getParameter("idAcc"));
				%>
				<% Connection conn= null;
				conn=Connect.getConnection();
				String userName=DuyetDT_SV_DAO.getUserNameByIDAcc(idAcc, conn);
				String temp=userName.substring(0,3);
				boolean flag=true;
				Statement stsm=null;
				ResultSet rs=null;
				if(temp.equals("151")){
					flag=true;
					String sql="select s.idSub,s.nameSub,stu.nameStu,accs.ngayDangKy,acc.type,acc.idAcc"+
							" from account_subject as accs, account as acc, subject as s, student_account as stua, student as stu"+
							" where accs.idSub=s.idSub and accs.idAcc=acc.idAcc and acc.idAcc=stua.idAcc and stua.idStu=stu.idStu and s.idSub="+idSub+" and accs.idAcc="+idAcc;
					
					try{
						stsm=conn.createStatement();
						rs=stsm.executeQuery(sql);
						
					}catch(SQLException ex){
						ex.printStackTrace();
					}
				}else{
					if(temp.equals("232")){
						flag=false;
						String sql="select s.idSub,s.nameSub,tea.nameTea,accs.ngayDangKy,acc.type,acc.idAcc"+
								" from account_subject as accs, account as acc, subject as s, teacher_account as teaa,teacher as tea"+
								" where accs.idSub=s.idSub and accs.idAcc=acc.idAcc  and acc.idAcc=teaa.idAcc and teaa.idTea=tea.idTea and s.idSub="+idSub+" and accs.idAcc="+idAcc;
						
						try{
							stsm=conn.createStatement();
							rs=stsm.executeQuery(sql);
							
						}catch(SQLException ex){
							ex.printStackTrace();
						}
					}
				}
				%>
				<%while(rs.next()){ %>
				<form role="form" class="form-horizontal" action="DuyetDT_SV" method="post">
					<input type="hidden" name="idSub" id="idSub" value="<%=request.getParameter("idSub") %>"/>
					<input type="hidden" name="idAcc" id="idAcc" value="<%=rs.getString("idAcc") %>"/>
					<div class="form-group has-feedback">
						<label class="col-lg-3 control-label" for="Ten_detai"
							style="text-align: right;">Tên đề tài:</label>
						<div class="col-lg-9">
							<input type="text" class="form-control" id="Ten_detai"
								name="tenDT" value="<% out.print(rs.getString("nameSub")); %>">
								<p>
									<span class="Ten_Detai_error_form" id="Ten_Detai_error_message"
										style="color: red;"></span>
								</p>
						</div>

					</div>
					
					<div class="form-group has-feedback">
						<label class="col-lg-3 control-label" for="Nguoi_dangky"
							style="text-align: right;">Người đăng ký:</label>
						<div class="col-lg-9">
							<input type="text" class="form-control" id="Nguoi_dangky"
								name="nguoidangky" value="<% 
									if(flag){
										out.print(rs.getString("nameStu"));
									}else{
										out.print(rs.getString("nameTea"));
									}
								
								%>">
								<p>
									<span class="Ten_Detai_error_form" id="Nguoi_Dangky_error_message"
										style="color: red;"></span>
								</p>
						</div>

					</div>
					
					<div class="form-group has-feedback">
						<label class="col-lg-3 control-label" for="Hannop"
							style="text-align: right;">Hạn nộp:</label>
						<div class="col-lg-3">
							<input type="date" class="form-control" id="hannop"
								name="hannop"/>
								<p>
									<span class="Hannop_error_form" id="Hannop_error_message"
										style="color: red;"></span>
								</p>
						</div>

					</div>
						<%} %>
					<input type="submit" id="btn_tao" class="btn btn-success" style="margin-left: 280px;" value="Duyệt đề tài"/>
				</form>
				<!--From DUYỆT ĐỀ TÀI-->

			</div>
			<%--Maincenter--%>

		</div>

		<div class="row">
			<div class="col-lg-12">
				<div id="footer">
					<hr>
						<div class="row">
							<div class="col-lg-4">
								<p style="text-align: center; padding-right: 75px;">
									<strong>Design by Van Tri</strong>
								</p>
								<p style="text-align: center;">
									<strong>Phone number: 01659548682</strong>
								</p>
								<p style="text-align: center; padding-left: 0px;">
									<strong>Email: Tvtri1997@gmail.com</strong>
								</p>
								
							</div>
							<div class="col-lg-8">
								<div class="text-center center-block">
									<br /> <a href="https://www.facebook.com/bootsnipp"><i
										id="social-fb" class="fa fa-facebook-square fa-3x social"></i></a>
									<a href="https://twitter.com/bootsnipp"><i id="social-tw"
										class="fa fa-twitter-square fa-3x social"></i></a> <a
										href="https://plus.google.com/+Bootsnipp-page"><i
										id="social-gp" class="fa fa-google-plus-square fa-3x social"></i></a>
									<a href="mailto:bootsnipp@gmail.com"><i id="social-em"
										class="fa fa-envelope-square fa-3x social"></i></a>
								</div>
							</div>

						</div>
						<hr>
				</div>
			</div>
		</div>
	</div>



		<script src="JS/jquery.js" type="text/javascript"></script>
	<script src="JS/bootstrap.min.js" type="text/javascript"></script>

	<script>
		$(document).ready(function() {
			$('#i-nav').click(function() {
				var headerHeight = $('header').css('height');
				if (headerHeight == '60px') {
					$('ul').toggleClass('show');
					$('header').css({
						'height' : '400px'
					});
				} else {
					$('ul').toggleClass('show');
					$('header').css({
						'height' : '60px'
					});
				}

			});

		});
	</script>
	<%--Menu top--%>

	<script>
		$(document)
				.ready(
						function() {

							$("#ho_error_message").hide();
							$("#ten_error_message").hide();
							$("#ngaysinh_error_message").hide();
							$("#dienthoai_error_message").hide();
							$("#gioitinh_error_message").hide();
							$("#email_error_message").hide();
							$("#diachi_error_message").hide();

							var error_ho = false;
							var error_ten = false;
							var error_gioitinh = false;
							var error_diachi = false;
							var error_dienthoai = false;
							var error_ngaysinh = false;
							var error_email = false;

							$('#form_ho').focusout(function() {
								check_form_ho();

							});

							$('#form_ten').focusout(function() {
								check_form_ten();
							});

							$('#form_gioitinh').focusout(function() {
								check_form_gioitinh();
							});

							$('#form_diachi').focusout(function() {
								check_form_diachi();
							});

							$('#form_dienthoai').focusout(function() {
								check_form_dienthoai();
							});

							$('#form_email').focusout(function() {
								check_form_email();
							});

							$('#form_ngaysinh').focusout(function() {
								check_form_ngaysinh();
							});

							function check_form_ho() {
								var ho_lenght = $('#form_ho').val().length;
								if (ho_lenght == 0) {

									$("#ho_error_message")
											.html("Chưa nhập họ!");
									$("#ho_error_message").show();
									error_ho = true;
								} else {
									$("#ho_error_message").hide();
								}
							}

							function check_form_ten() {
								var ten_lenght = $('#form_ten').val().length;
								if (ten_lenght == 0) {

									$("#ten_error_message").html(
											"Chưa nhập tên!");
									$("#ten_error_message").show();
									error_ten = true;
								} else {
									$("#ten_error_message").hide();
								}
							}

							function check_form_gioitinh() {

							}

							function check_form_diachi() {
								var diachi_lenght = $('#form_diachi').val().length;
								if (diachi_lenght == 0) {

									$("#diachi_error_message").html(
											"Chưa nhập <br> địa chỉ!");
									$("#diachi_error_message").show();
									error_diachi = true;
								} else {
									$("#diachi_error_message").hide();
								}
							}

							function check_form_dienthoai() {
								var dienthoai_lenght = $('#form_dienthoai')
										.val().length;
								if (dienthoai_lenght == 0) {

									$("#dienthoai_error_message").html(
											"Chưa nhập số<br> điện thoại!");
									$("#dienthoai_error_message").show();
									error_dienthoai = true;
								} else {
									$("#dienthoai_error_message").hide();
								}
							}

							function check_form_email() {
								var pattern = new RegExp(
										/^[+a-zA-Z0-9._-]+@[+a-zA-Z0-9._-]+\.[a-zA-Z]{2,4}$/i);
								if (pattern.test($("#form_email").val())) {

									$("#email_error_message").hide();
								} else {
									$("#email_error_message").html(
											"Chưa nhập email!");
									$("#email_error_message").show();
									error_email = true;
								}
							}

							function check_form_ngaysinh() {
								var ngaysinh_lenght = $('#form_ngaysinh').val().length;
								if (ngaysinh_lenght == 0) {

									$("#ngaysinh_error_message").html(
											"Chưa nhập<br> ngày sinh!");
									$("#ngaysinh_error_message").show();
									error_ngaysinh = true;
								} else {
									$("#ngaysinh_error_message").hide();
								}
							}
						});
	</script>
</body>
</html>