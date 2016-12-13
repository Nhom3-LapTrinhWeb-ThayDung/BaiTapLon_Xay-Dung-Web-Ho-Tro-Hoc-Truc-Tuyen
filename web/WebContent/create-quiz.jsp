<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" href="css/multiChoice.css" type="text/css">
<link rel="stylesheet" href="css/essential.css" type="text/css">
<link rel="stylesheet" href="css/process_learn.css" type="text/css">
<link rel="stylesheet" href="css/comment.css" type="text/css">
<link rel="stylesheet" href="css/coder_update.css" type="text/css">
<link rel="stylesheet" href="css/persion.css" type="text/css">
<link rel="stylesheet" href="css/common.css" type="text/css">
<link rel="stylesheet" href="css/reset.css" type="text/css">
<link rel="stylesheet" href="css/oneOfCourse.css" type="text/css">
<link rel="stylesheet" href="css/testOnline2.css" type="text/css">
<link rel="stylesheet" href="./css/Default.css" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<link rel="stylesheet" type="text/css"
	href="css/yui-moodlesimple-min.css">
<link charset="utf-8" rel="stylesheet"
	id="yui_3_15_0_2_1476453284347_288" href="css/cssbutton-min.css">
<link charset="utf-8" rel="stylesheet"
	id="yui_3_15_0_2_1476453284347_388"
	href="https://lms.hcmute.edu.vn/theme/yui_combo.php?3.15.0/tabview/assets/skins/sam/tabview.css">
<link charset="utf-8" rel="stylesheet"
	id="yui_3_15_0_2_1476453284347_652"
	href="https://lms.hcmute.edu.vn/theme/yui_combo.php?3.15.0/datatable-base/assets/skins/sam/datatable-base.css&amp;3.15.0/datatable-message/assets/skins/sam/datatable-message.css&amp;3.15.0/datatable-sort/assets/skins/sam/datatable-sort.css&amp;3.15.0/resize-base/assets/skins/sam/resize-base.css">


<title>Edit</title>
<meta content="Images/share_fb_img.jpg" name="og:image">
<link rel="icon" href="Images/favicon.ico">
<script async="" src="//connect.facebook.net/en_US/fbevents.js"></script>
<script type="text/javascript" async=""
	src="http://www.google-analytics.com/ga.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.bxSlider.min.js"></script>
