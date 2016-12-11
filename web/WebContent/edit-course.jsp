<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Course"%>
<%@page import="dao.CourseDAO"%>
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
<link rel="stylesheet" type="text/css" href="css/yui-moodlesimple-min.css">
<link charset="utf-8" rel="stylesheet" id="yui_3_15_0_2_1476453284347_288" href="css/cssbutton-min.css">
<link charset="utf-8" rel="stylesheet" id="yui_3_15_0_2_1476453284347_388" href="https://lms.hcmute.edu.vn/theme/yui_combo.php?3.15.0/tabview/assets/skins/sam/tabview.css">
<link charset="utf-8" rel="stylesheet" id="yui_3_15_0_2_1476453284347_652" href="https://lms.hcmute.edu.vn/theme/yui_combo.php?3.15.0/datatable-base/assets/skins/sam/datatable-base.css&amp;3.15.0/datatable-message/assets/skins/sam/datatable-message.css&amp;3.15.0/datatable-sort/assets/skins/sam/datatable-sort.css&amp;3.15.0/resize-base/assets/skins/sam/resize-base.css">

<title>
    Edit
</title><meta content="Images/share_fb_img.jpg" name="og:image">
<link rel="icon" href="Images/favicon.ico">
<script async="" src="//connect.facebook.net/en_US/fbevents.js"></script>
<script type="text/javascript" async="" src="http://www.google-analytics.com/ga.js"></script>
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
        

    

