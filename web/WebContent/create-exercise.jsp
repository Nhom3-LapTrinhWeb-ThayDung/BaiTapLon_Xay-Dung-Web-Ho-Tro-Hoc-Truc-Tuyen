<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Section"%>
<%@page import="dao.SectionDAO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html xmlns="http://www.w3.org/1999/xhtml"><head>
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
<link rel="stylesheet" type="text/css" href="https://lms.hcmute.edu.vn/theme/yui_combo.php?rollup/3.15.0/yui-moodlesimple-min.css">
<link rel="stylesheet" type="text/css" href="https://lms.hcmute.edu.vn/theme/yui_combo.php?rollup/3.15.0/yui-moodlesimple-min.css">
<link rel="stylesheet" type="text/css" href="https://lms.hcmute.edu.vn/theme/yui_combo.php?rollup/3.15.0/yui-moodlesimple-min.css">
<link charset="utf-8" rel="stylesheet" id="yui_3_15_0_2_1476453284347_288" href="https://lms.hcmute.edu.vn/theme/yui_combo.php?3.15.0/cssbutton/cssbutton-min.css">
<link charset="utf-8" rel="stylesheet" id="yui_3_15_0_2_1476453284347_388" href="https://lms.hcmute.edu.vn/theme/yui_combo.php?3.15.0/tabview/assets/skins/sam/tabview.css">
<link charset="utf-8" rel="stylesheet" id="yui_3_15_0_2_1476453284347_652" href="https://lms.hcmute.edu.vn/theme/yui_combo.php?3.15.0/datatable-base/assets/skins/sam/datatable-base.css&amp;3.15.0/datatable-message/assets/skins/sam/datatable-message.css&amp;3.15.0/datatable-sort/assets/skins/sam/datatable-sort.css&amp;3.15.0/resize-base/assets/skins/sam/resize-base.css">

<link charset="utf-8" rel="stylesheet" id="yui_3_15_0_2_1476174513860_237" href="https://lms.hcmute.edu.vn/theme/yui_combo.php?3.15.0/cssbutton/cssbutton-min.css">

<title>
    Edit
</title><meta content="Images/share_fb_img.jpg" name="og:image">
<link rel="icon" href="Images/favicon.ico">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.bxSlider.min.js"></script>
<script type="text/javascript" src="js/overlay2.js"></script>
<script type="text/javascript" src="js/home.js"></script>
</head>
<body>
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


    
		<%@include file="//includes/header.jsp"  %>
		<%@include file="//includes/message.jsp"  %>
		<%@include file="//includes/overlaylogin.jsp"  %>
		<%
			SectionDAO sectionDAO = new SectionDAO();
			//CourseDAO courseDAO = new CourseDAO();
			String course_id = "";
			//Course course = new Course();
			String section_id="";
			Section section = new Section();
			if(request.getParameter("course_id")!=null)
			{
				course_id = request.getParameter("course_id");
				//course = courseDAO.getCourse(Long.parseLong(course_id));
			}
			if(request.getParameter("section_id")!=null)
			{
				section_id = request.getParameter("section_id");
				//course = courseDAO.getCourse(Long.parseLong(course_id));
				section  = sectionDAO.getSection(Long.parseLong(section_id));
			}
			//Section tempsection = new Section();
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