<script type="text/javascript" src="js/overlay2.js"></script>
<script type="text/javascript" src="js/home.js"></script>
</head>
<body>
<%		if(session.getAttribute("user")==null || session.getAttribute("user_info")==null || ((User_info)session.getAttribute("user_info")).getQuyen()!=1 || request.getParameter("section_id")==null)
{
		response.sendRedirect("index.jsp");
}
else
{
%>
		

		<div id="overlay-header">
			<div id="overlay-left"></div>
			<div id="overlay-right"></div>
		</div>
		<div id="wrapper">

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



			
			

			<%@include file="//includes/header.jsp" %>
			<%@include file="//includes/message.jsp" %>
		<%
			String course_id = "";
			String section_id ="";
			if(request.getParameter("section_id")!=null && request.getParameter("course_id")!=null)
			{
				course_id = request.getParameter("course_id");
				section_id = request.getParameter("section_id");
			}
		%>

			

			<!--end-header-->
			<div id="body">
				<!--Alert-->






				<style>
.persion-group {
	background: rgb(255, 255, 255) none repeat scroll 0 0;
	float: left;
	padding-bottom: 15px;
	padding-top: 15px;
	width: 960px;
}

.persion-left {
	background-color: rgb(235, 235, 235);
	border: 1px solid rgb(226, 226, 226);
	color: rgb(71, 71, 71);
	float: left;
	margin-left: 12px;
	width: 262px;
}

.persion-avatar {
	background: rgb(255, 255, 255) none repeat scroll 0 0;
	border-bottom: 1px solid rgb(226, 226, 226);
	float: left;
	padding-bottom: 15px;
	width: 100%;
}

.persion-avatar-img {
	border-radius: 84px;
	float: left;
	height: 164px;
	margin-bottom: 2px;
	margin-left: 53px;
	margin-right: auto;
	margin-top: 15px;
	width: 164px;
}

.persion-info {
	float: left;
	font-size: 14px;
	font-weight: normal;
	line-height: 21px;
	margin-top: 10px;
	text-align: center;
	width: 100%;
}

.persion-tab {
	float: left;
	margin-top: 15px;
	width: 100%;
}

.persion-tab .wrap-tab {
	background: rgb(255, 255, 255) none repeat scroll 0 0;
	float: left;
	width: 100%;
}

.persion-tab .wrap-tab .persion-tab-lnk {
	border-top: 1px solid rgb(226, 226, 226);
	color: rgb(71, 71, 71);
	float: left;
	font-size: 14px;
	height: 45px;
	line-height: 45px;
	text-align: center;
	width: 100%;
}

.persion-tab .wrap-tab .persion-tab-lnk:hover {
	background: rgb(243, 243, 243) none repeat scroll 0 0;
	color: rgb(20, 146, 142);
}

.persion-tab .wrap-tab .active {
	background: rgb(243, 243, 243) none repeat scroll 0 0;
	color: rgb(20, 146, 142);
	font-weight: bold;
}

.persion-tab .wrap-tab .persion-tab-lnk span {
	float: left;
	margin-left: 19px;
}

.persion-right {
	background: rgb(255, 255, 255) none repeat scroll 0 0;
	float: left;
	padding-bottom: 15px;
	padding-left: 15px;
	width: 595px;
}

.persion-right2 {
	background: rgb(255, 255, 255) none repeat scroll 0 0;
	float: left;
	padding-bottom: 15px;
	padding-left: 50px;
	width: 890px;
}

.learn-process {
	float: left;
	width: 595px;
}

.learn-process-h3 {
	background: rgb(243, 243, 243) none repeat scroll 0 0;
	color: rgb(20, 146, 142);
	float: left;
	height: 40px;
	line-height: 40px;
	width: 100%;
}

.learn-process-h3 span {
	float: left;
	margin-left: 15px;
}

.learn-process-wrap {
	float: left;
	margin-top: 15px;
	width: 100%;
}

.learn-process-item {
	border: 1px solid rgb(226, 226, 226);
	float: left;
	margin-bottom: 15px;
	padding: 15px;
	width: 563px;
}

.learn-process-item img.process-img {
	float: left;
	height: 124px;
	width: 220px;
}

.learn-process-item .process-info-right {
	color: rgb(68, 68, 68);
	float: right;
	line-height: 18px;
	margin-bottom: 10px;
	padding-bottom: 10px;
	width: 325px;
}

.learn-process-item .process-info-right p {
	margin-top: 2px;
}

.learn-process-item .process-info-right p.p-content-subject {
	font-size: 14px;
	margin-top: 0;
}

.learn-process-item .process-info-right p.p-content-title {
	margin-top: 5px;
}

.bpt-content {
	margin-bottom: 15px;
	margin-top: 0;
	padding: 0;
	width: 595px;
}

.bpt-row .bpt-item-left {
	width: 150px;
}

.bpt-row .bpt-item-right {
	width: 400px;
}

.bpt-row-save .bpt-lnk-save {
	margin-left: 170px;
}

.persion-right {
	display: none;
}

.process-exam {
	border: 0 none;
	padding: 0;
	width: 100%;
}

.process-exam .pln-list .pln-row .pln-row-center {
	width: 245px;
}

.process-exam .pln-list .pln-row .pln-row-right {
	width: 210px;
}

.process-exam .pln-filter p.p-type {
	margin-left: 30px;
}

.process-study {
	float: left;
	margin-top: 15px;
	width: 595px;
}

.process-study .lp-lnk {
	margin-left: 5px;
	margin-right: 5px;
	padding: 15px;
	width: 253px;
}

#doimk {
	display: none;
}

.box-text {
	
}

.box-resources {
	
}

.body {
	width: 890px;
	display: none;
}
</style>


				<div class="Breadcrumb">
					<style>
.Breadcrumb {
	margin-top: 10px;
	background: #ffffff;
	padding: 5px 10px;
}

