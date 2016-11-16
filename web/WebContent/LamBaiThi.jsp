<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Quiz"%>

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
	<%
	Quiz quiz=null;
	if(session.getAttribute("quiz")!=null)
	{
		quiz = (Quiz) session.getAttribute("quiz");
	}
	
%>
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
					<div id="ctl14_pnStart">
						<div style="text-align: center;">
							<span id="ctl14_lblErr"></span>
						</div>
						<div class="bpc-row" style="margin-top: 0px;">
							<span class="sp-right" style="text-align: center"> <input
								style="margin-left: 375px;" type="submit"
								name="login$btnDangNhap" value="Bắt đầu làm bài" id=""
								class="bpt-lnk-save btn-login" /> <input type="hidden"
								name="quiz_name" value="<%=quiz.getQuiz_name()%>">
							</span>
						</div>
					</div>
				</div>
				<!--end-start-test-->

			</div>
		</div>
	</form>
	<!--end-body-->
	<div id="footer">
		<div class="footer-menu-new">
			<span class="font-des">Đăng ký để nhận tài liệu bổ ích từ
				StudyFunny</span> <span style="float: right; line-height: 39px;"> <input
				type="email" name="femail" id='femail'
				style="background: #d4e7e3 none repeat scroll 0 0; border: 1px solid #d4e7e3; border-radius: 5px; height: 25px; margin-right: 16px; padding: 1px 10px; width: 260px;">
				<input type="button" id="btnRegisterRevMail" value="ĐĂNG KÝ"
				style="height: 26px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 1px solid rgb(255, 255, 255); color: rgb(20, 146, 142); font-weight: bold; font-size: 12px; border-radius: 5px; width: 82px;">
			</span>
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

