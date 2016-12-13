
<%@page import="controller.DoQuestionListServlet"%>
<%@page import="model.Outline"%>
<%@page import="model.Resources"%>
<%@page import="javax.swing.text.Document"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page import="dao.CourseDAO"%>
<%@page import="model.Section"%>
<%@page import="dao.SectionDAO"%>
<%@page import="model.Course"%>
<%@page import="dao.ExerciseDAO"%>
<%@page import="model.Exercise"%>
<%@page import="model.Quiz"%>
<%@page import="model.User_info"%>
<%@page import="dao.QuestionRadioDAO"%>
<%@page import="dao.Exercise_UserDAO"%>
<%@page import="model.Exercise_User"%>
<%@page import="model.Url"%>
<%@page import="dao.Quiz_UserDAO"%>
<%@page import="model.Quiz_User"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
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
	id="yui_3_15_0_2_1476174513860_237"
	href="css/cssbutton-min.css">

<title>Khóa Học</title>
<link rel="icon" href="Images/favicon.ico">
<script async="" src="https://connect.facebook.net/en_US/fbevents.js"></script>
<script type="text/javascript" async=""
	src="http://www.google-analytics.com/ga.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.bxSlider.min.js"></script>
<script type="text/javascript" src="js/overlay2.js"></script>
<script type="text/javascript" src="js/home.js"></script>
</head>
<body>
<%		if(session.getAttribute("user")==null || session.getAttribute("user_info")==null || request.getParameter("course_id")!=null)
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

</style>



			<%@ include file="//includes/header.jsp" %>
			<%@ include file="//includes/message.jsp" %>
			<%
			SectionDAO sectionDAO = new SectionDAO();
			
			CourseDAO courseDAO = new CourseDAO();
			ExerciseDAO exerciseDAO = new ExerciseDAO();
			Exercise_UserDAO exercise_userDAO = new Exercise_UserDAO();
			QuestionRadioDAO questionDAO = new QuestionRadioDAO();	
			Quiz_UserDAO quiz_userDAO = new Quiz_UserDAO();
			Course course = new Course();
			Outline outline = new Outline();
			String 	course_id="";
			User_info teacher = new User_info();
			List<User_info> liststudent = new  ArrayList<User_info>();
			List<Exercise> listexercise = new ArrayList<Exercise>();
			List<Exercise_User> listexercise_user = new ArrayList<Exercise_User>();
			List<Quiz> listquiz = new ArrayList<Quiz>();
			List<Quiz_User> listquiz_user = new ArrayList<Quiz_User>();
			List<Resources> listresources = new ArrayList<Resources>();
			//Exercise exercise = new Exercise();
			if(request.getParameter("course_id")!=null)
			{
				course_id = request.getParameter("course_id");
				course = courseDAO.getCourse(Long.parseLong(course_id));
				liststudent = courseDAO.getListStudent(Long.parseLong(course_id));
				listexercise = courseDAO.getListExercise(Long.parseLong(course_id));
				listexercise_user = exercise_userDAO.getListExercise_User(Long.parseLong(course_id));
				listquiz = courseDAO.getListQuiz(Long.parseLong(course_id));
				listquiz_user = quiz_userDAO.getListQuiz_User(Long.parseLong(course_id));
				listresources = courseDAO.getListResourcesCourse(Long.parseLong(course_id));
				teacher = courseDAO.getteacher(Long.parseLong(course_id));
				outline = courseDAO.getOutline(Long.parseLong(course_id));
			}
			Section tempsection = new Section();
		%>
		<!-- tìm kiếm -->
		<%
			String JSONExercise = JSONArray.toJSONString(listexercise);
			String JSONExercise_User = JSONArray.toJSONString(listexercise_user);
			String JSONUser_info = JSONArray.toJSONString(liststudent);
			String JSONQuiz = JSONArray.toJSONString(listquiz);
			String JSONQuiz_User = JSONArray.toJSONString(listquiz_user);
			String JSONResources = JSONArray.toJSONString(listresources);
			List<Course> listcourse = courseDAO.getListCourse(user_info.getId());
				String JSONResult = JSONArray.toJSONString(listcourse);
			String sobaitap="";
		%>

				
			
		

		<!--end-header-->
		<div id="body">
			<!--Alert-->
		<div class="study-notice">

    <span class="sne-sp">Thông báo: </span>
    
        
        <a id="alert_likAlert" class="sne-lnk" href=""></a>
    

</div>
		



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
				<a id="alert_Breadcrumb__hplBreadcrumd" class="sne-lnk">Cá Nhân
					&gt; Khóa Học &gt; <%=course.getCourse_name() %></a>
			</div>

			<div class="persion-right2" style="display: block; width: 910px;" id="1">
			<div class="study-search" style="float: right;margin-top: 0px;">
				<input name="search" type="text" maxlength="100"  onfocus="SearchOnFocus(this)" onblur="SearchOnBlur(this)"
				id="search" class="searchInput has_default_text ssh-input">
				<input
				type="button" name="Header1$btnSearch1" value="" id="Header1_btnSearch1" class="ssh-btn-search">
				</div>
				<style type="text/css">