.Breadcrumb .sne-lnk {
	color: #00918D;
	font-weight: normal;
	line-height: 20px;
	background:
}
</style>
					<%if(user_info.getQuyen()==1){ %><a href="canhangiangvien.jsp" id="alert_Breadcrumb__hplBreadcrumd" class="sne-lnk">Cá Nhân</a>
					<%}else{ %><a href="hocvien.jsp" id="alert_Breadcrumb__hplBreadcrumd" class="sne-lnk">Cá Nhân</a><%} %>
					&gt;<a href="khoahoc2.jsp?course_id=<%=course_id%>" class="sne-lnk">Khóa Học: <%=(courseDAO2.getCourse(Long.parseLong(course_id))).getCourse_name()%></a>&gt;<a class="sne-lnk">Create Quiz</a>
			</div>




				<!-- edit section -->
				<div class="persion-right2" style="display: block;" id="1">
					<section id="region-main" class=""
						style="border: 1px solid #e3e3e3; padding: 2px 10px">
					<div role="main" id="yui_3_15_0_2_1476453284347_360">
						<h2 style="color: blue">Edit Quiz settings</h2>
						<c:if test="${errorStr != null }">
							<p style="color: red; font-style: italic;">${errorStr }</p>
						</c:if>
						<p style="color: red; font-style: italic;" id ="error"></p>
						<form id= "form1" action="SetListQuestionServlet" method="post">
							<fieldset class="clearfix collapsible" id="id_general">
								<legend class="ftoggler fheader"
									id="yui_3_15_0_2_1476453284347_725"> </legend>
								<div id="" class="fitem required fitem_ftext instance-color">
									<div class="fitemtitle" id="">
										<label for="id_name" id="">Quiz name*
										</label>
									</div>
									<div class="felement ftext" id="">
										<input size="50" name="quiz_name" type="text" id="quiz_name">
									</div>

								</div>





								<!-- mô tả -->
								<div>
									




									<div id="fitem_id_timestart"
										class="fitem required fitem_fdate_time_selector instance-color">
										<div class="fitemtitle">
											<div class="fgrouplabel">
												<label>Quiz start date*
												</label>
											</div>
										</div>
										<fieldset class="felement fdate_time_selector"
											id="yui_3_15_0_2_1476547644367_100">
											&nbsp;&nbsp;<a class="visibleifjs" name="timestart[calendar]"
												href="#"><img alt="Calendar" class="smallicon"
												title="Calendar"
												src="https://lms.hcmute.edu.vn/theme/image.php/essential/core/1476366384/i/calendar"></a>
										<input type="date" name ="start_date" id = "start_date">
										</fieldset>
										
               
									</div>

									<div id="fitem_id_timestart"
										class="fitem required fitem_fdate_time_selector instance-color">
										<div class="fitemtitle">
											<div class="fgrouplabel">
												<label>Quiz finish date*
												</label>
											</div>
										</div>
										<fieldset class="felement fdate_time_selector"
											id="yui_3_15_0_2_1476547644367_100">
											&nbsp;<a class="visibleifjs" name="timestart[calendar]"
												href="#"><img alt="Calendar" class="smallicon"
												title="Calendar"
												src="https://lms.hcmute.edu.vn/theme/image.php/essential/core/1476366384/i/calendar"></a>
										<input type="date" name ="end_date" id = "end_date">
										</fieldset>
										
										
									</div>



									<div id="fitem_id_timestart"
										class="fitem required fitem_fdate_time_selector instance-color">
										<div class="fitemtitle">
											<div class="fgrouplabel">
												<label>time*
												</label>
											</div>
										</div>
										<fieldset class="felement fdate_time_selector"
											id="yui_3_15_0_2_1476547644367_100">
											<label class="accesshide" for="id_timestart_hour">Hour</label><select
												name="times[hour]" id="id_times_hour">
												<option value="0">00</option>
												<option value="1" selected="selected">01</option>
												<option value="2">02</option>
												<option value="3">03</option>
												<option value="4">04</option>
												<option value="5">05</option>
												<option value="6">06</option>
												<option value="7">07</option>
												<option value="8">08</option>
												<option value="9">09</option>
												<option value="10">10</option>
												<option value="11">11</option>
												<option value="12">12</option>
												<option value="13">13</option>
												<option value="14">14</option>
												<option value="15">15</option>
												<option value="16">16</option>
												<option value="17">17</option>
												<option value="18">18</option>
												<option value="19">19</option>
												<option value="20">20</option>
												<option value="21">21</option>
												<option value="22">22</option>
												<option value="23">23</option>
											</select>&nbsp;<label class="accesshide" for="id_timestart_minute">Minute</label><select
												name="times[minute]" id="id_times_minute">
												<option value="0" selected="selected">00</option>
												<option value="5">05</option>
												<option value="10">10</option>
												<option value="15">15</option>
												<option value="20">20</option>
												<option value="25">25</option>
												<option value="30">30</option>
												<option value="35">35</option>
												<option value="40">40</option>
												<option value="45">45</option>
												<option value="50">50</option>
												<option value="55">55</option>
											</select>&nbsp;&nbsp;<a class="visibleifjs" name="timestart[calendar]"
												href="#"><img alt="Calendar" class="smallicon"
												title="Calendar"
												src="https://lms.hcmute.edu.vn/theme/image.php/essential/core/1476366384/i/calendar"></a>
										</fieldset>
									</div>

									<div id="fitem_id_timestart"
										class="fitem required fitem_fdate_time_selector instance-color">
										<div class="fitemtitle">
											<div class="fgrouplabel">
												<label>Question count *
												</label>
											</div>
										</div>
										<fieldset class="felement fdate_time_selector"
											id="yui_3_15_0_2_1476547644367_100">
											<label class="accesshide" for="id_timestart_hour">Hour</label><select
												name="question_count" id="id_question_count">
												<option value="0" selected="selected">0</option>

											</select>
										</fieldset>
										
										
										<c:if test="$(#id_timestart_month)"></c:if>
										<script type="text/javascript">
						$(document).ready(function(){
							var d = new Date();
							   for (var int = 1; int <= 120; int++) {
									$('#id_question_count').append(
											'<option value="'+int+'">' +int+'</option>');
									
								}
							   
							   for (var int = 1900; int <= 2050; int++) {
										$('#id_timeend_year').append(
											'<option value="'+int+'">' +int+'</option>');
										$('#id_timestart_year').append(
												'<option value="'+int+'">' +int+'</option>');
								}
							   //$('#id_timestart_month option[value=11]').Attr('selected',true);
							   //$('#id_timestart_month option[value=11]').attr("selected",true); 	   
							   
							  //$('select#id_timestart_month option[value=' + (month+1)  + ']').attr('selected','selected');
							   //$('#id_timestart_month').val( today.getMonth() + 1 );
						 });
					</script>
									</div>

									<div>
										<div id="fitem_id_name"
											class="fitem required fitem_ftext instance-color">
											<div class="fitemtitle" id="yui_3_15_0_2_1476453284347_972">
												<label for="id_name" id="yui_3_15_0_2_1476453284347_971">Description</label>
											</div>
										</div>
										<textarea class="txt-input" name="description"
											style="height: 300px; width: 394px;" id="description" name ="description"
											placeholder="Nội dung"></textarea>
									</div>
									<!-- end mô tả -->

									<div class="box-multiChoice" style="width: 850px;">
										<div class="question" style="width: 836px;">
											<h3 class="h3q-title" style="width: 821px;">ĐỀ BÀI</h3>
											<div class="question-list" id="baithi">


												<script type="text/javascript">
						
							/* var number = $('#id_question_count').find(":selected").val(); */
							/* var number = $("#id_question_count option:selected").val(); */
							var question_count =1;
							
						 $("#id_question_count").change(function(){
							 //$('#question_count').Attr('value',question_count);
								 $("#baithi").empty();
							   question_count = $(this).val();
							   /* alert("value: "+$(this).val()); */
								
							   for (var int = 1; int <= question_count; int++) {
								   /*$().appendTo('div#baithi'); */
									$('#baithi').append(
										'<div class="ql-row" style="width: 804px;">'
										+ '<div class="stt-left">'
										+ '<span class="sttl-sp">' +int+ '</span>'
										+ '</div>'
										+ '<div class="ct-right" style="width: 720px;">'
										+ '<div class="ctr-recommend">'
										+ '<textarea class="txt-input" name="question['+int+']" style="width:720px" id="txtAddedContent" placeholder="Nội dung câu hỏi"></textarea>'
										
										+ '</div>'
										+ '<div class="ctr-choice">'
										+ '<span class="sp-choice">' +'Chọn '+ '<b>' +'1'+ '</b>' +' câu trả lời đúng'+ '</span>'
										+ '<table id="ctl15_rptCauHoi_ctl00_rbtnList" class="input" border="0">'
										+ '<tr>'
			                            + '<td>' + '<span class="rd">' + '<input id="" type="radio" name="ans['+int+']" value="A" />'
			                            + '<label for="ctl15_rptCauHoi_ctl00_rbtnList_0">' +'A:'+ '</label>'
			                            + '<textarea class="txt-input" name="txtoptionA['+int+']" style="width:600px;height:28px" id="txtAddedContent" placeholder="Nội dung câu trả lời"></textarea>'
			                            + '</span>' + '</td>'
			                            + '</tr>'
			                            + '<tr>'
			                            + '<td>' + '<span class="rd">' + '<input id="" type="radio" name="ans['+int+']" value="B" />'
			                            + '<label for="ctl15_rptCauHoi_ctl00_rbtnList_0">' +'B:'+ '</label>'
			                            + '<textarea class="txt-input" name="txtoptionB['+int+']" style="width:600px;height:28px" id="txtAddedContent" placeholder="Nội dung câu trả lời"></textarea>'
			                            + '</span>' + '</td>'
			                            + '</tr>'
			                            + '<tr>'
			                            + '<td>' + '<span class="rd">' + '<input id="" type="radio" name="ans['+int+']" value="C" />'
			                            + '<label for="ctl15_rptCauHoi_ctl00_rbtnList_0">' +'C:'+ '</label>'
			                            + '<textarea class="txt-input" name="txtoptionC['+int+']" style="width:600px;height:28px" id="txtAddedContent" placeholder="Nội dung câu trả lời"></textarea>'
			                            + '</span>' + '</td>'
			                            + '</tr>'
			                            + '<tr>'
			                            + '<td>' + '<span class="rd">' + '<input id="" type="radio" name="ans['+int+']" value="D" />'
			                            + '<label for="ctl15_rptCauHoi_ctl00_rbtnList_0">' +'D:'+ '</label>'
			                            + '<textarea class="txt-input" name="txtoptionD['+int+']" style="width:600px;height:28px" id="txtAddedContent" placeholder="Nội dung câu trả lời"></textarea>'
			                            + '</span>' + '</td>'
			                            + '</tr>'
			               				
										+ '</table>'
										+ '</div>'
										+ '</div>'
										+ '</div>'
											);
							   }
							});
						 /* $(document).ready(function() {
							 var count =1;
							 
							 count= $('#id_question_count').val();
							 for(var i=1; i<=count)
							 var rdochecked = $('input[type="radio"]:checked');
						 }) */
					</script>
											</div>


										</div>
									</div>
									<div id="fitem_id_submitbutton"
										class="fitem fitem_actionbuttons fitem_fsubmit">
										<div class="felement fsubmit"
											id="yui_3_15_0_2_1476546667388_657">
											<a onclick="if(!saveclick()) return false;"><input name="btnsave" value="Save changes" type="submit"
												id="btnsave"></a>
												<input type="hidden" value="insert" name="command">
												<input type="hidden" value="<%=section_id%>" name="section_id">
												<input type="hidden" value="<%=course_id%>" name="course_id">
										</div>
									</div>
							</fieldset>
						</form>
					</div>
					</section>
				</div>
				<script type="text/javascript">
					function saveclick()
					{
						if(confirm("Tạo bài thi trắc nghiệm. Đồng ý?"))
						{
							var socau= $('#id_question_count').val();
							var f = true;
							var rdochecked=null;
							for(var i =1;i<=socau;i++)
							{
								rdochecked = $('input[type="radio"][name="ans['+i+']"]:checked');
								if(rdochecked.val()==null)
								{
									f=false;
									break;
								}
								
							}
							if($('#quiz_name').val()=="" || $('#start_date').val()==null ||$('#end_date').val()==null ||$('#id_question_count').val()=="0" || f== false)
							{
								$('#error').html('Chưa nhập đủ thông tin!');
								return false;
							}
							else
								return true;
						}
					}
				</script>
				<!-- end edit section -->




			</div>
			<!--end-body-->

			<a id="to_top" href="#"
				style="bottom: 20px; position: fixed; right: 20px; z-index: 9999; display: none;"
				rel="nofollow"> <img alt="Go to top!" src="Images/gototop.png"></a>
			<div id="footer">
				<div id="footer-menu">
					<a href="index.jsp">TRANG CHỦ</a>&nbsp;|&nbsp;

				</div>
				<div class="footer-menu-new">
					<span class="title">ĐĂNG KÝ NHẬN EMAIL</span> <span
						class="font-des">Đăng ký để nhận tài liệu bổ ích từ
						StudyFunny.com</span> <span style="float: right; line-height: 39px;">
						<input type="email" name="femail" id="femail"
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
						Thanh Dũng<br> Nhóm sinh viên thực hiện: <br> Nguyễn
						Tuấn Anh - Phạm Trung Dũng - Nguyễn Ngọc Hải - Nguyễn Văn Khánh<br>
						Điện thoại: 0962126964 (miễn phí) - Fanpage: <a target="_blank"
							style="color: #14928E ! important;"
							href="https://www.facebook.com/StudyFunny">StudyFunny</a> -
						Email: <a href="mailto:StudyFunny@gmail.com">StudyFunny@gmail.com</a><br>

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