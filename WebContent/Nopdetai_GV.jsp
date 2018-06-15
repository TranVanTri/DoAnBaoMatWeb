<?xml version="1.0" encoding="utf-8" ?>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dao.*"%>
<%@page import="com.Model.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta content="text/html; charset=UTF-8; " http-equiv="Content-Type" />

<link  rel="stylesheet" href="CSS/SV_NopDeTai.css" />

<% response.addHeader("X-Content-Type-Options", "nosniff");%> 
<link  rel="stylesheet" href="CSS/bootstrap.min.css" />
<link  rel="stylesheet" href="CSS/font-awesome.min.css"/>
			<title>Nộp đề tài</title>
			<%-- <% response.addHeader("X-Frame-Options", "SAMEORIGIN"); %>  --%>
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
						DangNhap_GV dangnhap = (DangNhap_GV) session.getAttribute("dangnhap");
						ThongTinCN tt = new ThongTinCN_DAO().getThongTinCaNhanTea(dangnhap.getUserName());
					%>
					<li id="logout"><a href="TrangChuAdmin.jsp"><span
							class="glyphicon glyphicon-log-in"></span> Thoát</a></li>
					<li id="logout"><a href="#"><span
							class="glyphicon glyphicon-user"><%=dangnhap.getNameTea()%></span>
							<br /></a></li>

					

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
							<a href="GV_ThongTinCaNhan.jsp?username=${dangnhap.userName}">Thông tin cá nhân</a>
									<a href="GV_DangKyDTai.jsp?username=${dangnhap.userName}">Đăng kí đề tài</a>
                                    <a href="GV_NopDeTai.jsp?username=${dangnhap.userName}">Nộp đề tài</a>
                                    <a href="GV_ThongBaoDuAnMoi.jsp?username=${dangnhap.userName}">Duyệt đề tài sinh viên</a>

							</div>
						</div>
					</div>
				</div>
			</div>
			<!--Mainleft-->

			<div class="col-lg-10" id="maincenter">
				<div class="row">
					<div class="col-lg-12">
						<button class="dropbtn">Nộp đề tài</button>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="row">
							<div class="col-lg-4">
								<h2>Nộp đề tài</h2>
							</div>
						</div>
						<hr>
							<div class="row">
								<div class="col-lg-12">
									<%
										int idsub=Integer.parseInt(request.getParameter("idsub"));
										SV_DangKyDT svdk= new SV_NopDT_DAO().find(idsub);
									%>
									<form role="form" class="form-horizontal" method="post" action="NopDT_GV">
										<div class="form-group has-feedback">
											<label class="col-lg-2 control-label" for="linkDT"
												style="text-align: right;">Link đề tài:</label>
											<div class="col-lg-8">
												
												<input type="hidden" class="form-control" id="idsub"
													name="idsub" value="<%=svdk.getIdSub()%>">
													</input> 

												<input type="text" class="form-control" id="linkDT"
													name="linkDT" value="<%=svdk.getLink()%>"></input>
												<p>
													<span class="Ten_Detai_error_form"
														id="link_Detai_error_message" style="color: red;"></span>
												</p>
											</div>

										</div>


										<div class="form-group has-feedback">
											<label class="col-lg-2 control-label" for="ghichu"
												style="text-align: right;">Ghi chú: </label>
											<div class="col-lg-8">
												<textarea class="form-control" id="ghichu"
													name="ghichu" ><%=svdk.getGhichu()%></textarea>
													<p>
													<span class="ND_Detai_error_form"
														id="GC_Detai_error_message" style="color: red;"></span> 
														
												</p>
											</div>
										</div>
										<div class="row">
											<div class="col-lg-2"></div>
											<div class="col-lg-8">
												<button type="submit" id="btn_insert"
													class="btn btn-success" style="float: right;">Nộp
													đề tài</button>
											</div>


										</div>

									</form>
								</div>
							</div>
					</div>
				</div>
				<hr>
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


					$("#link_Detai_error_message").hide();
					$("#GC_Detai_error_message").hide();
					var error_Ten_Detai = false;
					var error_ND_Detai = false;

					$("#linkDT").blur(function() {
						check_form_tendetai();
						checkScriptTenDT();
						checkErr();
					});
					$('#ghichu').blur(function() {
						//check_form_NDdetai();
						checkScriptNDDT();
						checkErr();
						

					});

					function check_form_tendetai() {
						var file_lenght = $('#linkDT').val().length;
						
						if (file_lenght == 0) {							
							$("#link_Detai_error_message").html("Chưa nhập link đề tài!");
							$("#link_Detai_error_message").show();
							error_Ten_Detai = true;
							
						} else {					
							$("#link_Detai_error_message").hide();
							error_Ten_Detai = false;
						}
					}
					
					function check_form_NDdetai() {
						var file_lenght = $('#ghichu').val().length;
						
						if (file_lenght == 0) {							
							$("#GC_Detai_error_message").html("Chưa nhập nội dung đề tài!");
							$("#GC_Detai_error_message").show();
							error_ND_Detai = true;
							
						} else {					
							$("#GC_Detai_error_message").hide();
							error_ND_Detai = false;
						}
					}
					function checkErr() {
						if (error_Ten_Detai == true || error_ND_Detai == true) {
							$("#btn_insert").prop('disabled', true);
						} else {
							$("#btn_insert").prop('disabled', false);
						}
					}
					function checkScriptTenDT() {
						var pattern = new RegExp(/<[^>]+>/ig);
						var file_lenght = $('#linkDT').val().length;
						
						if (file_lenght == 0) {	
							error_Ten_Detai = true;
							return;
						}
						if (pattern.test($("#linkDT").val())) {
							$("#link_Detai_error_message")
									.html(
											"Ten de tai chua noi dung khong hop le!!");
							$("#link_Detai_error_message").show();
							error_Ten_Detai = true;
						} else {						
							$("#link_Detai_error_message").hide();
							error_Ten_Detai = false;
						}
					}
					function checkScriptNDDT() {
						var pattern = new RegExp(/<[^>]+>/ig);
						var file_lenght = $('#ghichu').val().length;
						
						
						if (pattern.test($("#ghichu").val())) {
							$("#GC_Detai_error_message")
									.html("Nội dung đề tài chứa nội dung không hợp lệ!!");
							$("#GC_Detai_error_message").show();
							error_ND_Detai = true;
						} else {						
							$("#GC_Detai_error_message").hide();
							error_ND_Detai = false;
						}
					}

				});
	</script>
	<!--Nop de tai-->
</body>
</html>