.edit {
	
}
</style>

				<script type="text/javascript">
					function showedit() {
						$(edit).slideToggle();
						$('.edit').slideToggle();
					}
					function loadDSHV() {
						$('.course').attr('style', 'display:none')
					}

					function loadCourse() {
						$('.course').attr('style', 'display:block')
					}
				</script>
				<script>
				$(document).ready(function() {
					if(<%=user_info.getQuyen()%>=="1")
						{
							$('#header-manager').attr('style','display: block');
							$('#manager').attr('style','display: block');
						}
					});
			</script>
				<div class="row">
					<h1 class="learn-process-h3">
						<span><%=course.getCourse_name() %></span>
					</h1>
				</div>
				
				<div class="learn-process process-study">
				<div style="display: none" id ="header-manager" >
					<div id="header-menu" style="background: rgb(0, 183, 178);" >
						<a class="lnk-hm-home menu_active"
							href="khoahoc2.jsp?course_id=<%=course_id%>"> </a>
						<ul class="ul-menu-header">

							<li class="li-menu-header "><a
								class="lnk-menu-header menu_active" name="Course"> View course </a></li>

							<li class="li-menu-header"><a class="lnk-menu-header "
								name="DSHV"> Danh sách học viên </a></li>
							<li class="li-menu-header"><a class="lnk-menu-header"
								id="DSBT" name="DSBT" onclick="loadDSBTRa()"> Danh sách bài
									tập </a>
								<div class="vts-submenu submenu-245">
									<ul class="submenu1">
										<li><a name="DSBTRa" onclick="loadDSBTRa()"> Danh
												sách bài tập đã ra</a></li>
										<li><a name="DSBTNop" onclick="loadDSBTNop()"> Danh
												sách bài tập đã nộp</a></li>
									</ul>
								</div></li>
							<li class="li-menu-header" style="margin-left: 370px"><a
								href="edit-course.jsp?course_id=<%=course_id%>"><img style="display: block;"
									src="Images/settings.png"></a></li>
							<!-- Courses in category -->
						</ul>
					</div>
				</div>
					<div id="Course" class="body" style="display: block">
					<c:if test="${errorStr != null }">
						<p style="color: red; font-style: italic;">${errorStr }</p>
					</c:if>
					<p style="color: red; font-style: italic;" id ="errorkh"></p>
						<a onclick="showedit()" id ="manager" style="display: none"><img
							style="display: block; float: right;" src="Images/settings2.png"></a>
						<div class="box-test-online martop_0">
							<div class="to-content">
								<div class="to-c-left">
									<div class="to-c-l-list" style="font-size: 18px">
									<%
										for (Section s : sectionDAO.getListSection(Long.parseLong(course_id))) {
									%>
										<div class="row">
											<div class="box-text">
												<a href="edit-section.jsp?course_id=<%=course_id%>&section_id=<%=s.getSection_id()%>"><img style="display: none; float: right" id="edit" name="edit"
													src="Images/settings2.png"></a>
												<h2 style="color: blue">
													<span><%=s.getSection_name() %></span>
												</h2>
												<br>
												<div>
													<p><%=s.getSection_content()%></p>
												</div>
											</div>
											<div class="box-resources">
												<br>
												<%
												for (Exercise ex : exerciseDAO.getListExercise(s.getSection_id())) {
												%>
												<p id="exercise<%=ex.getExercise_id() %>" style="margin-left: 25px">
													<a class ="under" href="Chi-Tiet-Bai-Tap.jsp?course_id=<%=course_id%>&section_id=<%=ex.getSection_id() %>&exercise_id=<%=ex.getExercise_id()%>">
													<img src="Images/icon_news_01.png">
													<%=ex.getExercise_name()%></a>
													
													<span class="edit" style="display: none">
													 <a style="color:#99CC00;" class="under" href="edit-exercise.jsp?course_id=<%=course_id%>&section_id=<%=s.getSection_id() %>&exercise_id=<%=ex.getExercise_id() %>">Sửa</a>
													  &nbsp;|&nbsp;<a style="color:#CC0000;" class="under" onclick="xoaclick(<%=ex.getExercise_id()%>,'exercise')">Xóa</a>
													</span>
												</p>
												<%
													}
													for (Quiz q : questionDAO.getListQuiz(s.getSection_id())) {
												%>
												<p id="quiz<%=q.getId() %>" style="margin-left: 20px">
													<a class ="under" href="LamBaiThi.jsp?quiz_id=<%=q.getId() %>">
													<img src="Images/quiz.png">
													<%=q.getQuiz_name()%></a>
													
													<span class="edit" style="display: none">
														<a style="color:#99CC00;" class="under" href="edit-quiz.jsp?course_id=<%=course_id%>&section_id=<%=s.getSection_id() %>&quiz_id=<%=q.getId() %>">Sửa</a> 
														&nbsp;|&nbsp;<a style="color:#CC0000;" class="under" onclick="xoaclick(<%=q.getId()%>,'quiz')">Xóa</a>
														
													</span>
												</p>
												<%
													}
													for (Resources src : courseDAO.getListResources(s.getSection_id())) {
												%>
														<p id="resources<%=src.getResources_id() %>" style="margin-left: 20px">
															<a class ="under instance-color" href="upload/<%=src.getResources_name()%>">
															<img src="Images/<%=src.getResources_type() %>.png">
															<%=src.getResources_name()%></a>
															
															<span class="edit" style="display: none">
																<a style="color:#CC0000;" class="under" onclick="xoaclick(<%=src.getResources_id()%>,'resources')">Xóa</a>
																
															</span>
														</p>
												<%
													}
													for (Url u : sectionDAO.getListUrl(s.getSection_id())) {
												%>
																<p id="url<%=u.getUrl_id() %>" style="margin-left: 20px">
																	<iframe width="560" height="315" src="https://www.youtube.com/embed/<%=u.getUrl_name() %>" frameborder="0" allowfullscreen></iframe>
																	
																	<span class="edit" style="display: none">
																		<a style="color:#CC0000;" class="under" onclick="xoaclick(<%=u.getUrl_id()%>,'url')">Xóa</a>
																		
																	</span>
																</p>
												<%
													}
															
												%>
											</div>
											
											</form>
											
											<div class="edit" style="display: none;" name="edit">
												<a class="under popup-login" rel="#overlay-add-assignment" onclick="addsourceclick(<%=s.getSection_id()%>)"><img style="float: right"
													src="Images/add-item.png"></a>
											</div>
										</div>
									<%
										}
									%>
									
								<input type="hidden" id="currentsectionid" value=""/>
										<script type="text/javascript">
										    function addsourceclick(sectionid) {
										    	var currentsectionid = sectionid;
										        $('#currentsectionid').val(sectionid);
										        $('#sectionid').val(sectionid);
										        $('#sectionidurl').val(sectionid);
										        $('#sectionidoutline').val(sectionid);
										    }
										    function downloadclick(filename)
										    {
										    	/* alert(filename); */
										    	$.post('DownloadServlet', {'filename':filename}, function (data) {
										    		alert(filename); 
													},'text');
										    }
										    
										    function xoaclick(id,type){
										    	if(type=="exercise")
										    	{
										    		if (confirm("Chắc chắn xóa bài tập. Đồng ý?") == true) {
										    			$.post('ExerciseServlet', {'command':"delete",'exercise_id':id}, function (data) {
															if(data=="Xóa bài tập thành công!")
																{
																	$('#exercise'+id).empty();
																}
															else
																alert(data);
															},'text');
										    		} else {}
										    	}
										    	if(type=="quiz")
										    	{
										    		var check="";
										    		if (confirm("Chắc chắn xóa bài test. Đồng ý?") == true) {
										    			$.post('SetListQuestionServlet', {'command':"checkquestionresult",'quiz_id':id}, function (data) {
										    				check=data;
										    				if(data=="true")
										    				{
										    					if (confirm("ĐÃ CÓ CÁC BÀI THI CỦA HỌC VIÊN. CHẮC CHẮN XÓA . Đồng ý?") == true) {
													    			$.post('SetListQuestionServlet', {'command':"delete",'quiz_id':id}, function (data) {
													    				if(data=="Xóa bài test thành công!")
													    				{
																			$('#quiz'+id).empty();
																		}
																		else
																			alert(data);
																		},'text');
														    	} 
										    				}
										    				else
										    				{
										    					$.post('SetListQuestionServlet', {'command':"delete",'quiz_id':id}, function (data) {
												    				if(data=="Xóa bài test thành công!")
												    				{
																		$('#quiz'+id).empty();
																	}
																	else
																		alert(data);
																	},'text');
										    				}
														},'text');
										    		}
											    }
										    	if(type=="resources")
										    	{
										    		if (confirm("Chắc chắn xóa file. Đồng ý?") == true) {
										    			$.post('SectionServlet', {'command':"deleteresources",'resources_id':id}, function (data) {
										    				if(data=="Xóa file thành công!")
										    				{
																$('#resources'+id).empty();
															}
														else
															alert(data);
														},'text');
										    		} else {}
										    	}
										    	if(type=="url")
										    	{
										    		if (confirm("Chắc chắn xóa Video. Đồng ý?") == true) {
										    			$.post('UrlServlet', {'command':"delete",'url_id':id}, function (data) {
										    				if(data=="Success!")
															{
																$('#url'+id).empty();
															}
														else
															alert(data);
															
														},'text');
										    		} else {}
										    	}
										    }
										    
										</script>
										<div class="edit" style="display: none">
											<div class="row" >
												<p style="text-align: right" >
													<a href="create-section.jsp?course_id=<%=course_id%>"><img src="Images/switch_plus.svg" name = "edit"></a> <a><img
														src="Images/switch_minus.svg"></a>
												</p>
											</div>
										</div>
									</div>
									
								</div>

							</div>
						</div>
					</div>



					<div class="body" id="DSHV" style="margin-left: 10px">
						<h1 style="color: blue;">
							<span>Danh sách học viên của khóa</span>
						</h1>
						<table cellspacing="1" cellpadding="1" width="100%">
							<tbody>
								<tr>
									<td height="4" colspan="4"></td>
								</tr>
								<tr>
									<td><table cellspacing="0" cellpadding="0" width="100%">
											<tbody>
											
												<tr>
													<td class="studyprogram_tabledetails_td_header_dl"
														width="5%" style="text-align: center">STT</td>
													<td class="studyprogram_tabledetails_td_header_dl"
														width="15%" style="text-align: center">Mã Học viên</td>
													<td class="studyprogram_tabledetails_td_header_dl"
														width="25%" style="text-align: center">Tên</td>
													<td class="studyprogram_tabledetails_td_header_dl"
														width="30%" style="text-align: center">Email</td>
													<td class="studyprogram_tabledetails_td_header_dl"
														width="15%" style="text-align: center">Ngày sinh</td>
													<td class="studyprogram_tabledetails_td_header_dl"
														width="10%" style="text-align: center">Chi Tiết</td>
											<form name="myForm" method="post">
											<%
												int stt =0;
												for(User_info student: liststudent ){
													stt++;
												
											%>
												
												<tr>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;<%=stt %></td>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;<%=student.getId()%></td>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;<%=student.getTen() %></td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;<%=student.getEmail() %></td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;<%=student.getNgaysinh() %></td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">
														<div><a id="hocvien<%=student.getId() %>"
														class="under popup-login" rel="#overlay-chitiet-hocvien<%=student.getId()%>" onclick="chitietclick('<%=student.getId()%>')">Chi
															tiết</a>
															</div></td>
												</tr>
												
													<input id="studentid" type="hidden" name ="studentid" value="<%=student.getId()%>">
												
												<%} %>
												</form>
											</tbody>
										</table></td>
								</tr>
							</tbody>
						</table>
						<script type="text/javascript">
							function chitietclick(stid)
							{
								var studentid = stid;
								
								$('#studentid').attr('value',stid);
								
								//alert($('#studentid').attr('value'));
							}
						</script>
						<div class="bv-pagging">
							<style>
