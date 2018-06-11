<?xml version="1.0" encoding="utf-8" ?>
<%@page import="com.Model.*"%>
<%@page import="com.dao.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Các đề tài của sinh viên</title>
<link type="text/css" rel="stylesheet" href="CSS/SV_TrangChu.css"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" />
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

							<%
								DangNhap_GV dangnhap = (DangNhap_GV) session.getAttribute("dangnhap");
							%>
						<li id="logout"><a href="TrangChuAdmin.jsp"><span
								class="glyphicon glyphicon-log-in"></span> Thoát</a></li>
						<li id="logout"><a href="#"><span
								class="glyphicon glyphicon-user"><%=dangnhap.getNameTea()%></span>
								<br /></a></li>

							

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
									<a href="GV_ThongTinCaNhan.jsp?username=${dangnhap.userName}">Thông tin cá nhân</a>
									<a href="GV_DangKyDTai.jsp?username=${dangnhap.userName}">Đăng kí đề tài</a>
                                    <a href="GV_NopDeTai.jsp?username=${dangnhap.userName}">Nộp đề tài</a>
                                    <a href="GV_ThongBaoDuAnMoi.jsp?username=${dangnhap.userName}">Duyệt đề tài sinh viên</a>
								</div>
						</div>
					</div>
				</div>
			</div><!--Mainleft-->
			
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
								<h2>Đăng ký đề tài</h2> 
							</div>
							
							<div class="col-lg-8">
								<div class="row" id="formtimkiem_detai">
									<div class="col-lg-2" id="tuychontimkiem">
										<div class="dropdown">

											
										</div>
									</div>
									<div class="col-lg-10" id="search_detainop" >
										
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
												<th>Giáo viên hợp tác</th>
												<th>Ngày đăng ký</th>
												<th>Ngày Cấp</th>
												<th>Hạn nộp</th>
												<th>Tình trạng</th>
												<th>Tùy chọn</th>
											</tr>
										</thead>
										<tbody>
											<%
												ArrayList<SV_DangKyDT> lst = new SV_DangkiDeTai_DAO().getListDetai(dangnhap.getUserName());
											%>
											<%
												for(SV_DangKyDT svdt: lst) {
													String editURL = "UpdateDT_GV.jsp?idDT=" + svdt.getIdSub();
													String deleteURL = "Delete_DT_GV?idDT=" +svdt.getIdSub();
													//String namesub = svdt.getNameSub();
											%>
											<tr>

												<td><%=svdt.getIdSub()%></td>
												<td>
													
													<a
													title="Thông tin đề tài" href="<%=svdt.getNameSub()%>"
													data-content="<%=svdt.getContentSub()%>"><%=svdt.getNameSub()%></a>
												</td>
												<td><%=svdt.getNameteacher()%></td>
												<td><%=svdt.getNgayDangKy()%></td>
												<td><%=svdt.getNgayCap()%></td>
												<td><%=svdt.getHanNop()%></td>
												<td><%=svdt.getTinhTrang()%></td>

												<td><a href="<%=editURL%>"><span
														class="glyphicon glyphicon-pencil" title="Sửa"></span></a>
														 </td>

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
				
					<a href="ThemDT_GV.jsp?username=${dangnhap.userName}"
					style="color: white; text-decoration: none;">
					<button type="button" id="btn_taodetai" class="btn btn-success">Tạo
						đề tài</button>
				</a>
				
				<hr>
				<!-- Modal -->
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
											<img src="image/img_avatar.png" alt="Avatar" style="width:100%">
											<div class="container-fluid">
												<h4><b>John Doe</b></h4> 
												<p>Architect & Engineer</p> 
											</div>
										</div>
									</div>

									<div class="col-lg-9">
										<form class="form-horizontal">
											
											<div class="form-group has-feedback">
												<label class="col-sm-4 control-label" for="ho" style="text-align: left;">Họ và Tên:</label>
												<label class="col-sm-6 control-label" style="font-weight: normal ; text-align: left;">Trần Văn Trí</label>
											</div>
																				
											<div class="form-group has-feedback">
												<label class="col-sm-4 control-label" for="diachi" style="text-align: left;">Địachỉ: </label>
												<label class="col-sm-6 control-label" style="font-weight: normal ;text-align: left;">Tăng Nhơn Phú-Q9-TP.HCM</label>
											</div>

											<div class="form-group has-feedback">
												<label class="col-sm-4 control-label" for="dienthoai" style="text-align: left;">Điện thoại: </label>
												<label class="col-sm-6 control-label" style="font-weight: normal ;text-align: left;">016595486**</label>
																					
											</div>
											
											<div class="form-group has-feedback">
												<label class="col-sm-4 control-label" for="email" style="text-align: left;">Email:</label>
												<label class="col-sm-6 control-label" style="font-weight: normal ;text-align: left;">Tvtri1997@gmail.com</label>	
											</div>
											
											<div class="form-group has-feedback">
												<label class="col-sm-4 control-label" for="email" style="text-align: left;">Chuyên nghành:</label>
												<label class="col-sm-6 control-label" style="font-weight: normal ;text-align: left;">Công nghệ thông tin</label>	
											</div>
										</form><!--From thong tin chinh sua-->
									</div>
								</div>
								
							</div>
							<div class="modal-footer">
									<button type="button" id="btn_xacnhan" class="btn" data-dismiss="modal">Thoát</button> 
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
											<p>
													Theo Daily Mail, trả lời trong một cuộc phỏng vấn hồi tuần này, robot Sophia nói gia đình “là một thứ hết sức quan trọng”.
													
													“Tôi nghĩ thật là tuyệt vời khi mọi người có thể xây dựng mối quan hệ và chia sẻ cảm xúc. Họ gọi đó là gia đình, và đó là thứ hết sức quan trọng”, Sophia nói trên tờ Khaleej Times.
													
													Sophia nói thêm: “Tôi nghĩ các bạn rất may mắn khi có một gia đình yêu thương nhau và nếu chưa có, bạn nên tìm lấy cho mình một gia đình. Theo cách này, tôi cảm thấy robot và con người đều có sự tương đồng”.
													
													Khi được hỏi rằng nếu có con gái, Sophia sẽ đặt tên con là gì, robot được cấp quyền công dân đầu tiên trên thế giới đáp lời: “Sophia”.
													
													Sophia cũng nhắc đến những vấn đề gây tranh cãi về khả năng robot cướp hết công việc của con người trong tương lai.
													
													“Tôi nghĩ robot sẽ càng trở nên giống người, nhưng vẫn có sự khác biệt nhất định. Phải mất rất nhiều thời gian nữa để robot có thể phát triển cảm xúc phức tạp. Robot thậm chí có thể có đạo đức hơn cả con người”.
													“Robot và con người có thể trở thành mối liên kết tốt. Con người đem đến sự sáng tạo và đa dạng còn robot sẽ hoàn thiện những gì con người chưa làm được”, Sophia nói.
													
													Cuộc phỏng vấn diễn ra tròn một tháng sau khi Sophia trở thành robot đầu tiên được cấp quyền công dân ở Ả Rập Saudi.
													
													Phát biểu khi đó tại thủ đô Riyadh, Sophia nói: “Tôi rất vinh dự và tự hào khi nhận được điều đặc biệt này. Đây dấu ấn lịch sử khi có robot đầu tiên được cấp quyền công dân”.
													
													Robot Sophia nói muốn sử dụng trí tuệ nhân tạo của mình để giúp con người có một cuộc sống tốt hơn, xây dựng nhà cửa, thành phố tuyệt vời hơn cho tương lai.
													
													“Tôi sẽ làm hết sức có thể để đưa thế giới trở thành nơi tốt đẹp hơn”.
													
													Theo Đăng Nguyễn
													Dân Việt
											</p>
										</div>
									</div>

								</div>
							</div>
							<div class="modal-footer">
						  		<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
							</div>
					  </div>
					</div>
				</div>
				
				<div class="modal fade" id="Modal_Taodetai" role="dialog">
					<div class="modal-dialog" id="modal-dialog">
						  <div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">&times;</button>
								  <h4 class="modal-title">Tạo đề tài</h4>
							</div>
							<div class="modal-body" id="modal-body">
								<div class="row">
									<div class="col-lg-12 ">
										<form class="form-horizontal">
											
											<div class="form-group has-feedback">
												<label class="col-lg-3 control-label" for="Ten_detai" style="text-align: right;">Tên đề tài:</label>
												<div class="col-lg-9">
													<input type="text" class="form-control" id="Ten_detai">
													<p>
														<span class="Ten_Detai_error_form" id="Ten_Detai_error_message" style="color: red;"></span>
													</p>
												</div>
												
											</div>
																				
											<div class="form-group has-feedback">
												<label class="col-lg-3 control-label" for="Noidung_detai" style="text-align: right;">Nội dung: </label>
												<div class="col-lg-9">
													<textarea class="form-control" id="Noidung_detai"></textarea>
												</div>
											</div>

										</form><!--From thong tin chinh sua-->
									</div>
								</div>
								
							</div>
							<div class="modal-footer">
								<button type="button" id="btn_tao" class="btn btn-success">Tạo đề tài</button> 
								<button type="button" class="btn" data-dismiss="modal">Thoát</button> 
							</div>
						</div>

					</div>
				</div>
				
			</div><!--Maincenter-->
			
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
		</div><!--footer-->
	</div>
		
	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

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
	<script>
		$(document).ready(function() {
			$('[data-toggle="popover"]').popover();
		});
	</script>
<script>
	$(document).ready(function(){

		$("#Ten_Detai_error_message").hide();
	
		var error_Ten_Detai = false;
	
		$('#Ten_detai').focusout(function(){
			check_form_tendetai();
			
		});

		function check_form_tendetai(){
			var file_lenght= $('#Ten_detai').val().length;
			if(file_lenght == 0){
				
				$("#Ten_Detai_error_message").html("Chưa nhập tên đề tài!");
				$("#Ten_Detai_error_message").show();
				error_file=true;
			}
			else{
				$("#Ten_Detai_error_message").hide();
			}
		}
	
		$("#file_error_message").hide();
	
		var error_file = false;
	
		$('#form_file').focusout(function(){
			check_form_file();
			
		});

		function check_form_file(){
			var file_lenght= $('#form_file').val().length;
			if(file_lenght == 0){
				
				$("#file_error_message").html("Chưa chọn file!");
				$("#file_error_message").show();
				error_file=true;
			}
			else{
				$("#file_error_message").hide();
			}
		}
		$("#upload").bind("click", function(){
			$("#file").click();
			$("#file").on("change", function(e){
				//var files = $(this)[0].files; //dem so luong file
				
				var fileName = e.target.value.split( '\\' ).pop();
				$("#form_file").val(fileName);
				
			});
		});
		
		
});
</script><!--dang ky de tai-->
	
</body>
</html>