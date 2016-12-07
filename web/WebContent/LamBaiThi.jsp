<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Quiz"%>
<%@page import="dao.QuestionRadioDAO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
<link rel="stylesheet" href="css/coder_update.css" type="text/css"></link>
<link rel="stylesheet" href="css/multiChoice.css" type="text/css"></link>
<link rel="stylesheet" href="css/common.css" type="text/css"></link>
<link rel="stylesheet" href="css/reset.css" type="text/css"></link>
<link rel="stylesheet" href="css/support_face.css" type="text/css">
<link rel="stylesheet" href="css/home.css" type="text/css">

<title>BÀI TEST IQ SỐ 1 - ViettelStudy</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<body>
	
	<style type="text/css">
.p-login .infor-forget {
	top: 55px;
}

.p-login .lnk-user .infor-forget {
	display: none;
}

.p-login .lnk-user:hover .infor-forget {
	display: block;
}

.p-login .lnk-user {
	padding-bottom: 3px;
}
</style>
	<%@include file="//includes/header.jsp"%>
	<%
		Quiz quiz = new Quiz();
		QuestionRadioDAO quizDAO = new QuestionRadioDAO();
		String quiz_id="";
		if(request.getParameter("quiz_id")!=null)
		{
			
			quiz_id = request.getParameter("quiz_id");
			quiz = quizDAO.getQuiz(Long.parseLong(quiz_id));
		}
	
	%>

	<!--end-header-->
	<form method="get" action="QuestionListServlet">
		<div id="body">
			<!--Alert-->
			<div class="box-multiChoice">

				<div class="start-test">
					<h3 class="stt-h3">XÁC NHẬN LÀM BÀI THI</h3>

					<div class="tt-left martop_0">
						<p class="ttl-p1 bold">

							<%=quiz.getQuiz_name()%>
							<br>
							<%=quiz.getDescription()%>
						</p>
						<p class="ttl-p2 bold"></p>
						<p class="ttl-p3"></p>
					</div>

					<div class="tt-left tt-right martop_0">
						<p class="ttl-p1 bold">
							Số câu:
							<%=quiz.getCount()%>
							<br> Thời gian:
							<%=quiz.getTime()%>
						</p>
						<p class="ttl-p2 bold"></p>
						<p class="ttl-p3"></p>
					</div>
					<div class="tt-start">
			            <input type="hidden" name="ctl14$hftenKhongDau" id="ctl14_hftenKhongDau" value="BAI-TEST-IQ-SO-1">
			            <a id="ctl14_btnstart" class="tt-tart-lnk" href="BaiTestSo1.jsp?quiz_id=<%=quiz_id%>">
			                Bắt đầu làm bài
			            </a>
			            <input type="hidden" name="TokenCSRF_Thi_XacNhan" value="CBE0FA6BD3791332169A0FD70DBFD53C74BA9688109B11460FAAA1A63543C3E466B88A5CBDD478D9E8C9EA8BEB06D5813C852745461CA083B9FE24234847D5E4">
			            
					</div>
				</div>
				<!--end-start-test-->

			</div>
		</div>
	</form>
	<!--end-body-->
	<a id="to_top" href="#"
			style="bottom: 20px; position: fixed; right: 20px; z-index: 9999; display: none;"
			rel="nofollow"> <img alt="Go to top!"
			src="Images/gototop.png"></a>
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

				<!--<a class="logo_Study-Funny" rel="nofollow"></a>-->

				<p class="gd-copyright"></p>
			</div>

		</div>


		<style>
.footer-menu-new span {
	color: #ffffff;
	font-size: 13px;
	line-height: 37px;
}

.title {
	font-weight: bold;
	margin-right: 20px;
}
</style>



	<style>
.footer-menu-new span {
	color: #ffffff;
	font-size: 13px;
	line-height: 37px;
}

.title {
	font-weight: bold;
	margin-right: 20px;
}
</style>
	<style>
.regis-info, .sp-forget-pass {
	position: relative;
	display: inline-block;
	padding-bottom: 10px;
}

.infor-forget {
	background: #ffffff none repeat scroll 0 0;
	border: 1px solid #acacac;
	color: #333333;
	display: none;
	font-size: 13px;
	line-height: 20px;
	padding: 10px;
	position: absolute;
	right: 0;
	top: 25px;
	width: 310px;
	z-index: 99;
}

.regis-info .infor-forget {
	bottom: 28px;
	right: -33px;
	top: auto;
}

.regis-info {
	padding-top: 5px;
}

.sp-forget-pass:hover .infor-forget {
	display: block;
}

.regis-info:hover .infor-forget {
	display: block;
}
</style>
	<!--end-wrapper-->
	</form>
</body>
</html>

