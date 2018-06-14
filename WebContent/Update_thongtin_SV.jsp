<?xml version="1.0" encoding="utf-8" ?>
<%@page import="com.Model.*"%>
<%@page import="com.dao.ThongTinCN_DAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta content="text/html; charset=UTF-8; " http-equiv="Content-Type" />
<title>Sửa thông tin sinh viên</title>
<% response.addHeader("X-Frame-Options", "SAMEORIGIN"); %> 
<link  rel="stylesheet" href="CSS/SV_Thongtincanhan.css" />
<link  rel="stylesheet" href="CSS/bootstrap.min.css" />
<link  rel="stylesheet" href="CSS/font-awesome.min.css"/>
<% response.addHeader("X-Content-Type-Options", "nosniff");%> 

</head>
<body>
	<div class="container-fluid">

		<div class="row" id="menutop">
			<!--MenuTop-->
			<div class="col-lg-12">
				<header> <a>Menu</a> <nav>
				<ul>
					<li><a href="TrangChuAdmin.jsp">Trang chủ</a></li>
					<li><a href="#">Tin tức</a></li>
					<li><a href="#">Nghiên cứu</a></li>
					<li><a href="#">Liên hệ</a></li>
					<%
							DangNhap dangnhap= (DangNhap)session.getAttribute("dangnhap");
							ThongTinCN tt = new ThongTinCN_DAO().getThongTinCaNhan(dangnhap.getUserName());
					%>

					<li id="logout"><a href="TrangChuAdmin.jsp"><span
							class="glyphicon glyphicon-log-in"></span> Thoát</a></li>
					<li id="logout"><a href="#"><span
							class="glyphicon glyphicon-user"></span> <%=tt.getName()%><br /></a></li>
					

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
		<!--MenuTop-->
		<div class="row">
			<!--Anh chuyen dong-->
			<div class="col-lg-12">
				<div id="myCarousel" class="carousel slide" data-ride="carousel">

					<ol class="carousel-indicators" id="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
					</ol>


					<div class="carousel-inner">
						<div class="item active">
							<img src="image/banner/4.jpg" alt="Los Angeles"
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
		<!--Anh chuyen dong-->

		<div class="row" id="main">
			<!--Main-->

			<div class="col-lg-2" id="mainleft">
				<div class="row">
					<div class="col-lg-12">
						<div class="dropdown">
							<button class="dropbtn">Trang của bạn</button>
							<div class="dropdown-content">
								<a href="SV_ThongTinCaNhan.jsp?username=${dangnhap.userName}">Thông tin cá nhân</a> <a
									href="SV_DangKyDTai.jsp?username=${dangnhap.userName}">Đăng kí đề tài</a> <a
									href="SV_NopDeTai.jsp?username=${dangnhap.userName}">Nộp đề tài</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--Mainleft-->

			<div class="col-lg-10" id="maincenter">
				<div class="row">
					<div class="col-lg-12">
						<button class="dropbtn">Thông tin cá nhân</button>
					</div>
				</div>

				<div class="row">
					<div class="col-lg-12">
						<div class="row">
							<div class="col-lg-2">
								<div class="row">
									<div class="col-lg-12">
										<div class="card" style="position: relative;">
											<img src="image/img_avatar.png" alt="Avatar"
												style="width: 100%"></img>
												<div class="container-fluid">
													<h4>
														<b>John Doe</b>
													</h4>
													<p>Architect & Engineer</p>
												</div>
												<div id="change_icon">
													<button type="button" id="btn_changeicon"
														class="btn btn-default btn-sm">
														<span class="glyphicon glyphicon-camera"></span>
													</button>
												</div>
												<!--Thay doi anh dai dien-->
										</div>
										<!--anh dai dien-->

										<div id="change_mk">
											<p>
												<strong><a href="#">Đổi mật khẩu</a></strong>
											</p>
										</div>
										<!--thay doi mat khau-->

									</div>
								</div>

							</div>

							<div class="col-lg-10">
								<div class="row">
									<div class="col-lg-12">
										<div id="Thongtincanhan">
											<form role="form" class="form-horizontal"  action="Update_info_SV" method="post" >
											
												<div class="form-group has-feedback">
													<label class="col-sm-2 control-label" for="form_diachi">Địa
														chỉ: </label>
													
													<div class="col-sm-8">
														
														<input type="hidden" name="id" value="<%=tt.getId()%>"></input>
														<input type="text" class="form-control" id="form_diachi"
															value="<%=tt.getAddress()%>" name="diachi"></input>
													</div>

													<p>
														<span class="diachi_error_form" id="diachi_error_message"
															style="color: red;"></span>
													</p>
												</div>

												<div class="form-group has-feedback">
													<label class="col-sm-2 control-label" for="form_dienthoai">Điện
														thoại: </label>

													<div class="col-sm-8">
														<input type="text" class="form-control"
															id="form_dienthoai" value="<%=tt.getSDT()%>" name="sdt"></input>
													</div>

													<p>
														<span class="dienthoai_error_form"
															id="dienthoai_error_message" style="color: red;"></span>
													</p>
												</div>

												<div class="form-group has-feedback">
													<label class="col-sm-2 control-label" for="form_email">Email:
													</label>
													<div class="col-sm-8">
														<input type="text" class="form-control" id="form_email"
															value="<%=tt.getEmail()%>" name="email"></input>
													</div>

													<p>
														<span class="email_error_form" id="email_error_message"
															style="color: red;"></span>
													</p>
												</div>
												<div class="row" id="btn_change_info">
													
													<div class="col-sm-10 ">
													 <input type="submit" id="btn_chinhsua"
														class="btn btn-primary" style="float: right;" value="Lưu"/>
														</div>
															
													
													
														
													
												</div>
											</form>
											<!--From thong tin chinh sua-->

											
										</div>
										<!--Thong tin ca nhan-->
										
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
				<!--Noi dung thong tin moi-->


			</div>
			<!--Maincenter-->

		</div>

		<div class="row">
			<div class="col-lg-12">
				<div id="footer">
					<hr>
						<div class="row">
							<div class="col-lg-4">
								<p style="text-align: center;">
									<strong>Phone number: 01659548682</strong>
								</p>
								<p style="text-align: center; padding-left: 10px;">
									<strong>Email id: Tvtri1997@gmail.com</strong>
								</p>
								<p style="text-align: center; padding-right: 80px;">
									<strong>Design by Van Tri</strong>
								</p>
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
	<!--Menutop-->

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

							$('#form_diachi').focusout(function() {
								check_form_diachi();
							});

							$('#form_dienthoai').focusout(function() {
								check_form_dienthoai();
							});

							$('#form_email').focusout(function() {
								check_form_email();
							});

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
								if (dienthoai_lenght == 0 || dienthoai_lenght > 12) {

									$("#dienthoai_error_message").html(
											"Nhập số<br> điện thoại sai!");
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
											"Nhập sai email!");
									$("#email_error_message").show();
									error_email = true;
								}
							}
							function checkErr(){
								if(error_diachi == true || error_dienthoai == true || error_email == true){
									$("#btn_chinhsua").prop('disabled', true);
								}else{
									$("#btn_chinhsua").prop('disabled', false);
								}
							}

						});
	</script>

</body>
</html>