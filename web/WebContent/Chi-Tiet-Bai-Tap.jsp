<%@page import="java.sql.Date"%>
<%@page import="model.Exercise_User"%>
<%@page import="dao.ExerciseDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="dao.CourseDAO"%>
<%@page import="model.Course"%>
<%@page import="dao.Exercise_UserDAO"%>
<%@page import="model.Exercise"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html xmlns="http://www.w3.org/1999/xhtml"><head>
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
<link rel="stylesheet" type="text/css" href="https://lms.hcmute.edu.vn/theme/yui_combo.php?rollup/3.15.0/yui-moodlesimple-min.css">

<link charset="utf-8" rel="stylesheet" id="yui_3_15_0_2_1476174513860_237" href="https://lms.hcmute.edu.vn/theme/yui_combo.php?3.15.0/cssbutton/cssbutton-min.css">

<title>
    Bài Tập
</title><meta content="http://viettelstudy.vn/images/share_fb_img.jpg" name="og:image">
<link rel="icon" href="http://viettelstudy.vn/images/favicon.ico">
<script async="" src="//connect.facebook.net/en_US/fbevents.js"></script>
<script type="text/javascript" async="" src="http://www.google-analytics.com/ga.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.bxSlider.min.js"></script>
<script type="text/javascript" src="js/overlay2.js"></script>
<script type="text/javascript" src="js/home.js"></script>
</head>
<body>


    



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
	<%@ include file="//includes/message.jsp" %>
	<%@ include file="//includes/overlaylogin.jsp" %>
	<%
	CourseDAO courseDAO = new CourseDAO();	
	Exercise_UserDAO euDAO = new Exercise_UserDAO();
	Exercise_User eu = new Exercise_User();
	String course_id = "";
	Course course = new Course();
	String exercise_id="";
	String section_id="";
	ExerciseDAO exerciseDAO = new ExerciseDAO();
	Exercise exercise = new Exercise();
	if(request.getParameter("course_id")!=null && request.getParameter("exercise_id")!=null && request.getParameter("section_id")!=null)
	{
		course_id = request.getParameter("course_id");
		exercise_id = request.getParameter("exercise_id");
		course = courseDAO.getCourse(Long.parseLong(course_id));
		exercise = exerciseDAO.getExercise(Long.parseLong(exercise_id));
		eu = euDAO.timbaidanop(Long.parseLong(exercise_id), user_info.getId());
		section_id=request.getParameter("section_id");
	}
	%>
	<script>
				$(document).ready(function() {
					if(<%=user_info.getQuyen()%>=="1")
						{
							$('#header-manager').attr('style','display: block');
							$('#manager').attr('style','display: block');
						}
					});
			</script>



<script type="text/javascript">
    
    function SearchOnFocus(field) {
        if (field.value == 'Từ khóa tìm kiếm') { field.value = ''; }
    }

    function SearchOnBlur(field) {
        if (field.value == '') { field.value = 'Từ khóa tìm kiếm'; }
    }