.bv-pagging {
	float: left;
	margin-top: 5px;
	margin-bottom: 10px;;
	padding-right: 15px;
	text-align: right;
	width: 890px;
}

.bv-pagging a {
	color: #565656;
	display: inline-block;
	font-size: 14px;
	font-weight: bold;
	height: 20px;
	line-height: 20px;
	margin-left: 3px;
	text-align: center;
	width: 20px;
}

.bv-pagging a:hover, .bv-pagging a.active {
	background-color: #00918D;
	color: #FFFFFF;
}
</style>
							<a href="#"> &lt;</a> 
							<a class="active" href="#"> 1</a> 
							<a href="#"> &gt;</a>

						</div>

					</div>

					<div class="body" id="DSBTRa" style="margin-left: 10px">
						<h1 style="color: blue;">
							<span>Danh sách bài tập đã ra</span>
						</h1>
						<table cellspacing="1" cellpadding="1" width="100%">
							<tbody>
								<tr>
									<td height="4" colspan="4"></td>
								</tr>
								<tr>
									<td><table cellspacing="0" cellpadding="0" width="100%">
											<tbody>

												<tr>
													<td class="studyprogram_tabledetails_td_header_dl"
														width="25%" style="text-align: center">Topic</td>
													<td class="studyprogram_tabledetails_td_header_dl"
														width="25%" style="text-align: center">Tên Bài Tập</td>
													<td class="studyprogram_tabledetails_td_header_dl"
														width="10%" style="text-align: center">Bắt đầu</td>
													<td class="studyprogram_tabledetails_td_header_dl"
														width="10%" style="text-align: center">Giờ</td>
													<td class="studyprogram_tabledetails_td_header_dl"
														width="10%" style="text-align: center">Hạn Nộp</td>
													<td class="studyprogram_tabledetails_td_header_dl"
														width="10%" style="text-align: center">Giờ</td>
													<td class="studyprogram_tabledetails_td_header_dl"
														width="10%" style="text-align: center">Chi tiết</td>
												</tr>
												<%
													for(Exercise ex: listexercise){
												%>
												<tr>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;<%=ex.getExersice_content()%></td>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;<%=ex.getExercise_name() %></td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;<%=ex.getExercise_startdate() %></td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;<%=ex.getExercise_starttime() %></td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;<%=ex.getExercise_enddate() %></td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;<%=ex.getExercise_endtime() %></td>
													
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl"><a
														class="lnk-logout under" href="Chi-Tiet-Bai-Tap.jsp?course_id=<%=course_id %>&section_id=<%=ex.getSection_id() %>&exercise_id=<%=ex.getExercise_id() %>"
														target="_blank">Chi tiết</a></td>
												</tr>
												<%}
													for(Quiz q: listquiz){
												%>
												<tr>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;<%=q.getDescription()%></td>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;<%=q.getQuiz_name()%></td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;<%=q.getStart_date() %></td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;<%=q.getTime() %></td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;<%=q.getEnd_date()%></td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;<%=q.getTime()%></td>
													
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl"><a
														class="lnk-logout under" href="LamBaiThi.jsp?quiz_id=<%=q.getId() %>"
														target="_blank">Chi tiết</a></td>
												</tr>
												<%} %>

											</tbody>
										</table></td>
								</tr>
							</tbody>
						</table>
						<div class="bv-pagging">
							<style>
