<?xml version="1.0" encoding="utf-8" ?>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dao.*"%>
<%@page import="com.Model.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link type="text/css" rel="stylesheet" href="CSS/SV_NopDeTai.css" />


<link rel="stylesheet" href="CSS/bootstrap.min.css" />
<link rel="stylesheet" href="CSS/font-awesome.min.css"/>

			<title>Sinh viên nộp đề tài</title>
</head>
<body>
	<div class="container-fluid">

		<div class="row" id="menutop">
			<!--MenuTop-->
			<div class="col-lg-12">
				<header> <a>Menu</a> <nav>
				<ul>
					<li><a href="#">Tin tức</a></li>
					<li><a href="#">Nghiên cứu</a></li>
					<li><a href="#">Liên hệ</a></li>
					<%
						DangNhap dangnhap = (DangNhap) session.getAttribute("dangnhap");
						ThongTinCN tt = new ThongTinCN_DAO().getThongTinCaNhan(dangnhap.getUserName());
					%>
					<li id="logout"><a href="TrangChuAdmin.jsp"><span
							class="glyphicon glyphicon-log-in"></span> Thoát</a></li>
					<li id="logout"><a href="#"><span
							class="glyphicon glyphicon-user"></span><%=dangnhap.getNameStu()%>
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
								<a href="SV_ThongTinCaNhan.jsp?username=${dangnhap.userName}">Thông
									tin cá nhân</a> <a
									href="SV_DangKyDTai.jsp?username=${dangnhap.userName}">Đăng
									kí đề tài</a> <a
									href="SV_NopDeTai.jsp?username=${dangnhap.userName}">Nộp đề
									tài</a>

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
								<h2>Đề tài đã đăng kí</h2>
							</div>

							<div class="col-lg-8">
								<div class="row" id="formtimkiem_detai">
									<div class="col-lg-2" id="tuychontimkiem">
										<div class="dropdown">
											
										</div>
									</div>
									<div class="col-lg-10" id="search_detainop">
										
									</div>
								</div>
							</div>
						</div>
						<hr>
							<div class="row">
								<div class="col-lg-12">
									<table class="table table-striped table-hover">
										<thead>
											<tr>
											<th>Mã đề tài</th>
												<th>Tên đề tài</th>
												<th>Giáo viên hướng dẫn</th>
												<th>Ngày đăng ký</th>
												<th>Ngày Cấp</th>
												<th>Hạn nộp</th>
												<th>Tình trạng</th>
												<th>Ghi chú</th>
												<th>Nộp đề tài</th>
											</tr>
										</thead>
										<tbody>
											<%
												ArrayList<SV_DangKyDT> lst = new SV_NopDT_DAO().getListDetai(dangnhap.getUserName());
												
											%>
											<%
												for (SV_DangKyDT svdt : lst) {
													String editURL = "Nopdetai_SV.jsp?idsub=" + svdt.getIdSub();
													
											%>
											<tr>

												<td><%=svdt.getIdSub()%></td>
												<td><a href="#" data-toggle="popover" title="Thông tin đề tài" data-content="<%=svdt.getContentSub()%>"><%=svdt.getNameSub()%></a>
												</td>
												<td><%=svdt.getNameteacher()%></td>
												<td><%=svdt.getNgayDangKy()%></td>
												<td><%=svdt.getNgayCap()%></td>
												<td><%=svdt.getHanNop()%></td>
												<td><%=svdt.getTinhTrang()%></td>
												<td>
													<a href="#" data-toggle="popover" title="Ghi chú" data-content="<%=svdt.getGhichu()%>"
													class="glyphicon glyphicon-eye-open" style="padding-left: 20px;"></a>
												</td>

												<td><a href="<%=editURL%>" style="padding-left: 20px;" ><span
														class="	glyphicon glyphicon-link" title="Nộp đề tài"></span></a> 

											</tr>
											<%
												}
											%>

										</tbody>
									</table>
								</div>
							</div>
					</div>
				</div>
				<hr>
					<div class="row">
						<div class="col-lg-12">
							<!-- <button type="button" class="btn btn-primary" data-toggle="modal"
								data-target="#myModal">Nộp đề tài</button> -->
						</div>

						<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
							aria-hidden="false">
							<div class="modal-dialog" id="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h4 class="modal-title">Nộp đề tài</h4>
									</div>
									<div class="modal-body" id="modal-body">

											<form role="form" class="form-horizontal" method="post" action="">
										<div class="form-group has-feedback">
											<label class="col-lg-2 control-label" for="linkDT"
												style="text-align: right;">Link đề tài:</label>
											<div class="col-lg-10">
											
												<input type="text" class="form-control" id="idsub"
													name="idsub" value="<%%>"></input>
												<input type="text" class="form-control" id="idacc"
													name="idacc" value=""></input>
													
												<input type="text" class="form-control" id="linkDT"
													name="linkDT"></input>
												<p>
													<span class="Ten_Detai_error_form"
														id="Ten_Detai_error_message" style="color: red;"></span>
												</p>
											</div>

										</div>
										

										<div class="form-group has-feedback">
											<label class="col-lg-2 control-label" for="noidungDT"
												style="text-align: right;">Ghi chú: </label>
											<div class="col-lg-10">
												<textarea class="form-control" id="noidungDT"
													name="noidungDT"></textarea>
											</div>
										</div>
										<div class="row" >
											<div class="col-lg-2"></div>
											<div class="col-lg-10">
												<button type="submit" id="btn_insert"
													class="btn btn-success" style="float: right;">Nộp đề tài</button>
											</div>


										</div>

									</form>
									</div>
									<div class="modal-footer">
										<!-- <button type="button" id="btn_xacnhan" class="btn btn-success">Nộp
											đề tài</button>
										<button type="button" id="btn_xacnhan" class="btn"
											data-dismiss="modal">Thoát</button> -->

									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- Modal	 -->
					<div class="modal fade" id="Modal_Thongtin_GV" role="dialog">
						<div class="modal-dialog" id="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal">&times;</button>
									<h4 class="modal-title">Thông tin giảng viên</h4>
								</div>
								<div class="modal-body" id="modal-body">
									<div class="row">
										<div class="col-lg-3">
											<div class="card" style="position: relative;">
												<img src="image/img_avatar.png" alt="Avatar"
													style="width: 100%">
													<div class="container-fluid">
														<h4>
															<b>John Doe</b>
														</h4>
														<p>Architect & Engineer</p>
													</div>
											</div>
										</div>

										<div class="col-lg-9">
											<form class="form-horizontal">

												<div class="form-group has-feedback">
													<label class="col-sm-4 control-label" for="ho"
														style="text-align: left;">Họ và Tên:</label> <label
														class="col-sm-6 control-label"
														style="font-weight: normal; text-align: left;">Trần
														Văn Trí</label>
												</div>

												<div class="form-group has-feedback">
													<label class="col-sm-4 control-label" for="diachi"
														style="text-align: left;">Địachỉ: </label> <label
														class="col-sm-6 control-label"
														style="font-weight: normal; text-align: left;">Tăng
														Nhơn Phú-Q9-TP.HCM</label>
												</div>

												<div class="form-group has-feedback">
													<label class="col-sm-4 control-label" for="dienthoai"
														style="text-align: left;">Điện thoại: </label> <label
														class="col-sm-6 control-label"
														style="font-weight: normal; text-align: left;">016595486**</label>

												</div>

												<div class="form-group has-feedback">
													<label class="col-sm-4 control-label" for="email"
														style="text-align: left;">Email:</label> <label
														class="col-sm-6 control-label"
														style="font-weight: normal; text-align: left;">Tvtri1997@gmail.com</label>
												</div>

												<div class="form-group has-feedback">
													<label class="col-sm-4 control-label" for="email"
														style="text-align: left;">Chuyên nghành:</label> <label
														class="col-sm-6 control-label"
														style="font-weight: normal; text-align: left;">Công
														nghệ thông tin</label>
												</div>
											</form>
											<!--From thong tin chinh sua-->
										</div>
									</div>

								</div>
								<div class="modal-footer">
									<button type="button" id="btn_xacnhan" class="btn"
										data-dismiss="modal">Thoát</button>
								</div>
							</div>

						</div>
					</div>

					<div class="modal fade" id="Modal_thongtin_detai" role="dialog">
						<div class="modal-dialog modal-lg">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal">&times;</button>
									<h4 class="modal-title">Thông tin đề tài</h4>
								</div>
								<div class="modal-body">
									<div class="row">
										<div class="col-md-12">
											<div id="avt_Detai">
												<img id="avt" src="image/photo-2-1511583271519.jpg">
											</div>
											<div>
												<p>Theo Daily Mail, trả lời trong một cuộc phỏng vấn hồi
													tuần này, robot Sophia nói gia đình “là một thứ hết sức
													quan trọng”. “Tôi nghĩ thật là tuyệt vời khi mọi người có
													thể xây dựng mối quan hệ và chia sẻ cảm xúc. Họ gọi đó là
													gia đình, và đó là thứ hết sức quan trọng”, Sophia nói trên
													tờ Khaleej Times. Sophia nói thêm: “Tôi nghĩ các bạn rất
													may mắn khi có một gia đình yêu thương nhau và nếu chưa có,
													bạn nên tìm lấy cho mình một gia đình. Theo cách này, tôi
													cảm thấy robot và con người đều có sự tương đồng”. Khi được
													hỏi rằng nếu có con gái, Sophia sẽ đặt tên con là gì, robot
													được cấp quyền công dân đầu tiên trên thế giới đáp lời:
													“Sophia”. Sophia cũng nhắc đến những vấn đề gây tranh cãi
													về khả năng robot cướp hết công việc của con người trong
													tương lai. “Tôi nghĩ robot sẽ càng trở nên giống người,
													nhưng vẫn có sự khác biệt nhất định. Phải mất rất nhiều
													thời gian nữa để robot có thể phát triển cảm xúc phức tạp.
													Robot thậm chí có thể có đạo đức hơn cả con người”. “Robot
													và con người có thể trở thành mối liên kết tốt. Con người
													đem đến sự sáng tạo và đa dạng còn robot sẽ hoàn thiện
													những gì con người chưa làm được”, Sophia nói. Cuộc phỏng
													vấn diễn ra tròn một tháng sau khi Sophia trở thành robot
													đầu tiên được cấp quyền công dân ở Ả Rập Saudi. Phát biểu
													khi đó tại thủ đô Riyadh, Sophia nói: “Tôi rất vinh dự và
													tự hào khi nhận được điều đặc biệt này. Đây dấu ấn lịch sử
													khi có robot đầu tiên được cấp quyền công dân”. Robot
													Sophia nói muốn sử dụng trí tuệ nhân tạo của mình để giúp
													con người có một cuộc sống tốt hơn, xây dựng nhà cửa, thành
													phố tuyệt vời hơn cho tương lai. “Tôi sẽ làm hết sức có thể
													để đưa thế giới trở thành nơi tốt đẹp hơn”. Theo Đăng
													Nguyễn Dân Việt</p>
											</div>
										</div>

									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default"
										data-dismiss="modal">Close</button>
								</div>
							</div>
						</div>
					</div>
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
$(document).ready(function(){
    $('[data-toggle="popover"]').popover();   
});
</script>
	<script>
		$(document).ready(
				function() {

					$("#Ten_Detai_error_message").hide();

					var error_Ten_Detai = false;

					$('#linkDT').focusout(function() {
						check_form_tendetai();

					});

					function check_form_tendetai() {
						var file_lenght = $('#linkDT').val().length;
						if (file_lenght == 0) {

							$("#Ten_Detai_error_message").html(
									"Chưa nhập link đề tài!");
							$("#Ten_Detai_error_message").show();
							error_file = true;
						} else {
							$("#Ten_Detai_error_message").hide();
						}
					}

				});
	</script>
	<!--Nop de tai-->
</body>
</html>