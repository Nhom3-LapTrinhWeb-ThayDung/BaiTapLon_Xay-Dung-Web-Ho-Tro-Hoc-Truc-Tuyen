<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<link rel="stylesheet" href="css/home.css" type="text/css">
<link rel="stylesheet" href="css/common.css" type="text/css">
<link rel="stylesheet" href="css/comment.css" type="text/css">
<link rel="stylesheet" href="js/jquery-1.10.2.min.js" type="text/css">
<link rel="stylesheet" href="css/khanh.css" type="text/css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.bxSlider.min.js"></script>
<script type="text/javascript" src="js/overlay2.js"></script>
<script type="text/javascript" src="js/home.js"></script>
<title>Hưỡng dẫn</title>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"><title>
    Hỗ trợ học trực tuyến
</title>
    
</head>

<body>
<div id="overlay-header">
		<div id="overlay-left"></div>
		<div id="overlay-right"></div>
	</div>
		<div id="wrapper">		 
	
		<%@ include file="//includes/header.jsp"%>
		<%@ include file="//includes/message.jsp" %>
		<%@ include file="//includes/overlaylogin.jsp" %>
		<div id="body">
<!-- --------------------------end------------------------ --> 
<div class="row">
  <div class="col-md-9 col-md-push-0">
		    <div>
				 <a href="#" id="load-du-lieu" >GIỚI THIỆU</a>
				 <br>
			 </div>
			 <script type="text/javascript">
				 $(document).ready(function() {
				 $('#load-du-lieu').click(function(e) {
				 e.preventDefault();
				 $('#noidung').load('load.jsp #gioithieu');
				 });
				 });
			 </script>
			 <br>
				<div  id="noidung"></div>
			 <!-- hết  -->
	
 			<div style="margin-left: 0px; margin-right: 200px; margin-top:20px">
				 <a href="#" id="load-du-lieu1" >THẮC MẮC</a>
				 <br>
			 </div>
			 <script type="text/javascript">
				 $(document).ready(function() {
				 $('#load-du-lieu1').click(function(e) {
				 e.preventDefault();
				 $('#noidung1').load('load.jsp #thacmac');
				 });
				 });
			 </script>
			 <div  id="noidung1"></div>
			 <!-- hết  -->
	
 			<div style="margin-left: 0px; margin-right: 200px; margin-top:20px">
			 <a href="#" id="load-du-lieu2" >SỬ DỤNG TÀI LIỆU</a>
			 <br>
			 <script type="text/javascript">
			 $(document).ready(function() {
			 $('#load-du-lieu2').click(function(e) {
			 e.preventDefault();
			 $('#noidung2').load('load.jsp #sudungtailieu');
			 });
			 });
			 </script> <br>
			 <div  id="noidung2"></div>
			 
			<!-- hết  -->
	
 			<div style="margin-left: 0px; margin-right: 200px; margin-top:20px">
			 <a href="#" id="load-du-lieu3" >ĐĂNG KÍ / ĐĂNG NHẬP</a>
			 <br>
			 </div>
			 </div>
			 <script type="text/javascript">
			 $(document).ready(function() {
			 $('#load-du-lieu3').click(function(e) {
			 e.preventDefault();
			 $('#noidung3').load('load.jsp #dangki');
			 });
			 });
			 </script>
			 <br>
			 <div  id="noidung3"></div>
			 
			 <!-- hết  -->
	
 			<div style="margin-left: 0px; margin-right: 200px; margin-top:20px">
			 <a href="#" id="load-du-lieu4" >LIÊN HỆ </a>
			 <br>
			 </div>
			 <script type="text/javascript">
			 $(document).ready(function() {
			 $('#load-du-lieu4').click(function(e) {
			 e.preventDefault();
			 $('#noidung4').load('load.jsp #lienhe');
			 });
			 });
			 </script> <br>
			 <div  id="noidung4"></div>
	      </div>
	       
	 </div>
			
  				</div>
<!--Ket thúc phần body-->
         <a id="to_top" href="#"
			style="bottom: 20px; position: fixed; right: 20px; z-index: 9999; display: none;"
			rel="nofollow"> <img alt="Go to top!" src="Images/gototop.png"></a>
			<div id="footer">
			<div id="footer-menu">
				<a href="index.jsp">TRANG CHỦ</a>&nbsp;|&nbsp;

			</div>
			<div class="footer-menu-new">
				<span class="title">ĐĂNG KÝ NHẬN EMAIL</span> <span class="font-des">Đăng
					ký để nhận tài liệu bổ ích từ StudyFunny.com</span> <span
					style="float: right; line-height: 39px;"> <input
					type="email" name="femail" id="femail"
					style="background: #d4e7e3 none repeat scroll 0 0; border: 1px solid #d4e7e3; border-radius: 5px; height: 25px; margin-right: 16px; padding: 1px 10px; width: 260px;">
					<input type="button" id="btnRegisterRevMail" value="ĐĂNG KÝ"
					style="height: 26px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 1px solid rgb(255, 255, 255); color: rgb(20, 146, 142); font-weight: bold; font-size: 12px; border-radius: 5px; width: 82px;">
				</span>
			</div>

			<div id="footer-bottom">

				<!--<a class="logo-gd-footer"></a>-->

				<p
					style="color: #FFFFFF; float: left; font-size: 14px; line-height: 16px; margin-left: 200px; margin-top: 4px; text-align: center; width: 640px">
					Sản phẩm của nhóm 3 - Lớp lập trình web sáng thứ 4 - thầy Đặng
					Thanh Dũng<br> Nhóm sinh viên thực hiện: <br> Nguyễn Tuấn
					Anh - Phạm Trung Dũng - Nguyễn Ngọc Hải - Nguyễn Văn Khánh<br>
					Điện thoại: 0962126964 (miễn phí) - Fanpage: <a target="_blank"
						style="color: #14928E ! important;"
						href="https://www.facebook.com/StudyFunny">StudyFunny</a> - Email:
					<a href="mailto:StudyFunny@gmail.com">StudyFunny@gmail.com</a><br>

				</p>



				<p class="gd-copyright"></p>
			</div>

		</div>
			
			
			<style>
				.footer-menu-new span 
				{
				    color: #ffffff;
				    font-size: 13px;
				    line-height: 37px; 
				}
				.title
			    {
				    font-weight: bold;
				     margin-right: 20px;
				}
			</style>
			
			 <style>
				.list-group-item.active1, .list-group-item.active1:focus, .list-group-item.active1:hover {
				    z-index: 2;
				    color: #fff;
				    background-color: rgb(0,183,178);
				    border-color: #9AFE2E;
			}
			</style>
		<!--end-footer-->
		<div id="overlay-footer">
			<div id="overlay-footer-left"></div>
			<div id="overlay-footer-right"></div>
		</div>
		<!--end-overlay-footer-->

	</div>
	<!--end-wrapper-->
	

</body>
</html>