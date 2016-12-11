<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Users"%>
<%@page import="model.Quiz"%>
<%@page import="model.QuizResult"%>
<%@page import="dao.QuestionRadioDAO"%>
<%@page import="model.QuestionQuiz"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
<link rel="stylesheet" href="css/multiChoice.css" type="text/css">
<link rel="stylesheet" href="css/coder_update.css" type="text/css">
<link rel="stylesheet" href="css/support_face.css" type="text/css">
<link rel="stylesheet" href="css/home.css" type="text/css">
<link rel="stylesheet" href="css/common.css" type="text/css">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.bxSlider.min.js"></script>
<script type="text/javascript" src="js/overlay2.js"></script>
<script type="text/javascript" src="js/home.js"></script>
<script type="text/javascript" src="js/time_olympic.js"></script>
</head>
<body >
<%		if(session.getAttribute("user")==null || session.getAttribute("user_info")==null)
{
		response.sendRedirect("index.jsp");
}
else
{
%>
   
     <div id="overlay-header">
        <div id="overlay-left"> </div>
        <div id="overlay-right"> </div>
    </div>
    <div id="wrapper">
  <style type="text/css">
        .p-login .infor-forget{top:55px;}
         .p-login .lnk-user .infor-forget{display:none;}
        .p-login .lnk-user:hover .infor-forget{display:block;}
        .p-login .lnk-user{padding-bottom:3px;}
  </style>
<%@ include file="//includes/header.jsp" %>

		<%
		Quiz quiz = new Quiz();
		String quiz_id="";
		QuizResult quizresult = new QuizResult();
		QuestionRadioDAO quizDAO = new QuestionRadioDAO();
		String result_id="";
		if(request.getParameter("result_id")!=null && request.getParameter("quiz_id")!=null)
		{
			
			result_id = request.getParameter("result_id");
			quizresult= quizDAO.getQuizResult(Long.parseLong(result_id));
			quiz_id = request.getParameter("quiz_id");
			quiz = quizDAO.getQuiz(Long.parseLong(quiz_id));
		}
	%>
        <!--end-header-->
        <div id="body">
        <!--Alert-->
		<style type="text/css">
			.tichdiem {border: 1px solid #ebebeb;display:none; border-radius: 5px;font-family: Arial,Helvetica,sans-serif;font-size: 18px;overflow: hidden;text-align: center;width: 165px;background:#ffffff;position:fixed;top:200px;left:10px;}
			.td-title {background: #ebebeb none repeat scroll 0 0;color: #15928e;font-size: 17px;height: 35px;line-height: 35px;text-align: center;}
			.td-p-notice {color: #373737;padding: 10px 0;}
			.td-p-goal {color: #15928e;}
		</style>



<div class="box-multiChoice">
<c:if test="${errorStr != null }">
					<div>
						<p style="color: red; font-style: italic; padding-left: 15px">${errorStr }</p>
					</div>
				</c:if>
            	<h2 class="bm-title">
                	<%=quiz.getQuiz_name() %>
                </h2>
                <div class="box-scores">
                	<div class="bs-left">
                    	<h3 class="bsl-title">
                        	<span>ĐIỂM</span>
                        </h3>
                        <div id="ctl15_pnDiem">
                        <div class="bsl-content">
                        	<span class="bsl-point"><%=quizresult.getScores() %></span>
                            <div class="bsl-text">
                            	<span class="bsl-sp-left">
                                	Số đáp án đúng:
                                </span>
                                <span class="bsl-sp-right">
                                	<%=quizresult.getSocaudung() %>/<%=quizresult.getTongsocau() %>
                                </span>
                                <span class="bsl-sp-left">
                                	Tổng thời gian làm bài:
                                </span>
                                <span class="bsl-sp-right">
                                	<%=quizresult.getTimework() %>
                                </span>
                            </div>
                        </div>             
</div>
                    </div>
                    <div class="view-result">
                	<h3 class="vr-title">
                    	<span>Xem đáp án và lời giải</span>
                    </h3>
                	<p class="vr-text">
                    	Nếu chưa hài lòng với kết quả,Bạn nên xem lời giải
                    </p>
                    <p class="vr-btn">
                    	<a class="vr-lnk-answer"  href="DapAn.jsp">
                        	Xem đáp án
                        </a>
                         <a class="vr-lnk-solution vr-lnk-reset" href="LamBaiThi.jsp?quiz_id=<%=quiz.getId()%>">
                        	Làm lại bài thi
                        </a>
                    
                        <a exam-url="lam-bai-bai-test-iq-so-1_13604.html" href="" class="sharefb">
                        <i class="icon-cus-social-share"></i>&nbsp;Chia sẻ
                </a>
            </p>
        </div>
    </div>
    
    
    
    <!--end-bm-result-->
    
   </div>           
 </div>
        
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
<!--end-footer-->
		<div id="overlay-footer">
			<div id="overlay-footer-left"></div>
			<div id="overlay-footer-right"></div>
		</div>
		<!--end-overlay-footer-->
	</div>
	<!--end-wrapper-->
	<%} %>
</body>
</html>


