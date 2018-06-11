<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta content="text/html; charset=UTF-8; X-Content-Type-Options=nosniff" http-equiv="Content-Type" />
<title>Trang chủ sinh viên</title>
<link type="text/css" rel="stylesheet" href="CSS/SV_TrangChu.css"/>
<link rel="stylesheet" href="CSS/bootstrap.min.css" />
<link rel="stylesheet" href="CSS/font-awesome.min.css"/>
</head>
<body>
	<div class="container-fluid">
		
		<div class="row" id="menutop"><!--MenuTop-->
			<div class="col-lg-12">
				<header>
					<a>Menu</a>
					<nav>
						<ul>
							<li><a href="TrangChuAdmin.jsp">Trang chủ</a></li>
							<li><a href="#">Tin tức</a></li>
					<li><a href="#">Nghiên cứu</a></li>
							<li><a href="#">Liên hệ</a></li>

							<li id="logout"><a href="TrangChuAdmin.jsp"><span class="glyphicon glyphicon-log-in"></span> Thoát</a></li>
							<li id="logout"><a href="#"><span
							class="glyphicon glyphicon-user"></span> ${dangnhap.nameStu}<br /></a></li>

							

						</ul>

					</nav>
					<div>
						<a id = "i-nav" href="#"><span class="glyphicon glyphicon-align-justify" style="font-size:32px; color: white;"></span></a>
					</div>

				</header>
			</div>
		</div><!--MenuTop-->
		<div class="row"> <!--Anh chuyen dong-->
			<div class="col-lg-12">
				<div id="myCarousel" class="carousel slide" data-ride="carousel">

					<ol class="carousel-indicators" id="carousel-indicators">
					  <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					  <li data-target="#myCarousel" data-slide-to="1"></li>
					  <li data-target="#myCarousel" data-slide-to="2"></li>
					</ol>


					<div class="carousel-inner">
					  <div class="item active">
						<img src="image/banner/4.jpg" alt="Los Angeles" style="width:100%;">
					  </div>

					  <div class="item">
						<img src="image/banner/2.jpeg" alt="Chicago" style="width:100%;">
					  </div>

					  <div class="item">
						<img src="image/banner/3.png" alt="New york" style="width:100%;">
					  </div>
					</div>


					<a class="left carousel-control" href="#myCarousel" data-slide="prev">
					  <span class="glyphicon glyphicon-chevron-left"></span>
					  <span class="sr-only">Previous</span>
					</a>
					<a class="right carousel-control" href="#myCarousel" data-slide="next">
					  <span class="glyphicon glyphicon-chevron-right"></span>
					  <span class="sr-only">Next</span>
					</a>
			</div>

	  </div>
		</div><!--Anh chuyen dong-->
		
		<div class="row" id="main"><!--Main-->
		
			<div class="col-lg-2" id="mainleft">
				<div class="row">
					<div class="col-lg-12" >
						<div class="dropdown">
							<button class="dropbtn">Trang của bạn</button>
								<div class="dropdown-content">
									<%-- <form action="ThongTinCaNhan" method="post">
									<input type="hidden" id="username" name="username" value="${dangnhap.userName}"	/>	
									<input type="submit" class="btn" value="Thông tin cá nhân"
																	style="width: 100%;" ></input>
									</form> --%>
									<a href="SV_ThongTinCaNhan.jsp?username=${dangnhap.userName}">Thông tin cá nhân</a>
									<a href="SV_DangKyDTai.jsp?username=${dangnhap.userName}">Đăng kí đề tài</a>
									<a href="SV_NopDeTai.jsp?username=${dangnhap.userName}">Nộp đề tài</a>
									
								</div>
						</div>
					</div>
				</div>
			</div><!--Mainleft-->
			
			<div class="col-lg-7" id="maincenter">
				<div class="row">
					<div class="col-lg-12">
						<button class="dropbtn">Thông tin mới</button>
					</div>
				</div>
				
				<div class="row">
					<div class="col-lg-12">
						<div id="ND_thongtinmoi">
							<hr width="100%" align="left" />
							<strong><a class="hover_red" href="SV_DangKyDTai.jsp?username=${dangnhap.userName}" >Đăng ký đề tài khoa học.Nhấn vào đây</a></strong>
							<p class="date_time">[Ngày đăng:16/10/2017 10:37:00 AM]</p>	 
							<!--<img src="../Image/nieuw.gif" style="width: 40px;height: 30px; display: block; margin-left: 50px;">-->
							<p>Sinh viên vui lòng xem thông tin chi tiết <a class="taiday" href="SV_DangKyDTai.jsp?username=${dangnhap.userName}">tại đây</a></p>
							<p class="text-right hidden-xs" ><a class="chitiet" href="SV_DangKyDTai.jsp?username=${dangnhap.userName}" style="text-decoration: none; padding-right: 100px"  ><i class="fa fa-hand-o-right" style="padding: 2px"></i>chi tiết</a></p>

							<strong><a class="hover_red" href="SV_NopDeTai.jsp?username=${dangnhap.userName}" >Sinh viên nộp đề tài</a></strong>
							<p class="date_time">[Ngày đăng:16/10/2017 10:37:00 AM]</p>	 
							
							<p>Sinh viên vui lòng xem thông tin chi tiết <a class="taiday" href="SV_NopDeTai.jsp?username=${dangnhap.userName}">tại đây</a></p>	  			 		
							<p class="text-right hidden-xs" ><a class="chitiet" href="SV_NopDeTai.jsp?username=${dangnhap.userName}" style="text-decoration: none; padding-right: 100px"  ><i class="fa fa-hand-o-right" style="padding: 2px"></i>chi tiết</a></p>

						
					
							</div>

					</div>	    	
				</div><!--Noi dung thong tin moi-->
				
				<div class="row">
					<div class="col-lg-12">
						<div id="Control_next_prev">
							
								
							
						</div>
					</div>
				</div>	
			</div><!--Maincenter-->
		
			<div class="col-lg-3" id="mainright">
			
				<div class="row">
					<div class="col-lg-12">
						<button class="dropbtn">Thông tin hot</button>
					</div>
				</div>
				
				<div class="row">
					<div class="col-lg-12">
						<div id="ND_thongtinhot">
							<marquee scrolldelay="6" scrollamount="2" id="banner" onmouseover="this.stop()" onmouseout="this.start()" direction="up" height="300">
								<table id="tb_nd_thongtinhot" cellspacing="0" border="0" style="border-collapse:collapse;">
									<tbody>
										<tr>
											<td>							    
												<a class="tt_hot" href=""><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo về việc nghỉ lễ ngày 04/10/2017</a><br><br>
											</td>
										</tr>
										<tr>
											<td>						       
												<a class="tt_hot" href=""><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo lịch thực tập sư phạm học kỳ 1 năm 2017-2018</a><br><br>
											</td>
										</tr>
										<tr>
											<td>						    	
												 <a class="tt_hot" href=""><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo về việc hủy kết quả đăng ký anh văn 1</a><br><br>
											</td>
										</tr>
										<tr>
											<td>
												<a class="tt_hot" href=""><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo về việc hủy các lớp học phần Anh văn học kỳ 1 năm 2017-2018</a><br><br>
											</td>
										</tr>
										<tr>
											<td>
												 <a class="tt_hot" href=""><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo đăng ký học phần Anh văn 1 qua mạng học kỳ 1 năm học 2017 – 2018</a><br><br>
											 </td>
										</tr>
										<tr>
											<td>
												 <a class="tt_hot" href=""><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo công bố kết quả thi Anh văn đầu vào ngày 10/09/2017</a><br><br>
											</td>
										</tr>
										<tr>
											<td>
												 <a class="tt_hot" href=""><i class="fa fa-caret-right" style="margin-right: 5px"></i>Lịch đổi phòng ngày 26 và 27 /09/2017 - Phòng A114 và A217</a><br><br>
											</td>
										</tr>
										<tr>
											<td>
												<a class="tt_hot" href=""><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo về việc thay đổi phòng học (Các phòng A311,A312,A313,A314,A315)</a><br><br>
											</td>
										</tr>
										<tr>
											<td>
												  <a class="tt_hot" href=""><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo về việc hoãn nhận chứng chỉ anh văn đầu ra</a><br><br>
											</td>
										</tr>
										<tr>
											<td>
												 <a class="tt_hot" href=""><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo về việc hủy các lớp học phần học kỳ 1 năm 2017-2018 (lần 2)</a><br><br>
											 </td>
										</tr>
										<tr>
											<td>
												 <a href=""><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo về việc hủy các lớp học phần học kỳ 1 năm 2017-2018</a><br><br>
												 </td>
										</tr>
										<tr>
											<td>
												 <a class="tt_hot" href=""><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo về việc dự kiến các lớp học phần bị hủy học kỳ 1 năm 2017-2018</a><br><br>
											</td>
										</tr>
										<tr>
											<td>
												 <a class="tt_hot" href="">Thông báo về điểm thi Anh văn đầu ra thi ngày 30/07/2017 và ngày 06/08/2017</a><br><br>
											</td>
										</tr>
										<tr>
											<td>
												 <a class="tt_hot" href=""><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo sinh viên chưa ký tên trong bảng điểm giáo dục quốc phòng an ninh</a><br><br>
											 </td>
										</tr>
										<tr>
											<td>
												 <a class="tt_hot" href=""><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo hủy học phần phương pháp tính</a><br><br>
											 </td>
										</tr>
										<tr>
											<td>
												 <a class="tt_hot" href=""><i class="fa fa-caret-right" style="margin-right: 5px"></i>Lịch học Giáo dục Quốc phòng học kỳ 3 năm 2016-2017</a><br><br>
											</td>
										</tr>
										<tr>
											<td>
												 <a class="tt_hot" href=""><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo về việc hủy các lớp học phần học kỳ 3 năm học 2016-2017 do số lượng đăng ký quá ít</a><br><br>
											 </td>
										</tr>
										<tr>
											<td>
												 <a class="tt_hot" href=""><i class="fa fa-caret-right" style="margin-right: 5px"></i>Danh sách các lớp học phần dự kiến hủy do số lượng sinh viên đăng ký quá ít Năm học 2016-2017 học kỳ 3</a><br><br>
											 </td>
										</tr>
										<tr>
											<td>
												<a class="tt_hot" href=""><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo: Biên chế các đại đội tham gia học Giáo dục Quốc phòng - An ninh</a><br><br>
											</td>
										</tr>
										<tr>
											<td>
												<a class="tt_hot" href=""><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo kế hoạch Đăng ký môn học qua mạng học kỳ 3 năm học 2016 - 2017</a><br><br>
											</td>
										</tr>
										<tr>
											<td>
												<a class="tt_hot" href=""><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo về điểm thi Anh văn đầu ra thi ngày 28/05/2017 và 04/06/2017</a><br><br>
											</td>
										</tr>
										<tr>
											<td>
												 <a class="tt_hot" href=""><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo kế hoạch học môn học Giáo dục Quốc phòng –An ninh cho khóa 2016</a><br><br>
											</td>
										</tr>
										<tr>
											<td>
												<a class="tt_hot" href=""><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo về điểm thi Anh văn đầu ra thi ngày 05/03/2017 và 12/03/2017</a><br><br>
											</td>
										</tr>
										<tr>
											<td>
												<a class="tt_hot" href=""><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo thời gian SV đi thực tập sư phạm  học kỳ 2 năm học 2016-2017</a><br><br>
											</td>
										</tr>
										<tr>
											<td>
												 <a class="tt_hot" href=""><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo về việc chuyển phòng ngày 25/02/2017</a><br><br>
											</td>
										</tr>
										<tr>
											<td>
												 <a class="tt_hot" href=""><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo về việc dự kiến các lớp học phần bị hủy học kỳ 2 năm 2016-2017 (lần 2)</a><br><br>
											</td>
										</tr>
										<tr>
											<td>
												 <a class="tt_hot" href=""><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo về việc hủy các lớp học phần học kỳ 2 năm học 2016-2017 do số lượng đăng ký quá ít</a><br><br>
											 </td>
										</tr>						
										<tr>
											<td>
												<a class="tt_hot" href=""><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo về việc hủy kết quả đăng ký môn học học kỳ 2 năm học 2016-2017</a><br><br>
											 </td>
										</tr>
										<tr>
											<td>
												 <a class="tt_hot" href=""><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo hủy danh sách sinh viên hệ đại trà đăng ký môn Quản lý dự án nhóm CLC</a><br><br>
											</td>
										</tr>
										
									</tbody>
								</table>
							</marquee> 
						</div>
					</div>
					
				</div><!--Noi dung thong tin hot-->
				
				<div class="row">
					<div class="col-lg-12 hidden-md hidden-sm">
						<div id="my_Carousel" class="carousel slide" data-ride="carousel">	
							<!-- Wrapper for slides -->
							<div class="carousel-inner">
								<div class="item active">
									<img src="image/4.jpg" style="width:100%;">
							  	</div>
							  	<div class="item">
									<img src="image/1.jpg" style="width:100%;">
							  	</div>

							  	<div class="item">
									<img src="image/2.jpg" style="width:100%;">
							  	</div>
							  	<div class="item">
									<img src="image/3.jpg" style="width:100%;">
							  	</div>
							</div>
						</div>
					</div>
				</div><!--Anh chuyen dong-->
				
				<div class="row">
					<div class="col-lg-12">
						<!--<iframe id="pagefb" src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Ffacebook&tabs=messages&width=300&height=300&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId" width="300" height="300" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true"></iframe>-->
					</div>
				</div>
				
			</div><!--Mainright-->
			
		</div>
		
		<div class="row">
			<div class="col-lg-12">
				<div id="footer">
					<hr>
						<div class="row">
							<div class="col-lg-4">
								<p style="text-align: center;"><strong>Phone number: 01659548682</strong></p>
								<p style="text-align: center;padding-left: 10px;"><strong>Email id: Tvtri1997@gmail.com</strong></p>
								<p style="text-align: center;padding-right: 80px;"><strong>Design by Van Tri</strong></p>
							</div>
							<div class="col-lg-8">
								<div class="text-center center-block">
									<br />
									<a href="https://www.facebook.com/bootsnipp"><i id="social-fb" class="fa fa-facebook-square fa-3x social"></i></a>
									<a href="https://twitter.com/bootsnipp"><i id="social-tw" class="fa fa-twitter-square fa-3x social"></i></a>
									<a href="https://plus.google.com/+Bootsnipp-page"><i id="social-gp" class="fa fa-google-plus-square fa-3x social"></i></a>
									<a href="mailto:bootsnipp@gmail.com"><i id="social-em" class="fa fa-envelope-square fa-3x social"></i></a>
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
	$(document).ready(function(){
		$('#i-nav').click(function(){
			var headerHeight = $('header').css('height');
			if(headerHeight == '60px'){
				$('ul').toggleClass('show');
				$('header').css({'height':'400px'});
			}else{
				$('ul').toggleClass('show');
				$('header').css({'height':'60px'});
			}
			
		});
					 	
	});
	
</script><!--Menutop-->
</body>
</html>