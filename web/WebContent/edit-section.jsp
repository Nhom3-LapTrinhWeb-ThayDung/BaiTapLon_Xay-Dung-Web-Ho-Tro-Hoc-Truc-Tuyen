<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page import="dao.CourseDAO"%>
<%@page import="model.Course"%>
<%@page import="dao.SectionDAO"%>
<%@page import="model.Section"%>
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
<%		if(session.getAttribute("user")==null || session.getAttribute("user_info")==null || ((User_info)session.getAttribute("user_info")).getQuyen()!=1 || request.getParameter("section_id")==null)
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



    


			<%@include file="//includes/header.jsp" %>
			<%@include file="//includes/message.jsp" %>
			<%
				CourseDAO courseDAO = new CourseDAO();
				SectionDAO sectionDAO = new SectionDAO();
				String course_id = "";
				String section_id="";
				Course course = new Course();
				Section section=new Section();
				if(request.getParameter("course_id")!=null)
				{
					course_id = request.getParameter("course_id");
					course = courseDAO.getCourse(Long.parseLong(course_id));
					
				}
				if(request.getParameter("section_id")!=null)
				{
					section_id = request.getParameter("section_id");
					section = sectionDAO.getSection(Long.parseLong(section_id));
				}
			%>


        <!--end-header-->
        <div id="body">
        <!--Alert-->
     
            

<div class="Breadcrumb">
    <style>
        .Breadcrumb{margin-top:10px;background:#ffffff;padding:5px 10px;}
        .Breadcrumb .sne-lnk{color:#00918D;font-weight:normal;line-height:20px;background:}
    </style>
    <%if(user_info.getQuyen()==1){ %><a href="canhangiangvien.jsp" id="alert_Breadcrumb__hplBreadcrumd" class="sne-lnk">Cá Nhân</a>
					<%}else{ %><a href="hocvien.jsp" id="alert_Breadcrumb__hplBreadcrumd" class="sne-lnk">Cá Nhân</a><%} %>
					&gt;<a href="khoahoc2.jsp?course_id=<%=course_id%>" class="sne-lnk">Khóa Học: <%=course.getCourse_name() %></a>&gt;<a class="sne-lnk"><%=section.getSection_name() %></a>
</div>




<!-- edit section -->
<div class="persion-right2" style="display: block;" id="1" >
<section id="region-main" class="" style="border: 1px solid #e3e3e3; padding: 2px 10px">
    <div role="main" id="yui_3_15_0_2_1476453284347_360">
        <h2 style="color:blue"><%=section.getSection_name() %></h2>
        <form action="SectionServlet" method="post">
        <div class="felement fsubmit" id="yui_3_15_0_2_1476546667388_657">
                    <a id="btnsave" onclick="if ( ! FinishConfirmation()) return false;"><input name="submitbutton" value="Delete section" type="submit" id="id_submitbutton"></a></div>
           			<input type="hidden" name="course_id" value="<%=course_id%>">
                	<input type="hidden" name="section_id" value="<%=section_id%>">
                	<input type="hidden" name="command" value="delete">
            </form>
            <form action="SectionServlet" method="post">
            <fieldset class="clearfix collapsible" id="id_general">
                <div >
										<p style="color: red; font-style: italic; padding-left: 15px"
											id="errorsection" name="errorsection"></p>
									</div>
                <legend class="ftoggler fheader" id="yui_3_15_0_2_1476453284347_725">
                </legend>
                <div id="fitem_id_name" class="fitem required fitem_ftext instance-color" ><div class="fitemtitle" id="yui_3_15_0_2_1476453284347_972"><label for="id_name" id="yui_3_15_0_2_1476453284347_971">Section name* </label></div><div class="felement ftext" id="yui_3_15_0_2_1476453284347_977">
                <input size="50" name="section_name" type="text" id="section_name" value="<%=section.getSection_name() %>"></div>
                </div>
                <!-- place -->
                <div>
                    <div>
                        <div id="fitem_id_name" class="fitem required fitem_ftext instance-color"><div class="fitemtitle" id="yui_3_15_0_2_1476453284347_972"><label for="id_name" id="yui_3_15_0_2_1476453284347_971">Content</label></div>
                        </div>
                        <textarea class="txt-input" name="section_content" style="height:300px;width: 394px;" id="section_content" placeholder="Nội dung"><%=section.getSection_content() %></textarea>
                    </div>
                		<div class="felement fsubmit" id="yui_3_15_0_2_1476546667388_657">
                    <a id="btnsave"><input name="submitbutton" value="Save changes" type="submit" id="id_submitbutton"></a></div>
                	<input type="hidden" name="course_id" value="<%=course_id%>">
                	<input type="hidden" name="section_id" value="<%=section_id%>">
                	<input type="hidden" name="command" value="update">
                </div>
                <!-- end mô tả -->
				<script type="text/javascript">
				
					function FinishConfirmation() {
						if (confirm("Xóa section <%=section.getSection_name()%>. Đồng ý?") == true) {
							return true;
						} else {
							return false;
						}
					}
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
			rel="nofollow"> <img alt="Go to top!" src="Images/gototop.png"></a>
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