.bv-pagging {
	float: left;
	margin-top: 5px;
	margin-bottom: 10px;;
	padding-right: 15px;
	text-align: right;
	width: 890px;
}

.bv-pagging a {
	color: #565656;
	display: inline-block;
	font-size: 14px;
	font-weight: bold;
	height: 20px;
	line-height: 20px;
	margin-left: 3px;
	text-align: center;
	width: 20px;
}

.bv-pagging a:hover, .bv-pagging a.active {
	background-color: #00918D;
	color: #FFFFFF;
}
</style>
							<a
								href="#">
								&lt;</a> <a class="active"
								href="#">
								1</a> <a
								href="#">
								&gt;</a>
						</div>
					</div>

					<div class="body" id="DSBTNop" style="margin-left:10px">
						<h1 style="color: blue;">
							<span>Danh sách bài tập đã nộp</span>
						</h1>
						<table cellspacing="1" cellpadding="1" width="100%">
							<tbody>
								<tr>
									<td height="4" colspan="4"></td>
								</tr>
								<tr>
									<td><table cellspacing="0" cellpadding="0" width="100%">
											<tbody>

												<tr>
													<td class="studyprogram_tabledetails_td_header_dl"
														width="15%" style="text-align: center">Topic</td>
													<td class="studyprogram_tabledetails_td_header_dl"
														width="20%" style="text-align: center">Tên Bài Tập</td>
													<td class="studyprogram_tabledetails_td_header_dl"
														width="15%" style="text-align: center">Mã Học Viên</td>
													<td class="studyprogram_tabledetails_td_header_dl"
														width="20%" style="text-align: center">Tên Học Viên</td>
													<td class="studyprogram_tabledetails_td_header_dl"
														width="15%" style="text-align: center">Thời Điểm Nộp</td>
													<td class="studyprogram_tabledetails_td_header_dl"
														width="5%" style="text-align: center">Điểm</td>
													<td class="studyprogram_tabledetails_td_header_dl"
														width="10%" style="text-align: center">Chi Tiết</td>
												</tr>
												<%
													for(Exercise_User exu: listexercise_user ){
												%>
												<tr>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;<%=exu.getSection_name() %></td>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;<%=exu.getExercise_name() %></td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;<%=exu.getUser_id() %></td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;<%=exu.getUser_name() %></td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;<%=exu.getTimesubmit() %></td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl"><%=exu.getScore() %></td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">
														<a id="baitapnop<%=exu.getResult_id() %>"
														class="under popup-login" rel="#overlay-chitiet-btnop<%=exu.getResult_id()%>">Chi
															tiết</a></td>
												</tr>
													<%
														}
												for(Quiz_User qu: listquiz_user ){
												%>
												<tr>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;<%=qu.getSection_name() %></td>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;<%=qu.getQuiz_name() %></td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;<%=qu.getUser_id() %></td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;<%=qu.getUser_name() %></td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;<%=qu.getTimesubmit() %></td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl"><%=qu.getScores() %></td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">
														<a id="quiznop<%=qu.getResult_id() %>"
														class="under popup-login" rel="#overlay-chitiet-btnop-quiz<%=qu.getResult_id()%>">Chi
															tiết</a></td>
												</tr>
													<%} %>
											</tbody>
										</table></td>
								</tr>
							</tbody>
						</table>
						<div class="bv-pagging">
							<style>
.bv-pagging {
	float: left;
	margin-top: 5px;
	margin-bottom: 10px;;
	padding-right: 15px;
	text-align: right;
	width: 890px;
}

.bv-pagging a {
	color: #565656;
	display: inline-block;
	font-size: 14px;
	font-weight: bold;
	height: 20px;
	line-height: 20px;
	margin-left: 3px;
	text-align: center;
	width: 20px;
}

