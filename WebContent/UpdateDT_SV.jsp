<?xml version="1.0" encoding="utf-8" ?>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="com.dao.SV_DangkiDeTai_DAO"%>
<%@page import="com.Model.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1"/>

	<link type="text/css" rel="stylesheet" href="CSS/SV_DangKyDTai.css" />
<link rel="stylesheet" href="CSS/bootstrap.min.css" />
<link rel="stylesheet" href="CSS/font-awesome.min.css"/>
				<title>Sửa thông tin đề tài</title>
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

					<li id="logout"><a href="TrangChuAdmin.jsp"><span
							class="glyphicon glyphicon-log-in"></span> Thoát</a></li>
					<li id="logout"><a href="#"><span
							class="glyphicon glyphicon-user"></span> ${dangnhap.nameStu}<br /></a></li>

					<form id="search">
						<div class="input-group">
							<input type="text" class="form-control" placeholder="Search">
								<div class="input-group-btn">
									<button class="btn btn-default" type="submit" title="Search">
										<i class="glyphicon glyphicon-search"></i>
									</button>
								</div>
						</div>
					</form>

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
								<a href="SV_ThongTinCaNhan.jsp?username=${dangnhap.userName}">Thông tin cá nhân</a>
								<a href="SV_DangKyDTai.jsp?username=${dangnhap.userName}">Đăng kí đề tài</a>
								<a href="SV_NopDeTai.jsp?username=${dangnhap.userName}">Nộp đề tài</a>

							</div>
						</div>
					</div>
				</div>
			</div>
			<!--Mainleft-->

			<div class="col-lg-10" id="maincenter">
				<div class="row">
					<div class="col-lg-12">
						<button class="dropbtn">Đăng ký đề tài</button>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="row">
							<div class="col-lg-4">
								<h2>Sửa đề tài</h2>
							</div>
						</div>
						<hr>
							<div class="row">
								<div class="col-lg-8 col-md-offset-2">
								<%
									int id =Integer.parseInt(request.getParameter("idDT"));
									SV_DangKyDT svdt= new SV_DangkiDeTai_DAO().find(id);
								
								%>
									<form role="form" class="form-horizontal" method="post" action="Update_DT">
										
										<div class="form-group has-feedback">
											<label class="col-lg-2 control-label" for="tenDT_sua"
												style="text-align: right;">Tên đề tài:</label>
											<div class="col-lg-10">
												<input type="hidden" name="idDT" value="<%=svdt.getIdSub()%>"></input>
												<input type="text" class="form-control" id="tenDT"
													name="tenDT" value="<%=svdt.getNameSub()%>"></input>
												<p>
													<span class="Ten_Detai_error_form"
														id="Ten_Detai_error_message" style="color: red;"></span>
												</p>
											</div>

										</div>

										<div class="form-group has-feedback">
											<label class="col-lg-2 control-label" for="noidungDT"
												style="text-align: right;">Nội dung: </label>
											<div class="col-lg-10">
												<textarea class="form-control" id="noidungDT"
													name="noidungDT" ><%=svdt.getContentSub()%></textarea>
											</div>
										</div>
										<div class="row">
											<div class="col-lg-2 col-sm-offset-11">
												<button type="submit" id="btn_update" 
													class="btn btn-primary" style="margin-left: -18px;" >Update</button>
													
													
											</div>


										</div>

									</form>
								</div>
							</div>
					</div>
				</div>

				<hr>
					<!-- Modal -->


					
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
		<!--footer-->
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
		$(document).ready(
				function() {

					$("#Ten_Detai_error_message").hide();

					var error_Ten_Detai = false;

					$('#tenDT').focusout(function() {
						check_form_tendetai();

					});

					function check_form_tendetai() {
						var file_lenght = $('#tenDT').val().length;
						if (file_lenght == 0) {

							$("#Ten_Detai_error_message").html(
									"Chưa nhập tên đề tài!");
							$("#Ten_Detai_error_message").show();
							error_file = true;
						} else {
							$("#Ten_Detai_error_message").hide();
						}
					}

				});
	</script>
	<!--dang ky de tai-->
</body>
</html>