<!-- edit section -->
<div class="persion-right2" style="display: block;" id="1" >
<section id="region-main" class="" style="border: 1px solid #e3e3e3; padding: 2px 10px">
    <div role="main" id="yui_3_15_0_2_1476453284347_360">
        <h2 style="color:blue"><%=section.getSection_name()%></h2>
        <form autocomplete="off" action="https://lms.hcmute.edu.vn/calendar/event.php" method="post" accept-charset="utf-8" id="mform1" class="mform">
            <fieldset class="clearfix collapsible" id="id_general">
                <div >
										<p style="color: red; font-style: italic; padding-left: 15px"
											id="errorexercise" name="errorexercise"></p>
									</div>
                <legend class="ftoggler fheader" id="yui_3_15_0_2_1476453284347_725">
                </legend>
                <div id="fitem_id_name" class="fitem required fitem_ftext instance-color" ><div class="fitemtitle" id="yui_3_15_0_2_1476453284347_972"><label for="id_name" id="yui_3_15_0_2_1476453284347_971">Assignment name* </label></div><div class="felement ftext" id="yui_3_15_0_2_1476453284347_977"><input size="50" name="exercise_name" type="text" id="exercise_name"></div>

                </div>





                <!-- mô tả -->
                <div>
                   
                    <div>
                        <div id="fitem_id_name" class="fitem required fitem_ftext instance-color"><div class="fitemtitle" id="yui_3_15_0_2_1476453284347_972"><label for="id_name" id="yui_3_15_0_2_1476453284347_971">Description</label></div>
                        </div>
                        <textarea class="txt-input" name="exercise_content" style="height:300px;width: 394px;" id="exercise_content" placeholder="Nội dung"></textarea>
                    </div>

                    <div id="fitem_id_timestart" class="fitem required fitem_fdate_time_selector instance-color"><div class="fitemtitle"><div class="fgrouplabel">
                    <label>Allow submissions from* </label></div></div>
                    <fieldset class="felement fdate_time_selector" id="yui_3_15_0_2_1476547644367_100">
                    <a class="visibleifjs" name="timestart[calendar]" href="#"><img alt="Calendar" class="smallicon" title="Calendar" src="https://lms.hcmute.edu.vn/theme/image.php/essential/core/1476366384/i/calendar"></a></fieldset>
                    <input type="date" name ="exercise_startdate" id = "exercise_startdate">
                    <input type="time" name ="exercise_starttime" id ="exercise_starttime">
                    </div>

                    <div id="fitem_id_timestart" class="fitem required fitem_fdate_time_selector instance-color"><div class="fitemtitle"><div class="fgrouplabel"><label>Due date* </label></div></div><fieldset class="felement fdate_time_selector" id="yui_3_15_0_2_1476547644367_100"><a class="visibleifjs" name="timestart[calendar]" href="#"><img alt="Calendar" class="smallicon" title="Calendar" src="https://lms.hcmute.edu.vn/theme/image.php/essential/core/1476366384/i/calendar"></a></fieldset>
                    <input type="date" name ="exercise_enddate" id = "exercise_enddate">
                    <input type="time" name ="exercise_endtime" id ="exercise_endtime">
                    </div>


                    <div id="fitem_id_submitbutton" class="fitem fitem_actionbuttons fitem_fsubmit"><div class="felement fsubmit" id="yui_3_15_0_2_1476546667388_657">
                    <a id="btnsave"><input name="submitbutton" value="Save changes" type="button" id="id_submitbutton"></a></div></div>
                </div>
                <!-- end mô tả -->
				<script type="text/javascript">
					$('#btnsave').click(function() {
						/* alert($('#exercise_name').val()+$('#exercise_startdate').val()+
								$('#exercise_starttime').val()+$('#exercise_enddate').val()+$('#exercise_endtime').val()
								+ $('#exercise_content').val()) */
								var section_id = "<%=section_id%>";
								$.post('ExerciseServlet', {'command':"insert",'exercise_name':$('#exercise_name').val(),'exercise_startdate':$('#exercise_startdate').val(),
							'exercise_starttime':$('#exercise_starttime').val(),'exercise_enddate':$('#exercise_enddate').val(),'exercise_endtime':$('#exercise_endtime').val(),
							'section_id':section_id,'exercise_content':$('#exercise_content').val()}, function (data) {
								//$('#errorexercise').html(data);
								if(data=="Thêm bài tập thành công!")
								{
									window.location.href = "khoahoc2.jsp?course_id="+<%=course_id%>;
								}
								else
									$('#errorexercise').html(data);
							},'text');
					});
				</script>



            </fieldset>
        </form>
    </div>
</section>
</div> 
<!-- end edit section -->



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
    <%} %>
</body></html>