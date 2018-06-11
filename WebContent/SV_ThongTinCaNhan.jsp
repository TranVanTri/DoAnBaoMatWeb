<?xml version="1.0" encoding="utf-8" ?>
<%@page import="com.Model.*"%>
<%@page import="com.dao.ThongTinCN_DAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta content="text/html; charset=UTF-8; " http-equiv="Content-Type" />
<title>Thông tin cá nhân sinh viên</title>
<link type="text/css" rel="stylesheet" href="CSS/SV_Thongtincanhan.css" />
<link rel="stylesheet" href="CSS/bootstrap.min.css" />
<link rel="stylesheet" href="CSS/font-awesome.min.css"/>
<% response.addHeader("X-Frame-Options", "SAMEORIGIN"); %> 
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
												DangNhap dangnhap= (DangNhap)session.getAttribute("dangnhap");
												ThongTinCN tt = new ThongTinCN_DAO().getThongTinCaNhan(dangnhap.getUserName());
							%>

							<li id="logout"><a href="TrangChuAdmin.jsp"><span
									class="glyphicon glyphicon-log-in"></span> Thoát</a></li>
							<li id="logout"><a href="#"><span
									class="glyphicon glyphicon-user"></span> <%=tt.getName()%> <br /></a></li>
							

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
                                    <a href="SV_ThongTinCaNhan.jsp?username=${dangnhap.userName}">Thông tin cá nhân</a>
									<a href="SV_DangKyDTai.jsp?username=${dangnhap.userName}">Đăng kí đề tài</a>
                                    <a href="SV_NopDeTai.jsp?username=${dangnhap.userName}">Nộp đề tài</a>
								</div>
						</div>
					</div>
				</div>
			</div><!--Mainleft-->
			
			<div class="col-lg-10" id="maincenter">
				<div class="row">
					<div class="col-lg-12">
						<button class="dropbtn">Thông tin cá nhân</button>
					</div>
				</div>
				
				<div class="row">
					<div class="col-lg-12">
						<div class="row">
							<div class="col-lg-2" >
								<div class="row">
									<div class="col-lg-12">
										<div class="card" style="position: relative;">
											<img src="image/img_avatar.png" alt="Avatar" style="width:100%">
											<div class="container-fluid">
												<h4><b>John Doe</b></h4> 
												<p>Architect & Engineer</p> 
											</div>
											<div id="change_icon">
												<button type="button" id="btn_changeicon" class="btn btn-default btn-sm">
												  <span class="glyphicon glyphicon-camera"></span></button>
											</div><!--Thay doi anh dai dien-->
										</div><!--anh dai dien-->
										
										<div id="change_mk">
											<p><strong><a data-toggle="modal" data-target="#doi_MK">Đổi mật khẩu</a></strong></p>
										</div><!--thay doi mat khau-->
										
									</div>
								</div>
								
							</div>
							
							<div class="col-lg-10">
								<div class="row">
									<div class="col-lg-12">
										<div id="Thongtincanhan">
											<form class="form-horizontal">
												
												<div class="form-group has-feedback">
													<label class="col-sm-2 control-label" for="ho" style="text-align: left;">Họ và Tên:  </label>
													<label class="col-sm-4 control-label" style="font-weight: normal ; text-align: left;"><%=tt.getName() %><br /></label>
												</div>
												
												<div class="form-group has-feedback">
													<label class="col-sm-2 control-label" for="tuoi" style="text-align: left;">Tuổi: </label>
													<label class="col-sm-4 control-label" style="font-weight: normal ;text-align: left;"><%=tt.getAge() %> <br/> </label>
												</div>
												
												<div class="form-group has-feedback">
													<label class="col-sm-2 control-label" for="anh" style="text-align: left;">Số điện thoại:  </label>
													<label class="col-sm-4 control-label" style="font-weight: normal ;text-align: left;"><%=tt.getSDT() %> <br/></label>
												</div>
												
												<div class="form-group has-feedback">
													<label class="col-sm-2 control-label" for="diachi" style="text-align: left;"> Địa chỉ: </label>
													<label class="col-sm-4 control-label" style="font-weight: normal ;text-align: left;"><%=tt.getAddress() %> <br /></label>
												</div>

												
                                                <div class="form-group has-feedback">
													<label class="col-sm-2 control-label" for="anh" style="text-align: left;">Email:  </label>
													<label class="col-sm-4 control-label" style="font-weight: normal ;text-align: left;"><%=tt.getEmail() %> <br/></label>
												</div>

												

												<div class="form-group has-feedback">
													<label class="col-sm-2 control-label" for="chucvu" style="text-align: left;">Chức vụ: </label>
													<label class="col-sm-4 control-label" style="font-weight: normal ;text-align: left;"><%=tt.getProfess() %> <br/></label>
													
												</div>
                                            
												
												
											</form>
													
											
										</div><!--Thong tin ca nhan-->
										
										<div class="row" id="btn_change_info">
											
														<a href="Update_thongtin_SV.jsp?username=${dangnhap.userName}" style="color: white;text-decoration: none;margin: 5px 0px 0px 17px;">
															<button type="button" id="btn_taodetai" class="btn btn-success">Chỉnh sửa</button>
															</a>
										</div>	
									</div>
								</div>
							</div>
						</div>

					</div>	    	
				</div>
				
					
			</div><!--Maincenter-->
			
		</div>
		
		<div class="modal fade" id="doi_MK" role="dialog">
					<div class="modal-dialog" id="modal-dialog">
						  <div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">&times;</button>
								  <h4 class="modal-title">Đổi mật khẩu</h4>
							</div>
							<div class="modal-body" id="modal-body">
								<div class="row">
									<div class="col-lg-12 ">
										<form class="form-horizontal" method="post" action="Doi_MK">
											
											<div class="form-group has-feedback">
												<label class="col-lg-3 control-label" for="mkcu" style="text-align: right;">Mật khẩu cũ:</label>
												<div class="col-lg-9">
													<input type="hidden" class="form-control" id="userName" name="userName" value="${dangnhap.userName}"></input>
													<input type="password" class="form-control" id="mkcu" name="mkcu"></input>
													<p>
														<span class="mkcu_error_form" id="mkcu_error_message" style="color: red;"></span>
													</p>
												</div>
												
											</div>
																				
											<div class="form-group has-feedback">
												<label class="col-lg-3 control-label" for="mkmoi" style="text-align: right;">Mật khẩu mới: </label>
												<div class="col-lg-9">
													<input type="password" class="form-control" id="mkmoi" name="mkmoi"></input>
													<p>
														<span class="mkmoi_error_form" id="mkmoi_error_message" style="color: red;"></span>
													</p>
												</div>
											</div>
											<div class="form-group has-feedback">
												<label class="col-lg-3 control-label" for="mkmoi1" style="text-align: right;">Nhập lại mật khẩu mới: </label>
												<div class="col-lg-9">
													<input type="password"  class="form-control" id="mkmoi1"></input>
													<p>
														<span class="mkmoi1_error_form" id="mkmoi1_error_message" style="color: red;"></span>
													</p>
												</div>
											</div>
											<button type="submit" id="btn_doimk" class="btn btn-success" style="float: right;">Đổi mật khẩu</button> 
											<!-- <button type="button" class="btn" data-dismiss="modal">Thoát</button>  -->

										</form><!--From thong tin chinh sua-->
									</div>
								</div>
								
							</div>
							<div class="modal-footer">
								
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
								<p style="text-align: center;"><strong>Phone number: 01659548682</strong></p>
								<p style="text-align: center;padding-left: 10px;"><strong>Email id: Tvtri1997@gmail.com</strong></p>
								<p style="text-align: center;padding-right: 80px;"><strong>Design by Van Tri</strong></p>
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

