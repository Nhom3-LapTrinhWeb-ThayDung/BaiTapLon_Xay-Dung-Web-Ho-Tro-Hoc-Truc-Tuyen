<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Users"%>
<%@page import="model.Quiz"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
<link rel="stylesheet" href="public/css/coder_update.css"
	type="text/css">
<link rel="stylesheet" href="css/multiChoice.css" type="text/css">
<link rel="stylesheet" href="css/coder_update.css" type="text/css">
<link rel="stylesheet" href="css/support_face.css" type="text/css">
<link rel="stylesheet" href="css/home.css" type="text/css">
<link rel="stylesheet" href="css/common.css" type="text/css">
<title>BÀI TEST IQ SỐ 1</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.bxSlider.min.js"></script>
<script type="text/javascript" src="js/overlay2.js"></script>
<script type="text/javascript" src="js/home.js"></script>
<script type="text/javascript" src="js/time_olympic.js"></script>
</head>

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

	<%@ include file="//includes/header.jsp" %>
	<!--end-header-->
	<% int dung = 0; %>
	<form method="post" action="DoQuestionListServlet">
		<div id="body">

			<div class="box-multiChoice">
				<h2 class="bm-title">BÀI TEST IQ</h2>
				<br> <br>
				<c:if test="${errorStr != null }">
					<div>
						<p style="color: red; font-style: italic; padding-left: 15px">${errorStr }</p>
					</div>
				</c:if>
				<c:forEach items="${listQuestionRadios }" var="questionRadio">
					<c:forEach items="${listAnswerUsers }" var="answerUser">
						<c:if test="${questionRadio.number == answerUser.number }">
							<div>
								<p style="color: red; font-style: italic; padding-left: 15px">${questionRadio.number}</p>
								<p style="color: red; font-style: italic; padding-left: 15px">${answerUser.number}</p>
								<p style="color: red; font-style: italic; padding-left: 15px">${questionRadio.answer}</p>
								<p style="color: red; font-style: italic; padding-left: 15px">${answerUser.answer}</p>
							
							</div>
						</c:if>
					</c:forEach>
				</c:forEach>
				<div>
					<p style="color: red; font-style: italic; padding-left: 15px">${errorStr }</p>
				</div>
				<div class="question">
					<h3 class="h3q-title">ĐỀ BÀI</h3>
					<div class="question-list" id="baithi">

						<c:forEach items="${listQuestionRadios }" var="questionRadio">
							<c:forEach items="${listAnswerUsers }" var="answerUser">
								<c:if test="${questionRadio.number == answerUser.number }">
									<div class="ql-row">
										<div class="stt-left">
											<span class='sttl-sp'>${questionRadio.number }</span>
										</div>
										<div class="ct-right">
											<div class="ctr-recommend">${questionRadio.question }</div>
											<div class="ctr-choice" style=''>
												<span class="sp-choice"> Chọn <b>1</b> câu trả lời
													đúng
												</span>
												<table id="ctl15_rptCauHoi_ctl00_rbtnList" class="input"
													border="0">
													<tr>
														<td><span class="rd disabled" id="A${questionRadio.number}"><input
																id="ctl15_rptCauHoi_ctl00_rbtnList_${questionRadio.number}_0"
																type="radio" name="ans[${questionRadio.number}]"
																value="A" /> <label
																for="ctl15_rptCauHoi_ctl00_rbtnList_${questionRadio.number}_0">A:
																	${questionRadio.option1 }</label></span></td>
													</tr>
													<tr>
														<td><span class="rd" id="B${questionRadio.number}"><input
																id="ctl15_rptCauHoi_ctl00_rbtnList_${questionRadio.number}_1"
																type="radio" name="ans[${questionRadio.number}]"
																value="B" /> <label
																for="ctl15_rptCauHoi_ctl00_rbtnList_${questionRadio.number}_1">B:
																	${questionRadio.option2 }</label></span></td>
													</tr>
													<tr>
														<td><span class="rd" id="C${questionRadio.number}"><input
																id="ctl15_rptCauHoi_ctl00_rbtnList_${questionRadio.number}_2"
																type="radio" name="ans[${questionRadio.number}]"
																value="C" /> <label
																for="ctl15_rptCauHoi_ctl00_rbtnList_${questionRadio.number}_2">C:
																	${questionRadio.option3 }</label></span></td>
													</tr>
													<tr>
														<td><span class="rd" id="D${questionRadio.number}"><input
																id="ctl15_rptCauHoi_ctl00_rbtnList_${questionRadio.number}_3"
																type="radio" name="ans[${questionRadio.number}]"
																value="D" /> <label
																for="ctl15_rptCauHoi_ctl00_rbtnList_${questionRadio.number}_3">D:
																	${questionRadio.option4 }</label></span></td>
													</tr>
												</table>
											</div>
										</div>
									</div>
									<c:if test="${questionRadio.answer == 'A' }">
										<c:if test="${answerUser.answer == 'A' }">

											<script type="text/javascript">
												$(document).ready(function() {
													var x = ${questionRadio.number};
													 $('span#A'+x).append('<img alt="Correct" src="Images/available.png" />')
													 $('#A'+x+' input[type="radio"][name=ans['+x+']][value=A]').attr('checked','checked');
													 <% dung=dung+1;%>;
													 $('#socaudung').attr('value',<%= dung%>);
													 alert($('#socaudung').attr('value'));
												});
											</script>
										</c:if>
										<c:if test="${answerUser.answer == 'B' }">

											<script type="text/javascript">
											$(document).ready(function() {
												var x = ${questionRadio.number};
												 $('#A'+x).append('<img alt="Correct" src="Images/available.png" />')
												 $('#B'+x+' input[type="radio"][name=ans['+x+']][value=B]').attr('checked','checked');
												 $('#B'+x).append('<img alt="Correct" src="Images/not-available.png" />')
											 })
											
											</script>
										</c:if>
										<c:if test="${answerUser.answer == 'C' }">

											<script type="text/javascript">
											$(document).ready(function() {
												var x = ${questionRadio.number};
												 $('#A'+x).append('<img alt="Correct" src="Images/available.png" />')
												 $('#C'+x+' input[type="radio"][name=ans['+x+']][value=C]').attr('checked','checked');
												 $('#C'+x).append('<img alt="Correct" src="Images/not-available.png" />')
											 })
											
											</script>
										</c:if>
										<c:if test="${answerUser.answer == 'D' }">

											<script type="text/javascript">
											$(document).ready(function() {
												var x = ${questionRadio.number};
												 $('#A'+x).append('<img alt="Correct" src="Images/available.png" />')
												 $('#D'+x+' input[type="radio"][name=ans['+x+']][value=D]').attr('checked','checked');
												 $('#D'+x).append('<img alt="Correct" src="Images/not-available.png" />')
											 })
											
											</script>
										</c:if>
										
										</c:if>
										</c:if>
										</c:forEach>
										</c:forEach>
										
						<!--Hết câu phần câu hỏi-->
					</div>

				</div>

				<!-- Tạo nút để nộp bài -->
				<div class="bpc-row" style="margin-top: 0px;">
					<span class="sp-right" style="text-align: center"> <input
						style="margin-left: 375px;" type="submit" name="login$btnDangNhap"
						value="Chấm Điểm" id="" class="bpt-lnk-save btn-login" />
						<input type="hidden" name="command" value="chamdiem">
						<input type="hidden" id="socaudung" name="socaudung" value="0">
						<input type="hidden"
								name="quiz_name" value="<%=quiz.getQuiz_name()%>">
					</span>
				</div>
				<div id="line_alert"
					style="text-align: center; width: 100%; color: red; padding: 10px 0px 5px; overflow: hidden:">
				</div>
				<!-- Bạn có muốn nộp bài -->
				<div id="ctl15_UpdateProgress2" style="display: none;">
					<div class="bm-test-again">
						<img src="images/ajax-loader.gif" />
					</div>
				</div>
			</div>
			<!-- Đếm thời gian nộp bài -->
			<div id="ctl15_div_time" class="time-remain">
				<span class="sp-text">Thời gian còn lại</span> <span class="sp-time"
					id="aTime" class="timeCount"> <script type="text/javascript">
						timeDisplay('aTime', 0, 0, 59, 59, 0, 'ctl15_btn');
					</script>

				</span>
			</div>


			<script type="text/javascript">
				Sys.WebForms.PageRequestManager.getInstance().add_beginRequest(
						startRequest);
				Sys.WebForms.PageRequestManager.getInstance().add_endRequest(
						endRequest);

				function startRequest(sender, e) {
					//disable button during the AJAX call
					document.getElementById('ctl15_btnNopBai').disabled = true;
					document.getElementById('ctl15_btnNopBai').value = 'Waiting...';
				}
				function endRequest(sender, e) {
					//re-enable button once the AJAX call has completed
					document.getElementById('ctl15_btnNopBai').disabled = false;
					document.getElementById('ctl15_btnNopBai').value = 'Nộp bài';
				}
			</script>
			<!-- 60 request một lần -->
			<script type="text/javascript">
				$(function() {
					setInterval(function() {
						$.get("KeepAlive.ashx");
					}, 1000 * 10);
				});
			</script>

			<!-- Thông báo chính thức nộp bài -->
			<script type="text/javascript">
				function FinishConfirmation() {
					var line_alert = document.getElementById('line_alert');
					line_alert.style.visibility = 'hidden';
					if (confirm("Bạn sẽ không thể sửa bài làm sau khi nộp. Đồng ý?") == true) {
						document.getElementById('ctl15_btnNopBai').style.visibility = 'hidden';
						return true;
					} else {
						return false;
					}
				}
			</script>

			<script language="javascript" type="text/javascript">
				var i = 10;
				function time() {
					if (i >= 0) {
						document.getElementById("show").innerHTML = "" + i + "";
						i--;
						setTimeout("time()", 1000);
					} else {
					}
				}
				window.onload = time;
			</script>
			<script type="text/javascript">
				window.onload = function() {
					document.onkeydown = function(e) {
						return (e.which || e.keyCode) != 116;
					};
				}
			</script>
		</div>
	</form>

	<!--end-body-->

	<a id="to_top" href="#"
		style="display: none; bottom: 20px; position: fixed; right: 20px; z-index: 9999;"
		rel="nofollow"> <img alt="Go to top!" src="Images/gototop.png" /></a>



	<div id="footer">
		<div id="footer-menu">
			<a href="index.jsp">TRANG CHỦ</a>&nbsp;|&nbsp;

		</div>
		<div class="footer-menu-new">
			<span class="title">ĐĂNG KÝ NHẬN EMAIL</span> <span class="font-des">Đăng
				ký để nhận tài liệu bổ ích từ StudyFunny.com</span> <span
				style="float: right; line-height: 39px;"> <input type="email"
				name="femail" id="femail"
				style="background: #d4e7e3 none repeat scroll 0 0; border: 1px solid #d4e7e3; border-radius: 5px; height: 25px; margin-right: 16px; padding: 1px 10px; width: 260px;">
				<input type="button" id="btnRegisterRevMail" value="ĐĂNG KÝ"
				style="height: 26px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 1px solid rgb(255, 255, 255); color: rgb(20, 146, 142); font-weight: bold; font-size: 12px; border-radius: 5px; width: 82px;">
			</span>
		</div>

		<div id="footer-bottom">

			<!--<a class="logo-gd-footer"></a>-->

			<p
				style="color: #FFFFFF; float: left; font-size: 14px; line-height: 16px; margin-left: 200px; margin-top: 4px; text-align: center; width: 640px">
				Sản phẩm của nhóm 3 - Lớp lập trình web sáng thứ 4 - thầy Đặng Thanh
				Dũng<br> Nhóm sinh viên thực hiện: <br> Nguyễn Tuấn Anh -
				Phạm Trung Dũng - Nguyễn Ngọc Hải - Nguyễn Văn Khánh<br> Điện
				thoại: 0962126964 (miễn phí) - Fanpage: <a target="_blank"
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
	<div style="width: 392px; display: none" id="overlay-login">
		<style type="text/css">
.sp-remember {
	float: left;
	width: 125px;
	margin-top: 5px;
	margin-bottom: 5px;
}

.sp-remember input {
	margin-right: 5px;
}

.LBD_CaptchaDiv {
	display: inline;
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
	</div>
	</div>
</body>
</html>


