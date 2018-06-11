<?xml version="1.0" encoding="utf-8" ?>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="com.dao.*"%>
<%@page import="com.Model.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta content="text/html; charset=UTF-8; X-Content-Type-Options=nosniff" http-equiv="Content-Type" />
<meta name="viewport" content="width=device-width, initial-scale=1"/>

	<link type="text/css" rel="stylesheet" href="CSS/SV_DangKyDTai.css" />
<link rel="stylesheet" href="CSS/bootstrap.min.css" />
<link rel="stylesheet" href="CSS/font-awesome.min.css"/>
				<title>Tạo đề tài</title>
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
						DangNhap_GV dangnhap= (DangNhap_GV)session.getAttribute("dangnhap");
						ThongTinCN tt = new ThongTinCN_DAO().getThongTinCaNhanTea(dangnhap.getUserName());
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
								<a href="GV_ThongTinCaNhan.jsp?username=${dangnhap.userName}">Thông tin cá nhân</a>
									<a href="GV_DangKyDTai.jsp?username=${dangnhap.userName}">Đăng kí đề tài</a>
                                    <a href="GV_NopDeTai.jsp?username=${dangnhap.userName}">Nộp đề tài</a>
                                    <a href="DuyetDeTaiSV.jsp">Duyệt đề tài sinh viên</a>
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
								<h2>Tạo đề tài</h2>
							</div>
						</div>
						<hr>
							<div class="row">
								<div class="col-lg-8 col-md-offset-2">
									<form role="form" class="form-horizontal" method="post" action="Tao_Detai_GV">
										<div class="form-group has-feedback">
											<label class="col-lg-2 control-label" for="tenDT_sua"
												style="text-align: right;">Tên đề tài:</label>
											<div class="col-lg-10">
												<input type="hidden" class="form-control" id="idacc"
													name="idacc" value="<%=tt.getIdacc()%>"></input>
												<input type="text" class="form-control" id="tenDT"
													name="tenDT"></input>
												<p>
													<span class="Ten_Detai_error_form"
														id="Ten_Detai_error_message" style="color: red;"></span>
												</p>
											</div>

										</div>
										
										<div class="form-group has-feedback">
											<label class="col-lg-2 control-label" for="ChonGV"
												style="text-align: right;">Giáo viên:</label>
												<%
												ArrayList<ThongTinCN> lst = new SV_DangkiDeTai_DAO().InforTea(tt.getMajor());
												%>
											<div class="col-lg-10">
												 <select class="form-control" id="ChonGV" name="ChonGV">
												   	<%
												    	for(ThongTinCN ttcn : lst){	
												    %>
												    	<option value="<%=ttcn.getId()%>"><%=ttcn.getName() %></option>
												    	<%} %>
												    	
												  </select>
											</div>

										</div>

										<div class="form-group has-feedback">
											<label class="col-lg-2 control-label" for="noidungDT"
												style="text-align: right;">Nội dung: </label>
											<div class="col-lg-10">
												<textarea class="form-control" id="noidungDT"
													name="noidungDT"></textarea>
											</div>
										</div>
										<div class="row">
											<div class="col-lg-2">
												
											</div>
											<div class="col-lg-10">
												<button type="submit" id="btn_insert"
													class="btn btn-success" style="float: right;">Lưu</button>
											</div>
			

										</div>

									</form>
								</div>
							</div>
					</div>
				</div>

				<hr>
					<!-- Modal -->


					<!-- <div class="modal fade" id="ModalSuadetai" role="dialog">
						<div class="modal-dialog" id="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal">&times;</button>
									<h4 class="modal-title">Sửa thông tin</h4>
								</div>
								<div class="modal-body" id="modal-body">
									<div class="row">
										<div class="col-lg-12 ">

											<form role="form" class="form-horizontal" method="post">
												<div class="form-group has-feedback">
													<label class="col-lg-2 control-label" for="tenDT_sua"
														style="text-align: right;">Tên đề tài:</label>
													<div class="col-lg-10">
														<input type="text" class="form-control" id="tenDT_sua"
															name="tenDT_sua"></input>
														<p>
															<span class="Ten_Detai_error_form"
																id="Ten_Detai_error_message" style="color: red;"></span>
														</p>
													</div>

												</div>

												<div class="form-group has-feedback">
													<label class="col-lg-2 control-label" for="noidungDT_sua"
														style="text-align: right;">Nội dung: </label>
													<div class="col-lg-10">
														<textarea class="form-control" id="noidungDT_sua"
															name="noidungDT_sua"></textarea>
													</div>
												</div>
												<button type="submit" id="btn_update" data-dismiss="modal"
													class="btn btn-success" style="margin-left: 475px;">Lưu</button>
												<button type="button" class="btn" data-dismiss="modal"
													style="float: right;">Thoát</button>
											</form>
											From thong tin chinh sua
										</div>
									</div>

								</div>
								<div class="modal-footer">
									<button type="submit" id="btn_tao" class="btn btn-success">Tạo
										đề tài</button>

								</div>
							</div>

						</div>
					</div> -->
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