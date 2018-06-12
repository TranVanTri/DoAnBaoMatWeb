<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta content="text/html; charset=UTF-8; " http-equiv="Content-Type" />

<link  rel="stylesheet" href="CSS/home.css"/>
<link  rel="stylesheet" href="CSS/SV_TrangChu.css" />
<link  rel="stylesheet" href="CSS/bootstrap.min.css" />
<link  rel="stylesheet" href="CSS/font-awesome.min.css"/>
<% response.addHeader("X-Frame-Options", "SAMEORIGIN"); %> 
<% response.addHeader("X-Content-Type-Options", "nosniff");%> 

<title>Trang chủ admin</title>

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

					<li id="login" style="float: right; margin: 0px;"><a
						data-toggle="modal" data-target="#myModal"><span
							class="glyphicon glyphicon-user"></span> Đăng nhập</a></li>

					<!-- Modal -->
					<div id="myModal" class="modal fade" role="dialog">
						<div class="modal-dialog">

							<!-- Modal content-->
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal">&times;</button>
									<h4 class="modal-title">Đăng nhập</h4>
								</div>
								<div class="modal-body">
									<p>
										<!-- login -->
										<form id="login_form" class="form-horizontal" action="Login"
											style="padding: 30px" method="post"
											onsubmit="return Validate()" name="vform">
											<div class="form-group">
												<legend>
													<h2 style="text-align: center;">Login</h2>
												</legend>
											</div>
											<div class="form-group">
												<label class="control-label col-sm-4" for="pwd">Username:</label>
												<div class="col-sm-8">
													<input type="text" class="form-control" name="username"
														id="username" placeholder="Enter username"><span
														class="error" id="error_form_username"></span>
												</div>
											</div>
											<div class="form-group">
												<label class="control-label col-sm-4" for="pwd">Password:</label>
												<div class="col-sm-8">
													<input type="password" class="form-control" name="password"
														id="password" autocomplete="off"
														placeholder="Enter password" /><span class="error"
														id="error_form_pass"></span>
												</div>
											</div>
											<div class="form-group">
												<div class="col-sm-offset-4 col-sm-10">
													<div class="checkbox">
														<label><input type="checkbox"> Remember me</label>
													</div>
												</div>
											</div>
											<div class="form-group">
												<div class="col-sm-offset-4 col-sm-10">
													<input type="submit" class="btn btn-primary" value="Login"
														style="width: 80px;" />
												</div>
											</div>
										</form>
									</p>
								</div>
							</div>

						</div>
					</div>


					<form id="search">
						<div class="input-group">
							<input type="text" class="form-control" placeholder="Search">
								<div class="input-group-btn">
									<button class="btn btn-default" type="submit" title="Search"
										style="height: 34px;">
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
		<%--MenuTop--%>
		<div class="row">
			<%--Anh chuyen dong--%>
			<div class="col-lg-12">
				<div id="myCarousel" class="carousel slide" data-ride="carousel">

					<ol class="carousel-indicators" id="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
						<li data-target="#myCarousel" data-slide-to="3"></li>
					</ol>


					<!-- <div class="carousel-inner">
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
					</div> -->
					<div class="carousel-inner">
						<div class="item active">
							<img src="image/banner/0.jpg" alt="gene" style="width: 100%;">
								<div class="carousel-caption">
									<h3>
										<a href="">Tế bào gốc hy vọng cho bênh nhân tiểu đường</a>
									</h3>
								</div>
						</div>
						<div class="item">
							<img src="image/banner/1.jpg" alt="notron" style="width: 100%;">
								<div class="carousel-caption">
									<h3>
										<a href="">Các nhà khoa học tìm ra tế bào não điều khiển
											tốc độ lão hóa</a>
									</h3>
								</div>
						</div>
						<div class="item">
							<img src="image/banner/2.jpg" alt="black hole"
								style="width: 100%;">
								<div class="carousel-caption">
									<h3>
										<a href="">Lỗ giun và du hành thời gian</a>
									</h3>

								</div>
						</div>
						<div class="item">
							<img src="image/banner/3.jpg" alt="space time"
								style="width: 100%;">
								<div class="carousel-caption">
									<h3>
										<a href="">Lần đầu tiên phát hiện các sóng hấp dẫn của
											Einstein trong không gian</a>
									</h3>
								</div>
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
		<div class="row">
			<div class="col-md-3">
				<div class="mainright">
					<img src="image/thongbao.jpg" style="width: 100%">

						<div class="row">
							<div class="col-lg-12">
								<div id="ND_thongtinhot">
									<marquee scrolldelay="6" scrollamount="2" id="banner"
										onmouseover="this.stop()" onmouseout="this.start()"
										direction="up" height="300">
									<table id="tb_nd_thongtinhot" cellspacing="0" border="0"
										style="border-collapse: collapse;">
										<tbody>
											<tr>
												<td><a class="tt_hot" href=""><i
														class="fa fa-caret-right" style="margin-right: 5px"></i>Thông
														báo về việc nghỉ lễ ngày 04/10/2017</a><br><br></td>
											</tr>
											<tr>
												<td><a class="tt_hot" href=""><i
														class="fa fa-caret-right" style="margin-right: 5px"></i>Thông
														báo lịch thực tập sư phạm học kỳ 1 năm 2017-2018</a><br><br></td>
											</tr>
											<tr>
												<td><a class="tt_hot" href=""><i
														class="fa fa-caret-right" style="margin-right: 5px"></i>Thông
														báo về việc hủy kết quả đăng ký anh văn 1</a><br><br></td>
											</tr>
											<tr>
												<td><a class="tt_hot" href=""><i
														class="fa fa-caret-right" style="margin-right: 5px"></i>Thông
														báo về việc hủy các lớp học phần Anh văn học kỳ 1 năm
														2017-2018</a><br><br></td>
											</tr>
											<tr>
												<td><a class="tt_hot" href=""><i
														class="fa fa-caret-right" style="margin-right: 5px"></i>Thông
														báo đăng ký học phần Anh văn 1 qua mạng học kỳ 1 năm học
														2017 – 2018</a><br><br></td>
											</tr>
											<tr>
												<td><a class="tt_hot" href=""><i
														class="fa fa-caret-right" style="margin-right: 5px"></i>Thông
														báo công bố kết quả thi Anh văn đầu vào ngày 10/09/2017</a><br><br></td>
											</tr>
											<tr>
												<td><a class="tt_hot" href=""><i
														class="fa fa-caret-right" style="margin-right: 5px"></i>Lịch
														đổi phòng ngày 26 và 27 /09/2017 - Phòng A114 và A217</a><br><br></td>
											</tr>
											<tr>
												<td><a class="tt_hot" href=""><i
														class="fa fa-caret-right" style="margin-right: 5px"></i>Thông
														báo về việc thay đổi phòng học (Các phòng
														A311,A312,A313,A314,A315)</a><br><br></td>
											</tr>
											<tr>
												<td><a class="tt_hot" href=""><i
														class="fa fa-caret-right" style="margin-right: 5px"></i>Thông
														báo về việc hoãn nhận chứng chỉ anh văn đầu ra</a><br><br></td>
											</tr>
											<tr>
												<td><a class="tt_hot" href=""><i
														class="fa fa-caret-right" style="margin-right: 5px"></i>Thông
														báo về việc hủy các lớp học phần học kỳ 1 năm 2017-2018
														(lần 2)</a><br><br></td>
											</tr>
											<tr>
												<td><a href=""><i class="fa fa-caret-right"
														style="margin-right: 5px"></i>Thông báo về việc hủy các
														lớp học phần học kỳ 1 năm 2017-2018</a><br><br></td>
											</tr>
											<tr>
												<td><a class="tt_hot" href=""><i
														class="fa fa-caret-right" style="margin-right: 5px"></i>Thông
														báo về việc dự kiến các lớp học phần bị hủy học kỳ 1 năm
														2017-2018</a><br><br></td>
											</tr>
											<tr>
												<td><a class="tt_hot" href="">Thông báo về điểm thi
														Anh văn đầu ra thi ngày 30/07/2017 và ngày 06/08/2017</a><br><br></td>
											</tr>
											<tr>
												<td><a class="tt_hot" href=""><i
														class="fa fa-caret-right" style="margin-right: 5px"></i>Thông
														báo sinh viên chưa ký tên trong bảng điểm giáo dục quốc
														phòng an ninh</a><br><br></td>
											</tr>
											<tr>
												<td><a class="tt_hot" href=""><i
														class="fa fa-caret-right" style="margin-right: 5px"></i>Thông
														báo hủy học phần phương pháp tính</a><br><br></td>
											</tr>
											<tr>
												<td><a class="tt_hot" href=""><i
														class="fa fa-caret-right" style="margin-right: 5px"></i>Lịch
														học Giáo dục Quốc phòng học kỳ 3 năm 2016-2017</a><br><br></td>
											</tr>
											<tr>
												<td><a class="tt_hot" href=""><i
														class="fa fa-caret-right" style="margin-right: 5px"></i>Thông
														báo về việc hủy các lớp học phần học kỳ 3 năm học
														2016-2017 do số lượng đăng ký quá ít</a><br><br></td>
											</tr>
											<tr>
												<td><a class="tt_hot" href=""><i
														class="fa fa-caret-right" style="margin-right: 5px"></i>Danh
														sách các lớp học phần dự kiến hủy do số lượng sinh viên
														đăng ký quá ít Năm học 2016-2017 học kỳ 3</a><br><br></td>
											</tr>
											<tr>
												<td><a class="tt_hot" href=""><i
														class="fa fa-caret-right" style="margin-right: 5px"></i>Thông
														báo: Biên chế các đại đội tham gia học Giáo dục Quốc phòng
														- An ninh</a><br><br></td>
											</tr>
											<tr>
												<td><a class="tt_hot" href=""><i
														class="fa fa-caret-right" style="margin-right: 5px"></i>Thông
														báo kế hoạch Đăng ký môn học qua mạng học kỳ 3 năm học
														2016 - 2017</a><br><br></td>
											</tr>
											<tr>
												<td><a class="tt_hot" href=""><i
														class="fa fa-caret-right" style="margin-right: 5px"></i>Thông
														báo về điểm thi Anh văn đầu ra thi ngày 28/05/2017 và
														04/06/2017</a><br><br></td>
											</tr>
											<tr>
												<td><a class="tt_hot" href=""><i
														class="fa fa-caret-right" style="margin-right: 5px"></i>Thông
														báo kế hoạch học môn học Giáo dục Quốc phòng –An ninh cho
														khóa 2016</a><br><br></td>
											</tr>
											<tr>
												<td><a class="tt_hot" href=""><i
														class="fa fa-caret-right" style="margin-right: 5px"></i>Thông
														báo về điểm thi Anh văn đầu ra thi ngày 05/03/2017 và
														12/03/2017</a><br><br></td>
											</tr>
											<tr>
												<td><a class="tt_hot" href=""><i
														class="fa fa-caret-right" style="margin-right: 5px"></i>Thông
														báo thời gian SV đi thực tập sư phạm học kỳ 2 năm học
														2016-2017</a><br><br></td>
											</tr>
											<tr>
												<td><a class="tt_hot" href=""><i
														class="fa fa-caret-right" style="margin-right: 5px"></i>Thông
														báo về việc chuyển phòng ngày 25/02/2017</a><br><br></td>
											</tr>
											<tr>
												<td><a class="tt_hot" href=""><i
														class="fa fa-caret-right" style="margin-right: 5px"></i>Thông
														báo về việc dự kiến các lớp học phần bị hủy học kỳ 2 năm
														2016-2017 (lần 2)</a><br><br></td>
											</tr>
											<tr>
												<td><a class="tt_hot" href=""><i
														class="fa fa-caret-right" style="margin-right: 5px"></i>Thông
														báo về việc hủy các lớp học phần học kỳ 2 năm học
														2016-2017 do số lượng đăng ký quá ít</a><br><br></td>
											</tr>
											<tr>
												<td><a class="tt_hot" href=""><i
														class="fa fa-caret-right" style="margin-right: 5px"></i>Thông
														báo về việc hủy kết quả đăng ký môn học học kỳ 2 năm học
														2016-2017</a><br><br></td>
											</tr>
											<tr>
												<td><a class="tt_hot" href=""><i
														class="fa fa-caret-right" style="margin-right: 5px"></i>Thông
														báo hủy danh sách sinh viên hệ đại trà đăng ký môn Quản lý
														dự án nhóm CLC</a><br><br></td>
											</tr>

										</tbody>
									</table>
									</marquee>
								</div>
							</div>

						</div> <!--Noi dung thong tin hot-->
				</div>
			</div>

			<!-- mainleft -->
			<div class="col-md-9">
				<div id="headtext">
					<h3>
						<a href="">Tin tức</a>
					</h3>
				</div>
				<div class="grid">
					<div class="col-md-6" id="card">
						<figure class="effect-apollo" style="width: 100%"> <img
							src="image/neutron.jpg" alt="img18" /> <figcaption>
						<p>LIGO's latest hit: Merging neutron stars</p>
						<a href="#">View more</a> </figcaption> </figure>
						<div class="captext">
							<span><a href="">Hợp nhất sao neutron tạo ra sóng hấp
									dẫn và ánh sáng thiên thể hiển thị.</a></span>
						</div>
					</div>
					<div class="col-md-6" id="card">
						<figure class="effect-apollo" style="width: 100%"> <img
							src="image/bd.jpg" alt="img22" /> <figcaption> <!-- <h2>Strong <span>Apollo</span></h2> -->
						<p>When a drop of fluid is disapened on a bath</p>
						<a href="#">View more</a> </figcaption> </figure>
						<div class="captext">
							<span><a href="">Đã có lời lý giải tại sao một hạt
									nước lại có thể lăn trên mặt nước mà không hòa vào nhau</a></span>
						</div>
					</div>
				</div>
				<div class="grid">
					<div class="col-md-6" id="card">
						<figure class="effect-apollo" style="width: 100%"> <img
							src="image/StellaratorLead.jpg" alt="img18" /> <figcaption>
						<!-- <h2>Strong <span>Apollo</span></h2> -->
						<p>The bizarre reactor that might save nuclear fusion</p>
						<a href="#">View more</a> </figcaption> </figure>
						<div class="captext">
							<span><a href="">Lò phản ứng có thể tiết kiệm hạt nhân
									nhiệt hạch</a></span>
						</div>
					</div>
					<div class="col-md-6" id="card">
						<figure class="effect-apollo" style="width: 100%"> <img
							src="image/tbgoc.jpg" alt="img22" /> <figcaption> <!-- <h2>Strong <span>Apollo</span></h2> -->
						<p>Reprogrammed stem cells work as well as those from embryos</p>
						<a href="#">View more</a> </figcaption> </figure>
						<div class="captext">
							<span><a href="">Các tế bào gốc được lập trình lại
									hoạt động cũng như những tế bào từ phôi</a></span>
						</div>
					</div>
				</div>

				<!-- next -->
				<div id="headtext">
					<h3>
						<a href="">Nghiên cứu</a>
					</h3>
				</div>
				<div class="grid">
					<div class="col-md-6" id="card">
						<figure class="effect-milo" style="width: 100%"> <img
							src="image/f2.jpg" alt="img18" /> <figcaption> <!-- <h2>Strong <span>Apollo</span></h2> -->
						<p>Large optical nonlinearity of indium tin oxide in its
							epsilon-near-zero region</p>
						<a href="#">View more</a> </figcaption> </figure>
						<div class="captext">
							<span><a href="">Sự phi tuyến quang học lớn của oxit
									indium oxide trong vùng epsilon-gần-zero của nó</a></span>
						</div>
					</div>
					<div class="col-md-6" id="card">
						<figure class="effect-milo" style="width: 100%"> <img
							src="image/f3.jpg" alt="img22" /> <figcaption>
						<p>Resurrecting the intestinal microbiota to combat
							antibiotic-resistant pathogens</p>
						<a href="#">View more</a> </figcaption> </figure>
						<div class="captext">
							<span><a href="">Phục hồi vi sinh vật đường ruột để
									chống lại các mầm bệnh kháng kháng sinh</a></span>
						</div>
					</div>
				</div>
				<div class="grid">
					<div class="col-md-6" id="card">
						<figure class="effect-milo" style="width: 100%"> <img
							src="image/f1.jpg" alt="img18" /> <figcaption> <!-- <h2>Strong <span>Apollo</span></h2> -->
						<p>TStructures of a CRISPR-Cas9 R-loop complex primed for DNA
							cleavage</p>
						<a href="#">View more</a> </figcaption> </figure>
						<div class="captext">
							<span><a href="">Các cấu trúc của một phức hợp vòng
									lặp CRISPR-Cas9 R được primed cho sự phân tách DNA</a></span>
						</div>
					</div>
					<div class="col-md-6" id="card">
						<figure class="effect-milo" style="width: 100%"> <img
							src="image/f0.jpg" alt="img22" /> <figcaption> <!-- <h2>Strong <span>Apollo</span></h2> -->
						<p>An orthopoxvirus-based vaccine reduces virus excretion
							after MERS-CoV infection in dromedary camels</p>
						<a href="#">View more</a> </figcaption> </figure>
						<div class="captext">
							<span><a href="">Một vắc-xin dựa trên vắc-xin phóng xạ
									làm giảm bài tiết virút sau khi nhiễm trùng MERS-CoV trong lạc
									đà</a></span>
						</div>
					</div>
				</div>
			</div>
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
							

						</div>
						<hr>
				</div>
			</div>
		</div>
		<!-- -- -->

	</div>


	<script src="JS/jquery.js" ></script>
	<script src="JS/bootstrap.min.js" ></script>
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

	<script>
		$(document).ready(function() {

			$("#user_error_message").hide();
			$("#password_error_message").hide();

			var error_user = false;
			var error_password = false;

			$('#user').focusout(function() {
				check_username();

			});

			$('#password').focusout(function() {
				check_password();
			});

			function check_username() {
				var user_lenght = $('#user').val().length;
				if (user_lenght == 0) {

					$("#user_error_message").html("Chưa nhập Username!");
					$("#user_error_message").show();
					error_user = true;
				} else {
					$("#user_error_message").hide();
				}
			}

			function check_password() {
				var pass_lenght = $('#password').val().length;
				if (pass_lenght == 0) {

					$("#password_error_message").html("Chưa nhập mật khẩu!");
					$("#password_error_message").show();
					error_password = true;
				} else {
					$("#password_error_message").hide();
				}
			}
		});
	</script>

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