<script>
	$(document).ready(function(){
	
		$("#mkcu_error_message").hide();
		$("#mkmoi_error_message").hide();
		$("#mkmoi1_error_message").hide();
		
		
		var error_mkcu = false;
		var error_mkmoi = false;
		var error_mkmoi1 = false;
		document.getElementById("btn_doimk").disabled = true;
		
		

	
	
		$('#mkcu').focusout(function(){
			check_form_mkcu();
			check_error();
		});
	
		$('#mkmoi').focusout(function(){
			check_form_mkmoi();
			check_error();
		});
	
		$('#mkmoi1').focusout(function(){
			check_form_mkmoi1();
			check_error();
		});
		
		function check_form_mkcu(){
			var mkcu_lenght= $('#mkcu').val().length;
			if(mkcu_lenght == 0){
				
				$("#mkcu_error_message").html("Chưa nhập mật khẩu cũ!");
				$("#mkcu_error_message").show();
				error_mkmoi=true;
			}
			else{
				$("#mkcu_error_message").hide();
				error_mkmoi=false;
			}
		}
		
		function check_form_mkmoi(){
			var mkmoi_lenght= $('#mkmoi').val().length;
			if(mkmoi_lenght == 0){
				
				$("#mkmoi_error_message").html("Chưa nhập mật khẩu mới");
				$("#mkmoi_error_message").show();
				error_mkmoi=true;
			}
			else{
				$("#mkmoi_error_message").hide();
				error_mkmoi=false;
			}
		}
		
		function check_form_mkmoi1(){
			var mkmoi1_lenght= $('#mkmoi1').val().length;
			var mkmoi= $('#mkmoi').val();
			var mkmoi1= $('#mkmoi1').val();
			var n= mkmoi.localeCompare(mkmoi1);
			
			if(mkmoi1_lenght == 0){
				
				$("#mkmoi1_error_message").html("Chưa xác nhận lại mật khẩu mới");
				$("#mkmoi1_error_message").show();
				error_mkmoi1=true;
			}
			else{
				
				if(n != 0){
					$("#mkmoi1_error_message").html("Mật khẩu xác nhận không khớp mật khẩu mới");
					$("#mkmoi1_error_message").show();
					error_mkmoi1=true;
				}
				else{
					$("#mkmoi1_error_message").hide();
					error_mkmoi1=false;
				}
			}
			
		}
		function check_error(){
			if(error_mkcu== true || error_mkmoi==true || error_mkmoi1 == true){
				document.getElementById("btn_doimk").disabled = true;
			}else{
				document.getElementById("btn_doimk").disabled = false;
			}
		}
		
});
</script>

</body>
</html>