<%@include file = "//includes/header.jsp" %>
<%@include file = "//includes/message.jsp" %>
<%
	CourseDAO courseDAO = new CourseDAO();
	String course_id ="";
	Course course = new Course();
	if(request.getParameter("course_id")!=null)
	{
		course_id = request.getParameter("course_id");
		course= courseDAO.getCourse(Long.parseLong(course_id));
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
    <form action="CourseServlet" method="post">
    <div role="main" id="yui_3_15_0_2_1476453284347_360">
        <h2 style="color:blue">Edit course settings</h2>
        <div class="bpt-item-right">
					<p style="color: red; font-style: italic; padding-left: 15px"
				id="errorxkh" name="errorxkh"></p>
			</div>
            <fieldset class="clearfix collapsible" id="id_general">
                <legend class="ftoggler fheader" id="yui_3_15_0_2_1476453284347_725">
                </legend>
                <div id="fitem_id_name" class="fitem required fitem_ftext instance-color" ><div class="fitemtitle" id="yui_3_15_0_2_1476453284347_972"><label for="id_name" id="yui_3_15_0_2_1476453284347_971">Course name* </label></div><div class="felement ftext" id="yui_3_15_0_2_1476453284347_977">
                <input size="50" name="course_name" type="text" id="course_name"></div>
                </div>

                <!-- mô tả -->
                <div>
 
                    <div id="fitem_id_timestart" class="fitem required fitem_fdate_time_selector instance-color"><div class="fitemtitle"><div class="fgrouplabel"><label>Course start date* </label></div></div><fieldset class="felement fdate_time_selector" id="yui_3_15_0_2_1476547644367_100">
                    <input type="date" name ="course_startdate" id = "course_startdate"></fieldset></div>

                    <div id="fitem_id_timestart" class="fitem required fitem_fdate_time_selector instance-color"><div class="fitemtitle"><div class="fgrouplabel"><label>Course finish date* </label></div></div><fieldset class="felement fdate_time_selector" id="yui_3_15_0_2_1476547644367_100">
                    <input type="date" name ="course_enddate" id = "course_enddate"></fieldset></div>


                    <div id="fitem_id_timestart" class="fitem required fitem_fdate_time_selector instance-color"><div class="fitemtitle"><div class="fgrouplabel"><label>Scheduling* </label></div></div>
                    <label class="accesshide" for="id_timestart_day">weekdays</label><select name="course_schedulingday" id="course_schedulingday">
                        <option value="1" selected="selected">Monday</option>
                        <option value="2">Tuesday</option>
                        <option value="3">Wednesday</option>
                        <option value="4">Thursday</option>
                        <option value="5">Friday</option>
                        <option value="6">Saturday</option>
                        <option value="7">Sunday</option>
                    </select>
                    <div id="fitem_id_timestart" class="fitem required fitem_fdate_time_selector instance-color"><div class="fitemtitle"><div class="fgrouplabel"><label>start lession* </label></div></div><fieldset class="felement fdate_time_selector" id="yui_3_15_0_2_1476547644367_100">
                    <label class="accesshide" for="id_timestart_hour">startlession</label><select name="course_startlession" id="course_startlession">
                        <option value="1">01</option>
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
                    </select>&nbsp;<a class="visibleifjs" name="timestart[calendar]" href="#"><img alt="Calendar" class="smallicon" title="Calendar" src="https://lms.hcmute.edu.vn/theme/image.php/essential/core/1476366384/i/calendar"></a></fieldset></div>

                    <div id="fitem_id_timestart" class="fitem required fitem_fdate_time_selector instance-color"><div class="fitemtitle"><div class="fgrouplabel"><label>end lession* </label></div></div><fieldset class="felement fdate_time_selector" id="yui_3_15_0_2_1476547644367_100"><label class="accesshide" for="id_timestart_day">weekdays</label><label class="accesshide" for="id_timestart_minute">endlession</label>
                    <select name="course_endlession" id="course_endlession">
                        <option value="1">01</option>
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
                    </select>&nbsp;&nbsp;<a class="visibleifjs" name="timestart[calendar]" href="#"><img alt="Calendar" class="smallicon" title="Calendar" src="https://lms.hcmute.edu.vn/theme/image.php/essential/core/1476366384/i/calendar"></a></fieldset></div>
					
					<div>
                        <div id="fitem_id_name" class="fitem required fitem_ftext instance-color"><div class="fitemtitle" id="yui_3_15_0_2_1476453284347_972"><label for="id_name" id="yui_3_15_0_2_1476453284347_971">Place</label></div>
                        </div>
                        <textarea class="txt-input" name="course_place" style="height:100px;width: 394px;" id="course_place" placeholder="Nội dung"></textarea>
                    </div>
					
					
                    <div>
                        <div id="fitem_id_name" class="fitem required fitem_ftext instance-color"><div class="fitemtitle" id="yui_3_15_0_2_1476453284347_972"><label for="id_name" id="yui_3_15_0_2_1476453284347_971">Description</label></div>
                        </div>
                        <textarea class="txt-input" name="course_description" style="height:300px;width: 394px;" id="course_description" placeholder="Nội dung"></textarea>
                    </div>

                    <div id="fitem_id_submitbutton" class="fitem fitem_actionbuttons fitem_fsubmit"><div class="felement fsubmit" id="yui_3_15_0_2_1476546667388_657">
                    <a id="btnsave"><input name="submitbutton" value="Save changes" type="submit" id="id_submitbutton"></a></div></div>
                	<input type="hidden" name="command" value="update">
                	<input type="hidden" name="course_id" value="<%=course_id%>">
                </div>
                <!-- end mô tả -->
                <script type="text/javascript">
                	$(document).ready(function(){
                		$('#course_name').val('<%=course.getCourse_name()%>');
                		$('#course_startdate').val('<%=course.getCourse_startdate()%>');
                		$('#course_enddate').val('<%=course.getCourse_enddate()%>');
                		$('#course_schedulingday').val('<%=course.getCourse_schedulingday()%>');
                		$('#course_startlession').val('<%=course.getCourse_startlession()%>');
                		$('#course_endlession').val('<%=course.getCourse_endlession()%>');
                		$('#course_place').val('<%=course.getCourse_place()%>');
                		$('#course_description').val('<%=course.getCourse_description()%>');
                	});
				</script>
                
                
                
                
                </div>
            </fieldset>
    </div>
    </form>
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