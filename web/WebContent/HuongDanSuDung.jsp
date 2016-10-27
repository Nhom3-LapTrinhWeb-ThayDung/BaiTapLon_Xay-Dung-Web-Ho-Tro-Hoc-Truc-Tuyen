<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<link rel="stylesheet" href="css/coder_update.css" type="text/css">
<link rel="stylesheet" href="css/multiChoice.css" type="text/css">
<link rel="stylesheet" href="css/support_face.css" type="text/css">
<link rel="stylesheet" href="css/home.css" type="text/css">
<link rel="stylesheet" href="css/common.css" type="text/css">
<link rel="stylesheet" href="css/khanh.css" type="text/css">
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"> 
	<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>

<title>Bootstrap 101 Template</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"><title>
    Hỗ trợ học trực tuyến
</title>
    
</head>

<body>	
   <form name="form1" method="post" action="/index.html" id="form1">	 
	<div id="header">
	    <div id="header-top">
	        <a style="color:#00918d;font-size:14px;position:absolute;right:0px;bottom:10px" href="http://viettelstudy.vn/huongdan.aspx">Hướng dẫn</a>
	        <a class="header-logo" href="index.jsp"></a>            
	    </div>
	    
	    <div id="header-menu" style="background: rgb(0, 183, 178);">
	        <a class="lnk-hm-home menu_active" href=""> </a>
	         <ul class="ul-menu-header">
	            <li class="li-menu-header">
		            <a  class="lnk-menu-header">
		               TRANG CHỦ </a>
	            </li>
	            <li class="li-menu-header">
		            <a  class="lnk-menu-header ">
		               HƯỚNG DẪN SỬ DỤNG</a>
	            </li>
	            
	            <li class="li-menu-header">
	              <a class="lnk-menu-header ">
	                 DANH SÁCH LỚP HỌC</a>
	                 <div class="vts-submenu submenu-245">
	                     <ul class="submenu1"> 
	                         <li><a href="#">
	                                 Công Nghệ Phần Mềm</a> </li>
	                                    <li><a href="#">
	                                  Lập trình web</a> </li>
	                                <li><a href="#">
	                                  Hệ quản trị cơ sở dữ liệu </a> </li>
	                                <li><a href="#">
	                                  Điện tử căn bản </a> </li>
	                                <li><a href="#">
	                                    Thực tập điện tử căn bản</a> </li>
	                                <li><a href="#">
	                                    Lập trình WinDow From </a> </li>
	                      </ul>
	                  </div>
	               </li>  
	             
	            <li class="li-menu-header">
	             <a class="lnk-menu-header ">
	                THƯ VIỆN </a>
	                 <div class="vts-submenu">
	                    <ul class="submenu1">
	                        <li><a href="#">Trắc nghiệm</a>
	                            <ul class="submenu2">
	                                <li><a href="#">Trắc nghiệm IQ</a>
	                                </li>
	                                <li><a href="#">Trắc nghiệm EQ</a>
	                                </li>
	                                <li><a href="#">Trắc nghiệm tính cách MBTI</a>
	                                </li>
	                                <li><a href="#">Trắc nghiệm định hướng nghề nghiệp</a>
	                                </li>
	                                <li><a href="#"> Trắc nghiệm 8 loại trí thông minh</a>
	                                </li>
	                            </ul>
	                        </li>
	                        <li>
	                        <a href="#">Thư viện video
	                            <span class="arrow"></span></a>
	                            <ul class="submenu2">
	                                <li><a href="#">
	                                    Tư vấn Vì tương lai</a></li>
	                                <li><a href="#">
	                                    Tọa đàm bản lĩnh trẻ</a></li>
	                                <li><a href="#">
	                                    Thư viện cuộc sống</a> </li>
	                                    <li><a href="#">
	                                   Khám phá Việt Nam</a> </li>
	                                   <li><a href="#">
	                                   Khám phá thế giới</a> </li>
	                                <li><a href="#">Sáng tạo</a> </li>
	                                
	                            </ul>
	                        </li>
	                        <li><a href="">Bài tập - Bài giải<span class="arrow"></span></a>
	                            <!-- Courses in category -->
	                            <ul class="submenu2">
	                                <li><a href="#">
	                                    Công nghệ thông tin </a></li>
	                                <li><a href="#">Thiên
	                                    Điện tử </a></li>
	                                <li><a href="#">
	                                    Tiếng Anh </a></li>
	                                <li><a href="#">
	                                    Chế tạo máy </a></li>
	                                <li><a href="#">
	                                    Công mghệ may và thời trang </a></li>
	                            </ul>
	                        </li>          
	                            <!-- Courses in category -->
	                        </li>
	                    </ul>
	                </div>
	</div>


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
				 $('#noidung').load('load.html #gioithieu');
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
				 $('#noidung1').load('load.html #thacmac');
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
			 $('#noidung2').load('load.html #sudungtailieu');
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
			 $('#noidung3').load('load.html #dangki');
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
			 $('#noidung4').load('load.html #lienhe');
			 });
			 });
			 </script> <br>
			 <div  id="noidung4"></div>
	      </div>
	       
	 </div>
			
  				
<!--Ket thúc phần body-->
         
			<div id="footer">
			  <div class="footer-menu-new">
			  <span class="title"> </span>
			  <span class="font-des">Đăng ký để nhận tài liệu và khóa học từ StudyFunny.vn</span>
			  <span style="float: right; line-height: 39px;">
			  <input type="email" name="femail" id="femail" style=" background: #d4e7e3 none repeat scroll 0 0;
			    border: 1px solid #d4e7e3;
			    border-radius: 5px;
			    height: 25px;
			    margin-right: 16px;
			     padding: 1px 10px;
			    width: 260px;">
			  <input type="button" id="btnRegisterRevMail" value="ĐĂNG KÝ" style="height: 26px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 1px solid rgb(255, 255, 255); color: rgb(20, 146, 142); font-weight: bold; font-size: 12px; border-radius: 5px; width: 82px;">
			</span>
			    </div> 
			
	
			</div>
			
			<div class="container">
		    <div id="footer">
		      <hr />
		        <h5 class="text-center text-danger">Khoa Công nghệ Thông tin - Đại học Sư phạm Kỹ thuật TP. Hồ Chí Minh</h5>
		        <h5 class="text-center text-danger">Số 1, Võ Văn Ngân, Thủ Đức, TP. Hồ Chí Minh</h5>
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
	</div>
</form>
</body>
</html>