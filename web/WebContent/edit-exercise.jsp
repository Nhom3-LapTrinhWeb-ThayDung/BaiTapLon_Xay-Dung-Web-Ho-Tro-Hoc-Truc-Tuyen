<%@page import="dao.Exercise_UserDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Section"%>
<%@page import="dao.SectionDAO"%>
<%@page import="dao.ExerciseDAO"%>
<%@page import="model.Exercise"%>
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
<script async="" src="//connect.facebook.net/en_US/fbevents.js"></script>
<script type="text/javascript" async="" src="http://www.google-analytics.com/ga.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.bxSlider.min.js"></script>
<script type="text/javascript" src="js/overlay2.js"></script>
<script type="text/javascript" src="js/home.js"></script>
</head>
<body>
<%		if(session.getAttribute("user")==null || session.getAttribute("user_info")==null || ((User_info)session.getAttribute("user_info")).getQuyen()!=1 || request.getParameter("exercise_id")==null)
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
        


    
    

		<%@include file="//includes/header.jsp"  %>
		<%@include file="//includes/message.jsp"  %>
		<%
			SectionDAO sectionDAO = new SectionDAO();
			ExerciseDAO exerciseDAO = new ExerciseDAO();
			Exercise exercise = new Exercise();
			CourseDAO courseDAO = new CourseDAO();
			String course_id = "";
			Course course = new Course();
			String section_id="";
			Section section = new Section();
			if(request.getParameter("course_id")!=null&& request.getParameter("section_id")!=null && request.getParameter("exercise_id")!=null )
			{
				course_id = request.getParameter("course_id");
				course = courseDAO.getCourse(Long.parseLong(course_id));
				section_id = request.getParameter("section_id");
				section  = sectionDAO.getSection(Long.parseLong(section_id));
				exercise = exerciseDAO.getExercise(Long.parseLong(request.getParameter("exercise_id")));
			}

			//Section tempsection = new Section();
		%>



        <!--end-header-->
        <div id="body">
        <!--Alert-->
        




 




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
                <div id="fitem_id_name" class="fitem required fitem_ftext instance-color" ><div class="fitemtitle" id="yui_3_15_0_2_1476453284347_972"><label for="id_name" id="yui_3_15_0_2_1476453284347_971">Assignment name* </label></div><div class="felement ftext" id="yui_3_15_0_2_1476453284347_977">
                <input size="50" name="exercise_name" type="text" id="exercise_name" value="<%=exercise.getExercise_name()%>"></div>

                </div>





                <!-- mô tả -->
                <div>
                    <!-- <div class="fitemtitle" id="yui_3_15_0_2_1476453284347_966"><label for="id_description" id="yui_3_15_0_2_1476453284347_412">Description </label></div>
                        <div class="atto_group collapse_group" id="yui_3_15_0_2_1476453284347_630"><button type="button" class="atto_collapse_button highlight" tabindex="0" title="Show fewer buttons" id="yui_3_15_0_2_1476453284347_456"><img class="icon" aria-hidden="true" role="presentation" width="16" height="16" src="https://lms.hcmute.edu.vn/theme/image.php/essential/atto_collapse/1476366384/icon" id="yui_3_15_0_2_1476453284347_2022"></button></div>

                        <div class="atto_group style1_group" id="yui_3_15_0_2_1476453284347_1093"><button class="atto_title_button atto_hasmenu" tabindex="-1" type="button" title="Paragraph styles"><img class="icon" aria-hidden="true" role="presentation" width="16" height="16" style="background-color:transparent;" src="https://lms.hcmute.edu.vn/theme/image.php/essential/core/1476366384/e/styleprops"><img class="icon" aria-hidden="true" role="presentation" width="16" height="16" src="https://lms.hcmute.edu.vn/theme/image.php/essential/core/1476366384/t/expanded"></button><button type="button" class="atto_bold_button_bold" tabindex="-1" title="Bold [Ctrl + b]" id="yui_3_15_0_2_1476453284347_1092"><img class="icon" aria-hidden="true" role="presentation" width="16" height="16" src="https://lms.hcmute.edu.vn/theme/image.php/essential/core/1476366384/e/bold" id="yui_3_15_0_2_1476453284347_1094"></button><button type="button" class="atto_italic_button_italic" tabindex="-1" title="Italic [Ctrl + i]"><img class="icon" aria-hidden="true" role="presentation" width="16" height="16" src="https://lms.hcmute.edu.vn/theme/image.php/essential/core/1476366384/e/italic"></button></div>
                    
                        <div class="editor_atto_toolbar" role="toolbar" aria-live="off" aria-labelledby="yui_3_15_0_2_1476453284347_412" id="yui_3_15_0_2_1476453284347_454" aria-activedescendant="yui_3_15_0_2_1476453284347_456"></div> -->
                        

                    <div>
                        <div id="fitem_id_name" class="fitem required fitem_ftext instance-color"><div class="fitemtitle" id="yui_3_15_0_2_1476453284347_972"><label for="id_name" id="yui_3_15_0_2_1476453284347_971">Description</label></div>
                        </div>
                        <textarea  class="txt-input" name="exercise_content" style="height:300px;width: 394px;" id="exercise_content" placeholder="Nội dung"><%=exercise.getExersice_content() %></textarea>
                    </div>

                    <div id="fitem_id_timestart" class="fitem required fitem_fdate_time_selector instance-color"><div class="fitemtitle"><div class="fgrouplabel">
                    <label>Allow submissions from* </label></div></div>
                    <fieldset class="felement fdate_time_selector" id="yui_3_15_0_2_1476547644367_100">
                    <a class="visibleifjs" name="timestart[calendar]" href="#"><img alt="Calendar" class="smallicon" title="Calendar" src="https://lms.hcmute.edu.vn/theme/image.php/essential/core/1476366384/i/calendar"></a></fieldset>
                    <input value="<%=exercise.getExercise_startdate() %>" type="date" name ="exercise_startdate" id = "exercise_startdate">
                    <input value="<%=exercise.getExercise_starttime() %>" type="time" name ="exercise_starttime" id ="exercise_starttime">
                    </div>

                    <div id="fitem_id_timestart" class="fitem required fitem_fdate_time_selector instance-color"><div class="fitemtitle"><div class="fgrouplabel"><label>Due date* </label></div></div><fieldset class="felement fdate_time_selector" id="yui_3_15_0_2_1476547644367_100"><a class="visibleifjs" name="timestart[calendar]" href="#"><img alt="Calendar" class="smallicon" title="Calendar" src="https://lms.hcmute.edu.vn/theme/image.php/essential/core/1476366384/i/calendar"></a></fieldset>
                    <input value="<%=exercise.getExercise_enddate() %>" type="date" name ="exercise_enddate" id = "exercise_enddate">
                    <input value="<%=exercise.getExercise_endtime() %>" type="time" name ="exercise_endtime" id ="exercise_endtime">
                    </div>


                    <div id="fitem_id_submitbutton" class="fitem fitem_actionbuttons fitem_fsubmit"><div class="felement fsubmit" id="yui_3_15_0_2_1476546667388_657">
                    <a id="btnsave"><input name="submitbutton" value="Save changes" type="button" id="id_submitbutton"></a></div></div>
                	<input type="hidden" name="exercise_id" value="<%=exercise.getExercise_id()%>">
                	<input type="hidden" name="section_id" value="<%=exercise.getSection_id()%>">
                </div>
                <!-- end mô tả -->
				<script type="text/javascript">
					$('#btnsave').click(function() {
						/* alert($('#exercise_name').val()+$('#exercise_startdate').val()+
								$('#exercise_starttime').val()+$('#exercise_enddate').val()+$('#exercise_endtime').val()
								+ $('#exercise_content').val()) */
								var section_id = "<%=section_id%>";
								$.post('ExerciseServlet', {'command':"update",'exercise_name':$('#exercise_name').val(),'exercise_startdate':$('#exercise_startdate').val(),
							'exercise_starttime':$('#exercise_starttime').val(),'exercise_enddate':$('#exercise_enddate').val(),'exercise_endtime':$('#exercise_endtime').val(),
							'section_id':section_id,'exercise_content':$('#exercise_content').val(),'exercise_id':<%=exercise.getExercise_id()%>,'section_id':<%=exercise.getSection_id()%>}, function (data) {
								//$('#errorexercise').html(data);
								if(data=="cập nhật bài tập thành công!")
								{
									window.location.href = "Chi-Tiet-Bai-Tap.jsp?course_id="+<%=course_id%>+"&section_id="+<%=exercise.getSection_id() %>+"&exercise_id="+<%=exercise.getExercise_id()%>;
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