.bv-pagging a:hover, .bv-pagging a.active {
	background-color: #00918D;
	color: #FFFFFF;
}
</style>
							<a
								href="#">
								&lt;</a> <a class="active"
								href="#">
								1</a> <a
								href="#">
								&gt;</a>
						</div>
					</div>

					<script>
						$(document)
								.ready(
										function() {
											$('.lnk-menu-header')
													.click(
															function() {
																try {

																	var id_tab = $(
																			this)
																			.attr(
																					'name');
																	if ($(this)
																			.hasClass(
																					'menu_active')) {

																	} else {
																		$(
																				'.lnk-menu-header')
																				.removeClass(
																						'menu_active');
																		$(
																				'.body')
																				.hide();
																		$(this)
																				.addClass(
																						'menu_active');
																		$(
																				'#'
																						+ id_tab)
																				.fadeIn(
																						"slow");
																	}
																} catch (err) {
																}

															});
										});
						function loadDSBTRa() {
							var id_tab2 = $(this).attr('name');
							$('.lnk-menu-header').removeClass('menu_active');
							$('.body').hide();
							$('#DSBT').addClass('menu_active');
							$('#DSBTRa').fadeIn("slow");
						}
						function loadDSBTNop() {
							var id_tab2 = $(this).attr('name');
							$('.lnk-menu-header').removeClass('menu_active');
							$('.body').hide();
							$('#DSBT').addClass('menu_active');
							$('#DSBTNop').fadeIn("slow");
						}
					</script>
				</div>
			</div>

			<div
				style="width: 392px; position: fixed; z-index: 0; top: 66.2px; left: 478.5px; display: none;"
				id="overlay-add-assignment">
				<a class="close"></a>
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
</style>
				<div class="box-popup2">
					<a class="popup-close">X </a>
					<h3 class="bp-title">Add an activity or resource</h3>
					<div class="bpc-row">
						<div class="add-source-left" id="style-source">
							<div class="bpc-row">
								<a class="choose-style active" name="BaiTap"><span>Bài
										tập</span></a>
							</div>
							<div class="bpc-row">
								<a class="choose-style" name="File"><span>File</span></a>
							</div>
							
							<div class="bpc-row">
								<a class="choose-style" name="URL"><span>URL</span></a>
							</div>
							<div class="bpc-row">
								<a class="choose-style" name="TracNghiem"><span>Thi
										trắc nghiệm</span></a>
							</div>
							<div class="bpc-row">
								<a class="choose-style" name="Outline"><span>Up đề cương</span></a>
							</div>
							
						</div>
						
						<div class="add-source-right" id="BaiTap" style="display: block">
							<div class="bpc-row">
								<span class="sp-text">Thêm bài tập</span>
							</div>
							<div class="bpc-row">
								<span class="sp-text"></span>
							</div>
							<div class="add-footer">

								<a onclick="addclick(1)"><input type="button" name="" value="Add"
									 id=""
									class="bpt-lnk-save btn-add"></a>
								
							</div>
						</div>
						
						
						<div class="add-source-right" id="URL">
							<div class="bpc-row">
								<span class="sp-text">Thêm URL</span>
							</div>
							
							<div class="bpt-row">
							
				                <div class="bpt-item-right">
				                    <input name="url" type="text" maxlength="200" id="url" class="bpt-txt" style="margin-left:15px">
				               	</div>
				            </div>
							
							<div class="add-footer">
								<input type="button" name="btnurl" value="Add"
									onclick="btnurlclick()" id="btnurl"
									class="bpt-lnk-save btn-add">
									<input type="hidden" name="sectionidurl" id="sectionidurl">
								<!--<script type="text/javascript">
                           function btnDangNhap_OnClientClick() {
                                document.getElementById('login_btnDangNhap').style.visibility = 'hidden';
                                return true;
                            }
                        </script>-->

							</div>
						</div>

						<div class="add-source-right" id="TracNghiem">
							<div class="bpc-row">
								<span class="sp-text">Thêm Thi trắc nghiệm</span>
							</div>
							<div class="bpc-row">
								<span class="sp-text"></span>
							</div>
							<div class="add-footer">

								<a onclick="addclick(4)"><input type="button" name="" value="Add"
									 id=""
									class="bpt-lnk-save btn-add"></a>
								
							</div>
						</div>
						<form action="UploadServlet" method="post" enctype="multipart/form-data">
						<input type="hidden" name="command" value="file">
						<input type="hidden" name="sectionidoutline" value="" id = "sectionidoutline">
						<input type="hidden" name="courseid" value="<%=course_id %>" id = "courseid">
						<div class="add-source-right" id="File">
							<div class="bpc-row">
								<span class="sp-text">Chọn file đính kèm</span>
							</div>
							<div class="bpc-row">
								<span class="sp-text"><input name="ctl14$ThongTinHocVien$UserImage1" type="file"
									id="ctl14_ThongTinHocVien_UserImage1" class="file"
									style="width: 210px">
								<p class="bpt-note-img">
									<span id="ctl14_ThongTinHocVien_lblErrImage"></span>
								</p>
							</div>
							<div class="add-footer">

								<input type="submit" name="login$btnDangNhap" value="Add"
									onclick="btnDangNhap_OnClientClick();" id="login_btnDangNhap"
									class="bpt-lnk-save btn-add">
								<!--<script type="text/javascript">
                           function btnDangNhap_OnClientClick() {
                                document.getElementById('login_btnDangNhap').style.visibility = 'hidden';
                                return true;
                            }
                        </script>-->

							</div>
						</div>
						</form>
						<form action="UploadServlet" method="post" enctype="multipart/form-data">
						<input type="hidden" name="command" value="outline">
						<input type="hidden" name="sectionid" value="" id = "sectionid">
						<input type="hidden" name="courseid" value="<%=course_id %>" id = "courseid">
						<div class="add-source-right" id="Outline" style="margin-top: -8px;">
							<div class="bpc-row">
								<span class="sp-text">Đề cương môn học:<a class="under instance-color" href="upload/<%=outline.getOutline()%>">
															<img src="Images/<%=outline.getType() %>.png"><%=outline.getOutline() %></a></span>
							</div>
							<div class="bpc-row">
								<span class="sp-text">Chọn file đính kèm</span>
							</div>
							<div class="bpc-row">
								<span class="sp-text"><input name="ctl14$ThongTinHocVien$UserImage1" type="file"
									id="ctl14_ThongTinHocVien_UserImage1" class="file"
									style="width: 210px">
								<p class="bpt-note-img">
									<span id="ctl14_ThongTinHocVien_lblErrImage"></span>
								</p>
							</div>
							<div class="add-footer">

								<input type="submit" name="login$btnDangNhap" value="Add"
									onclick="btnDangNhap_OnClientClick();" id="login_btnDangNhap"
									class="bpt-lnk-save btn-add">
								<!--<script type="text/javascript">
                           function btnDangNhap_OnClientClick() {
                                document.getElementById('login_btnDangNhap').style.visibility = 'hidden';
                                return true;
                            }
                        </script>-->

							</div>
						</div>
						</form>
					</div>

				</div>

	
				<script>
					$(document).ready(function() {
						$('.choose-style').click(function() {
							try {
								var id_tab = $(this).attr('name');
								if ($(this).hasClass('active')) {
								} else {
									$('.choose-style').removeClass('active');
									$('.add-source-right').hide();
									$(this).addClass('active');
									$('#' + id_tab).fadeIn("slow");
								}
							} catch (err) {
							}
						});
						
					});
				</script>
				<script type="text/javascript">
				function addclick(data){
					if(data==1)
						window.location.href = "create-exercise.jsp?course_id="+<%=course_id%>+"&section_id=" + $('#currentsectionid').val();
					else if(data==4)
						window.location.href = "create-quiz.jsp?course_id="+<%=course_id%>+"&section_id=" + $('#currentsectionid').val();
				}
				function btnurlclick(){
					/* alert($('#url').val() + $('#sectionidurl').val() ) */
					$.post('UrlServlet', {'command':"insert",'section_idurl':$('#sectionidurl').val(),'url':$('#url').val()}, function (data) {
						if(data=="success!")
							location.reload();
                 },'text');
				}
				</script>
			</div>
			<!-- tạo n cái popup chi tiết -->
			<%
				for(User_info student: liststudent ){
					boolean f =false;
								
			%>
			<div
				style="width: 392px; position: fixed; z-index: 0; top: 66.2px; left: 478.5px; display: none;"
				id="overlay-chitiet-hocvien<%=student.getId()%>">
				<a class="close"></a>
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

				<div class="box-popup">
					<a class="popup-close">X </a>
					<h3 class="bp-title">Thông tin chi tiết</h3>
					<div class="bp-content">
						<div id="login_pnLogin">
							<div class="bpc-row">
								<span class="sp-left">Tên:</span> <span class="sp-right"><%=student.getTen() %></span>
							</div>
							<div class="bpc-row">
								<span class="sp-left">SĐT:</span> <span class="sp-right"><%=student.getSodienthoai() %></span>
							</div>
							<% String gioitinh = "";
								if(student.getGioitinh()==0)
									gioitinh="Nam";
								else
									gioitinh="Nữ";
							%>
							<div class="bpc-row">
								<span class="sp-left">Giới tính:</span> <span class="sp-right"><%=gioitinh %></span>
							</div>
							<div class="bpc-row">
								<span class="sp-left">Ngày sinh:</span> <span class="sp-right">
									<%=student.getNgaysinh() %></span>
							</div>
							<div class="bpc-row">
								<span class="sp-left">Email:</span> <span class="sp-right"><%=student.getEmail() %></span>
							</div>
							<div class="bpc-row">
								<span class="sp-left">Ảnh đại diện:</span>
								<div class="bpt-img-avarta">
									<img src="upload/<%=student.getAnhdaidien() %>" alt="" height="48px">
								</div>
							</div>
							<div class="bpc-row">
								<span class="sp-left">Địa chỉ:</span> <span class="sp-right"><%=student.getDiachi() %></span>
							</div>

							<div class="bpc-row" style="margin-top: 20px;">
								<span class="sp-left"></span> <span class="sp-right"> <a
									class="close"><input type="submit" value="Ok"
										 id="btnforget" class="bpt-lnk-save btn-login"></a>
								</span>
							</div>
							
						</div>
					</div>
				</div>
			</div>
			<%		
				}
			%>
			
			
			<%
				for(Exercise_User exu: listexercise_user ){
			%>
			<div
				style="width: 392px; position: fixed; z-index: 0; top: 66.2px; left: 478.5px; display: none;"
				id="overlay-chitiet-btnop<%=exu.getResult_id()%>">
				<a class="close"></a>
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
				<form action="ExerciseServlet" method="post">
				<div class="box-popup">
					<a class="popup-close">X </a>
					<h3 class="bp-title">Thông tin chi tiết</h3>
					<div class="bp-content">
						<div id="login_pnLogin">
							<div class="bpc-row">
								<span class="sp-left">Topic</span> <span class="sp-right"><%=exu.getSection_name() %></span>
							</div>
							<div class="bpc-row">
								<span class="sp-left">Tên bài tập</span> <span class="sp-right"><%=exu.getExercise_name() %></span>
							</div>
							<div class="bpc-row">
								<span class="sp-left">File bài tập</span> <span class="sp-right"><a
									class="under instance-color" href="upload/<%=exu.getFilesubmit()%>">
															<img src="Images/ocx.png">
															<%=exu.getFilesubmit()%></a></span>
							</div>
							<div class="bpc-row">
								<span class="sp-left">Mã học viên:</span> <span class="sp-right"><%=exu.getUser_id() %></span>
							</div>
							<div class="bpc-row">
								<span class="sp-left">Tên học viên:</span> <span
									class="sp-right"><%=exu.getUser_name() %></span>
							</div>
							<div class="bpc-row">
								<span class="sp-left">Thời Điểm Nộp:</span> <span
									class="sp-right"><%=exu.getTimesubmit() %> </span>
							</div>
							<div class="bpc-row">
								<span class="sp-left">Mô tả:</span>
								<textarea  class="txt-input" name="Description<%=exu.getDescription() %>"
									style="height: 40px; width: 200px;" id="Description<%=exu.getDescription() %>"
									placeholder="Nội dung"><%=exu.getDescription() %></textarea>
							</div>
							<div class="bpc-row">
								<span class="sp-left">Điểm:</span> <span class="sp-right">
									<input name="score<%=exu.getResult_id() %>" type="text"
									value="<%=exu.getScore() %>" maxlength="100" id="score<%=exu.getResult_id() %>"
									class="bpt-txt">
								</span>
							</div>
							<div class="bpc-row">
								<span class="sp-left">Đánh giá:</span>
								<textarea class="txt-input" name="review<%=exu.getResult_id() %>"
									style="height: 40px; width: 200px;" id="review<%=exu.getResult_id() %>"
									placeholder="Nội dung"><%=exu.getReview() %></textarea>
							</div>

							<div class="bpc-row" style="margin-top: 20px;">
								<span class="sp-left"></span> <span class="sp-right">
								 <a><input type="button" value="Ok"
										   id="chamdiem<%=exu.getResult_id() %>" class="bpt-lnk-save btn-login"></a>
								</span>
								<input type="hidden" value="chamdiem" name="command">
							</div>
							<script type="text/javascript">
							$('#chamdiem'+<%=exu.getResult_id() %>).click(function() {
								if (confirm("Chấm điểm. Đồng ý?") == true) {
									$.post('ExerciseServlet', {'command':"chamdiem",'result_id':<%=exu.getResult_id()%>,'score':$('#score'+<%=exu.getResult_id()%>).val(),'review':$('#review'+<%=exu.getResult_id()%>).val()}, function (data) {
										if(data=="Chấm điểm không thành công!")
										{
											$('#errorkh').html(data);
										}
									else
										window.location.reload();
									},'text');
									<%-- alert($('#score'+<%=exu.getResult_id()%>).val()+$('#review'+<%=exu.getResult_id()%>).val()); --%>
								} else {}
								
							});
							</script>
						</div>
					</div>
				</div>
				</form>
			</div>
			<%} %>
			

		<%
			for(Quiz_User qu: listquiz_user ){
			%>
			<div
				style="width: 392px; position: fixed; z-index: 0; top: 66.2px; left: 478.5px; display: none;"
				id="overlay-chitiet-btnop-quiz<%=qu.getResult_id()%>">
				<a class="close"></a>
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
				<form action="ExerciseServlet" method="post">
				<div class="box-popup">
					<a  class="popup-close">X </a>
					<h3 class="bp-title">Thông tin chi tiết</h3>
					<div class="bp-content">
						<div id="login_pnLogin">
							<div class="bpc-row">
								<span class="sp-left">Topic</span> <span class="sp-right"><%=qu.getSection_name() %></span>
							</div>
							<div class="bpc-row">
								<span class="sp-left">Tên bài thi:</span> <span class="sp-right"><%=qu.getQuiz_name() %></span>
							</div>

							<div class="bpc-row">
								<span class="sp-left">Mã học viên:</span> 
								<span class="sp-right"><%=qu.getUser_id() %></span>
							</div>
							<div class="bpc-row">
								<span class="sp-left">Tên học viên:</span> <span
									class="sp-right"><%=qu.getUser_name() %></span>
							</div>
							<div class="bpc-row">
								<span class="sp-left">Thời Điểm Nộp:</span> <span
									class="sp-right"><%=qu.getTimesubmit() %> </span>
							</div>
							<div class="bpc-row">
								<span class="sp-left">Số câu đúng:</span> <span
									class="sp-right"><%=qu.getSocaudung() %>/<%=qu.getTongsocau() %></span>
							</div>
							<div class="bpc-row">
								<span class="sp-left">Điểm:</span> <span
									class="sp-right"><%=qu.getScores() %> </span>
							</div>

							<div class="bpc-row" style="margin-top: 20px;">
								<span class="sp-left"></span> <span class="sp-right">
								  <a class="close"><input type="button" value="Ok"
										    class="bpt-lnk-save btn-login"></a>
								</span>
							</div>
							
						</div>
					</div>
				</div>
				</form>
				</div>
			<%} %>