</script>



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
.persion-right2{
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

.box-text{

}
.box-resources{

}
.body{
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
						&gt; Khóa Học &gt; <%=course.getCourse_name()%> &gt; <%=exercise.getExercise_name()%></a>
				</div>

				<div class="persion-right2" style="display: block;" id="1">

    <style type="text/css">
        .edit{}
    </style>

    <script type="text/javascript">
        function showedit() {
                $(edit).slideToggle();
                $('.edit').slideToggle();
        }
       function loadDSHV()
        {
            $('.course').attr('style','display:none')
        }

        function loadCourse()
        {
            $('.course').attr('style','display:block')
        }
    </script>
        <div class="row">
            <h1 class="learn-process-h3">
                <span><%=course.getCourse_name() %></span>
            </h1>
            
        </div>
        <div class="learn-process process-study">
            <div id="Course" class="body" style="display:block">
            <a onclick="showedit()" id ="manager" style="display: none"><img style="display: block;float:right; " src="Images/settings2.png"></a>
        <div class="box-test-online martop_0">
            <div class="to-content">
                <div class="to-c-left">
                   <div class="to-c-l-list" style="font-size:18px">


                    <div class="row">
                        <div class="box-text">
                        <a href="edit-exercise.jsp?course_id=<%=course_id%>&section_id=<%=section_id %>&exercise_id=<%=exercise_id%>"><img style="display: none; float: right" id="edit" name="edit"
													src="Images/settings2.png"></a>
                            <h2 style="color:blue">
                                <span><%=exercise.getExercise_name() %></span>
                            </h2>
                            <br>
                            <p><%=exercise.getExersice_content()%></p>
                        </div>
                        
                        
      


												<div class="box-resources">
                            <br>
                        </div>

                    </div>
                 </div>
                </div>
                <script type="text/javascript">
										    function addsourceclick(sectionid) {
										    	var currentsectionid = sectionid;
										        $('#currentsectionid').val(sectionid);
										    }
										    </script>
            </div>
        </div>
        </div>			
        				<div id="submitexercise">
			        			<%if(user_info.getQuyen()==2)
			        			{
			        				if(eu==null)
			        				{
								%>
								<form  action="SubmitExerciseServlet" method="post" enctype="multipart/form-data">
													<input type="hidden" name="exercise_id" value="<%=exercise_id%>">
													<input type="hidden" name="course_id" value="<%=course_id%>">
													<input type="hidden" name="filename" value="">
													
													<div class="bpt-row">
													<div class="bpt-item-left">Mô tả:</div>
													<div class="bpt-item-right">
														<input name="ten" type="text"
															value="" maxlength="100" id=""
															class="bpt-txt"> <span
															id="ctl14_ThongTinHocVien_lblErrTenDayDu"></span> <input
															type="hidden" id="usermame" name="username"
															value="null" />
													</div>
													
												</div>
													<div class="row">
													<div class="bpt-row bpt-row-line">
														<div class="bpt-item-left">Bài tập:</div>
														
														<div class="bpt-item-right">
															<a>sads.pdf</a>
															<input name="uploadFile" type="file"
																id="uploadFile" class="file" style="width: 210px">
															
															<p class="bpt-note-img">
																<span id="ctl14_ThongTinHocVien_lblErrImage"></span>
															</p>

														</div>
													</div>
												</div>
												
												<div class="bpt-row">
													<div class="bpt-item-left">Điểm:</div>
													<div class="bpt-item-right">
														<input name="ten" type="text" disabled="disabled"
															value="" maxlength="100" id=""
															class="bpt-txt">
													</div>
													
												</div>
												<div class="bpt-row">
													<div class="bpt-item-left">Đánh giá:</div>
													<div class="bpt-item-right">
														<input name="ten" type="text" disabled="disabled"
															value="" maxlength="100" id=""
															class="bpt-txt">
													</div>
													
												</div>
												<div class="bpt-row">
													<div class="bpt-item-left"></div>
													<div class="bpt-item-right">
														<input name="submitexercise" type="submit" value="Cập nhật bài tập" 
																style="width: 150; height: 30;">
													</div>
													
												</div>
												
												</form>
									<%
										}else{
			        				%>
			        				<form  action="SubmitExerciseServlet" method="post" enctype="multipart/form-data">
													<input type="hidden" name="exercise_id" value="<%=exercise_id%>">
													<input type="hidden" name="course_id" value="<%=course_id%>">
													<input type="hidden" name="filename" value="<%=eu.getFilesubmit()%>">
													
													<div class="bpt-row">
													<div class="bpt-item-left">Mô tả:</div>
													<div class="bpt-item-right">
														<input name="ten" type="text"
															value="<%=eu.getDescription()%>" maxlength="100" id=""
															class="bpt-txt"> 
													</div>
													
												</div>
													<div class="row">
													<div class="bpt-row bpt-row-line">
														<div class="bpt-item-left">Bài tập:</div>
														
														<div class="bpt-item-right">
															<a class ="under" href="upload/<%=eu.getFilesubmit()%>">
															<img src="Images/ocx.png">
															<%=eu.getFilesubmit()%></a>
															<input name="uploadFile" type="file"
																id="uploadFile" class="file" style="width: 210px">
															
															<p class="bpt-note-img">
																<span id="ctl14_ThongTinHocVien_lblErrImage"></span>
															</p>

														</div>
													</div>
												</div>
												
												<div class="bpt-row">
													<div class="bpt-item-left">Điểm:</div>
													<div class="bpt-item-right">
														<input name="ten " type="text" disabled="disabled"
															value="<%=eu.getScore() %>" maxlength="100" id=""
															class="bpt-txt" >
													</div>
													
												</div>
												<div class="bpt-row">
													<div class="bpt-item-left">Đánh giá:</div>
													<div class="bpt-item-right">
														<input name="ten " type="text" disabled="disabled"
															value="<%=eu.getReview() %>" maxlength="100" id=""
															class="bpt-txt" >
													</div>
													
												</div>
												<div class="bpt-row">
													<div class="bpt-item-left"></div>
													<div class="bpt-item-right">
														<input name="submitexercise" type="submit" value="Cập nhật bài tập"
																style="width: 150; height: 30;">
													</div>
													
												</div>
												
												</form>
									<%
										}
									} 
									%>
									
						</div>
												
												
        
        

        
   

</div>
    </div>






</div>



			




			<!--end-body-->
         
<a id="to_top" href="#" style="bottom: 20px; position: fixed; right: 20px; z-index: 9999; display: none;" rel="nofollow">
    <img alt="Go to top!" src="http://viettelstudy.vn/images/gototop.png"></a>
<div id="footer">
    <div id="footer-menu">
        <a href="http://viettelstudy.vn/index.html">TRANG CHỦ</a>&nbsp;|&nbsp;
        <a href="http://viettelstudy.vn/luyen-thi-dai-hoc-mien-phi.html">LUYỆN THI
            ĐẠI HỌC MIỄN PHÍ</a>&nbsp;|&nbsp; <a href="http://viettelstudy.vn/kiem-tra-va-thi-thu.html">
                THI TRỰC TUYẾN</a> &nbsp;|&nbsp;
        
        <a href="http://viettelstudy.vn/tientrinhhoc.aspx">TIẾN TRÌNH HỌC</a>
        &nbsp;|&nbsp;
        
    </div> 
            <div class="footer-menu-new">
  <span class="title">ĐĂNG KÝ NHẬN EMAIL</span>
  <span class="font-des">Đăng ký để nhận tài liệu bổ ích từ StudyFunny.com</span>
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

    <div id="footer-bottom">

        <!--<a class="logo-gd-footer"></a>-->

        <p style="color: #FFFFFF; float: left; font-size: 14px; line-height: 16px; margin-left: 200px;
            margin-top: 4px; text-align: center; width: 640px">
            Sản phẩm của nhóm 3 - Lớp lập trình web sáng thứ 4 - thầy Đặng Thanh Dũng<br>
            Nhóm sinh viên thực hiện: <br>
            Nguyễn Tuấn Anh - Phạm Trung Dũng - Nguyễn Ngọc Hải - Nguyễn Văn Khánh<br>
            Điện thoại: 0962126964 (miễn phí) - Fanpage: <a target="_blank" style="color: #14928E! important;" href="https://www.facebook.com/StudyFunny">StudyFunny</a> - Email: <a href="mailto:StudyFunny@gmail.com">StudyFunny@gmail.com</a><br>                      
                   
        </p>

        <!--<a class="logo_Study-Funny" rel="nofollow"></a>-->

        <p class="gd-copyright">
        </p>
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
            <div id="overlay-footer-left"> </div>
            <div id="overlay-footer-right"> </div>
        </div>
        <!--end-overlay-footer-->
        
    </div>
    <!--end-wrapper-->
    <div style="width:392px;display:none;" id="overlay-test">
        <a class="close"></a>  
        <div class="box-popup" id="box_popup"></div>
    </div>
    








    
    


</body></html>