<script type="text/javascript">
					function FinishConfirmationchamdiem() {
						if (confirm("Chấm điểm. Đồng ý?") == true) {
							return true;
						} else {
							return false;
						}
					}
					
				</script>
				<script type="text/javascript">
				function clicksearchoverlay(type,id)
				{
					$('#suggestions').hide();
					 if(type == "hocvien")
						$('#hocvien'+id).click();
					 else if(type == "baitapnop")
							$('#baitapnop'+id).click();
					 else if(type == "quiznop")
							$('#quiznop'+id).click();
				}
				</script>
<!-- search resurl-->
		<div style="display: none;left: 573px;top: 92px;" id="suggestions" class="suggestion">

		</div>			
		<!-- search jquery -->
		<script type="text/javascript">
		
		$('#search').keyup(function (){
			var quyen = '<%=user_info.getQuyen()%>';
			var iduser = '<%=user_info.getId()%>';
			/* học viên */
			var hocvienjs = <%=JSONUser_info%>;
	        var Searchhocvien = function (strhocvien) {
	        	strhocvien = unsignString(trim(strhocvien));
	        	var result=[hocvienjs[0]];
	            var i = null;
	            for (i = 0; hocvienjs.length > i; i += 1) {
	                if (unsignString(trim(hocvienjs[i].id)).search(strhocvien)!=-1 
	                		|| unsignString(trim(hocvienjs[i].ten)).search(strhocvien)!=-1
	                		|| unsignString(trim(hocvienjs[i].email)).search(strhocvien)!=-1) {
	                	result.push(hocvienjs[i]);
	                }
	            }
	            if(result)
	            	 return result;
	            return null;
	        };
	        var listhocvien= Searchhocvien($('#search').val());
	        
	        /* exercise */
			var exercisejs = <%=JSONExercise%>;
	        var Searchexercise = function (strexercise) {
	        	strexercise = unsignString(trim(strexercise));
	        	var result=[exercisejs[0]];
	            var i = null;
	            for (i = 0; exercisejs.length > i; i += 1) {
	                if (unsignString(trim(exercisejs[i].exercise_name)).search(strexercise)!=-1 
	                		|| unsignString(trim(exercisejs[i].exercise_startdate)).search(strexercise)!=-1)
	                {
	                	result.push(exercisejs[i]);
	                }
	            }
	            if(result)
	            	 return result;
	            return null;
	        };
	        var listexercise= Searchexercise($('#search').val());
	        
	        /* quiz */
			var quizjs = <%=JSONQuiz%>;
	        var Searchquiz = function (strquiz) {
	        	strquiz = unsignString(trim(strquiz));
	        	var result=[quizjs[0]];
	            var i = null;
	            for (i = 0; quizjs.length > i; i += 1) {
	                if (unsignString(trim(quizjs[i].quiz_name)).search(strquiz)!=-1 
	                		|| unsignString(trim(quizjs[i].start_date)).search(strquiz)!=-1)
	                {
	                	result.push(quizjs[i]);
	                }
	            }
	            if(result)
	            	 return result;
	            return null;
	        };
	        var listquiz= Searchquiz($('#search').val());
	        
	        /* exercise_user */
			var exercise_userjs = <%=JSONExercise_User%>;
	        var Searchexercise_user = function (strexercise_user) {
	        	strexercise_user = unsignString(trim(strexercise_user));
	        	var result=[exercise_userjs[0]];
	            var i = null;
	            for (i = 0; exercise_userjs.length > i; i += 1) {
	                if (unsignString(trim(exercise_userjs[i].user_id)).search(strexercise_user)!=-1
	                	||unsignString(trim(exercise_userjs[i].user_name)).search(strexercise_user)!=-1
	                	||unsignString(trim(exercise_userjs[i].exercise_name)).search(strexercise_user)!=-1
	                	||unsignString(trim(exercise_userjs[i].filesubmit)).search(strexercise_user)!=-1
	                	||unsignString(trim(exercise_userjs[i].timesubmit)).search(strexercise_user)!=-1
	                	||unsignString(trim(exercise_userjs[i].section_name)).search(strexercise_user)!=-1)
	                {
	                		result.push(exercise_userjs[i]);
	                }
	            }
	            if(result)
	            	 return result;
	            return null;
	        };
	        var listexercise_user= Searchexercise_user($('#search').val());
	        
	        /* quiz_user */
			var quiz_userjs = <%=JSONQuiz_User%>;
	        var Searchquiz_user = function (strquiz_user) {
	        	strquiz_user = unsignString(trim(strquiz_user));
	        	var result=[quiz_userjs[0]];
	            var i = null;
	            for (i = 0; quiz_userjs.length > i; i += 1) {
	                if (unsignString(trim(quiz_userjs[i].user_id)).search(strquiz_user)!=-1
	                	||unsignString(trim(quiz_userjs[i].user_name)).search(strquiz_user)!=-1
	                	||unsignString(trim(quiz_userjs[i].quiz_name)).search(strquiz_user)!=-1
	                	||unsignString(trim(quiz_userjs[i].timesubmit)).search(strquiz_user)!=-1
	                	||unsignString(trim(quiz_userjs[i].section_name)).search(strquiz_user)!=-1)
	                {
	                		result.push(quiz_userjs[i]);
	                }
	            }
	            if(result)
	            	 return result;
	            return null;
	        };
	        var listquiz_user= Searchquiz_user($('#search').val());
	        
	        /* resources */
			var resourcesjs = <%=JSONResources%>;
	        var Searchresources = function (strresources) {
	        	strresources = unsignString(trim(strresources));
	        	var result=[resourcesjs[0]];
	            var i = null;
	            for (i = 0; resourcesjs.length > i; i += 1) {
	                if (unsignString(trim(resourcesjs[i].resources_name)).search(strresources)!=-1 )
	                {
	                		result.push(resourcesjs[i]);
	                }
	            }
	            if(result)
	            	 return result;
	            return null;
	        };
	        var listresources= Searchresources($('#search').val());
	      
	        
	        
	        
	        	  var resHtml = '';
	        	  var hasResult = false;
	        	  resHtml += '<ul> '
	                  + '<li><a class="search-title"> Tìm kiếm với <span>"' + $('#search').val() + '"</span></a></li>';
	                  if (listhocvien.length > 1 && quyen!="2") {
	                      hasResult = true;
	                      resHtml += '<li class="item-sugg item-sugg1">'
	                    + '<h3>Học Viên</h3>'
	                    + '<ul>';
	                    	for (i = 1; listhocvien.length > i; i += 1) {
	                          resHtml += '<li><a class="bold link-search"  onmouseup="clicksearchoverlay(\'hocvien\',\''+listhocvien[i].id+'\')"><img width="62" height="35" src="upload/' + listhocvien[i].anhdaidien+ '" class="image-search"/>' + listhocvien[i].ten + '</li></a></li>';;
	                         
	                    	}
	                      resHtml += '</ul></li>';
	                      
	                  }
	                  var course_id= <%=course_id%>;
	                 
	                  if (listexercise.length > 1) {
	                      hasResult = true;
	                      resHtml += '<li class="item-sugg item-sugg1">'
	                    + '<h3>Bài tập</h3>'
	                    + '<ul>';
	                    	for (i = 1; listexercise.length > i; i += 1) {
	                          resHtml += '<a class="bold link-search" href="Chi-Tiet-Bai-Tap.jsp?course_id='+course_id+'&section_id='+listexercise[i].section_id+'&exercise_id='+listexercise[i].exercise_id+'"><li><img src="Images/icon_news_01.png"/>' + listexercise[i].exercise_name + '</li></a>';;
	                      }
	                      resHtml += '</ul></li>';
	                  }
	                  
	                  if (listquiz.length > 1) {
	                      hasResult = true;
	                      resHtml += '<li class="item-sugg item-sugg1">'
	                    + '<h3>Bài thi trắc nghiệm</h3>'
	                    + '<ul>';
	                    	for (i = 1; listquiz.length > i; i += 1) {
	                          resHtml += '<a class="bold link-search" href="LamBaiThi.jsp?quiz_id='+listquiz[i].id+'"><li><img src="Images/quiz.png"/>' + listquiz[i].quiz_name + '</li></a>';;
	                      }
	                      resHtml += '</ul></li>';
	                  }
	                  
	                  if (listexercise_user.length > 1  && quyen!="2") {
	                      hasResult = true;
	                      resHtml += '<li class="item-sugg item-sugg1">'
	                    + '<h3>Bài tập đã submit</h3>'
	                    + '<ul>';
	                    	for (i = 1; listexercise_user.length > i; i += 1) {
	                          resHtml += '<a class="bold link-search" onmouseup="clicksearchoverlay(\'baitapnop\',\''+listexercise_user[i].result_id+'\')"><li><img src="Images/submited.png"/>' +  listexercise_user[i].user_name +'-'+listexercise_user[i].filesubmit+'-'+listexercise_user[i].description+'-'+listexercise_user[i].timesubmit+'-'+listexercise_user[i].section_name+ '</li></a>';
	                      }
	                      resHtml += '</ul></li>';
	                  }
	                  
	                  if (listquiz_user.length > 1  && quyen!="2") {
	                      hasResult = true;
	                      resHtml += '<li class="item-sugg item-sugg1">'
	                    + '<h3>Bài Thi trắc nghiệm đã submit</h3>'
	                    + '<ul>';
	                    	for (i = 1; listquiz_user.length > i; i += 1) {
	                          resHtml += '<a class="bold link-search" onmouseup="clicksearchoverlay(\'quiznop\',\''+listquiz_user[i].result_id+'\')"><li><img src="Images/submited.png"/>' + listquiz_user[i].quiz_name+'-' + listquiz_user[i].user_name+'-'+ listquiz_user[i].timesubmit+'-'+listquiz_user[i].section_name+ '</li></a>'; 
	                      }
	                      resHtml += '</ul></li>';
	                  }
	                  
	                  if (listresources.length > 1) {
	                      hasResult = true;
	                      resHtml += '<li class="item-sugg item-sugg1">'
	                    + '<h3>Tài liệu</h3>'
	                    + '<ul>';
	                    	for (i = 1; listresources.length > i; i += 1) {
	                          resHtml += '<a class="bold link-search" href="upload/'+listresources[i].resources_name+'"><li><img src="Images/'+listresources[i].resources_type+'.png"/>' + listresources[i].resources_name + '</li></a>';;
	                      }
	                      resHtml += '</ul></li>';
	                  }
	                  
	        	  if (hasResult)
	        		  {
	                    $('#suggestions').html(resHtml);
	        		  }
	                else
	                    $('#suggestions').html('<ul><li><a class="search-title"> Không tìm thấy kết quả nào cho "' + $('#search').val()
	                  + '"</a></li></ul>');
			});
		
		
		</script>
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