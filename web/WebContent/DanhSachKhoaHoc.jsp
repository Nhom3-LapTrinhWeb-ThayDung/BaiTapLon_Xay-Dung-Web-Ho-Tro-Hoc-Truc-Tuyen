
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="model.Users"%>
<%@page import="model.User_info"%>
<%@page import="model.Course"%>
<%@page import="dao.CourseDAO"%>
<%@page import="model.CourseWaiting"%>
<%@page import="dao.CourseWaitingDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" href="css/oneOfCourse.css" type="text/css"></link>
  <link rel="stylesheet" href="css/coder_update.css" type="text/css"></link>
  <link rel="stylesheet" href="css/testOnline.css" type="text/css"></link>
  <link rel="stylesheet" href="css/home.css" type="text/css"></link>
  <link rel="stylesheet" href="css/common.css" type="text/css"></link>
  <link rel="stylesheet" href="css/reset.css" type="text/css"></link>
<title>
  Đăng ký khóa học | StudyFunny
</title>


<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.bxSlider.min.js"></script>
<script type="text/javascript" src="js/organictabs.jquery.js"></script>
<script type="text/javascript" src="js/jquery.tinyscrollbar.min.js"></script>
<script type="text/javascript" src="js/overlay2.js"></script>
<script type="text/javascript" src="js/home.js"></script>
</head>
<body>
    
   
    <div id="overlay-header">
        <div id="overlay-left">
        </div>
        <div id="overlay-right">
        </div>
    </div>
    <div id="wrapper">
        

    
    

<%@include file="//includes/header.jsp" %>
<%@include file="//includes/message.jsp" %>
<%@include file="//includes/overlaylogin.jsp" %>
<%
			CourseDAO courseDAO = new CourseDAO();
			User_info teacher = new User_info();
%>



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
            

<div class="study-notice">

    <span class="sne-sp">Thông báo: </span>
    
        
        
        <a id="alert_likAlert" class="sne-lnk" href="http://tintuc.viettelstudy.vn/tin-tuc/giao-duc/Diem-chuan-dai-hoc-2016-136-truong-da-cong-bo-i4556c3.html">Bạn có 1 bài tập cần phải hoàn thành. Click vào đây !</a>
    
    
    
    
    
    
</div>

            <!--end-banner-news-->
            <div id="phmain">
  
            
<div id="wrapper">
    <!--end-header-->
    <div id="body">
        <div class="box-test-online martop_0">
            
            <div class="to-content">
                <div class="to-c-left">
                <div class="to-c-l-list">
	                    <%	int i=0;
	                    	for (Course course : courseDAO.getAllListCourse())
	                    	{
	                    		i++;
	                    %>
	                          <div class="row">
                                    <a class="lnk-logout under popup-login" rel="#overlay-web<%=course.getCourse_id()%>">
                                        <p class="to-l-p-img">
                                            <span class="sp-text"> KHÓA HỌC </span><span class="sp-number">
                                                <%= i %>
                                            </span>
                                        </p>
                                    </a>
                                    <a class="lnk-logout under popup-login" rel="#overlay-web<%=course.getCourse_id()%>">
	                                  <p class="to-l-p-name">
	                                      <span class="bold">
	                                         <%=course.getCourse_name()%></span>
	                                  </p>
	                              </a>
                                    <div  class="lnk-logout under popup-login" rel="#overlay-web<%=course.getCourse_id()%>">
                                    <a class="to-l-btn">
                                       <span class="to-l-btn">Xem chi tiết</span>
                                    </a>
                                    </div>
                                </div>		
	                          <%
	                  			}
	                          %>
	                    </div> 
                   
                    
                    
                    
                </div>
                
    <div class="to-c-right">


<iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2FStudyFunny&tabs=timeline&width=350&height=300&small_header=true&adapt_container_width=true&hide_cover=false&show_facepile=true&appId" width="350" height="300" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true"></iframe>


</div>

            </div>
        </div>
        <!--end-box-test-online-->
    </div>
    <!--end-body-->
</div>
<!--end-wrapper-->







</div>
            
        </div>





        <!--end-body-->
         
<a id="to_top" href="#" style="display: none; bottom: 20px; position: fixed; right: 20px;
    z-index: 9999;" rel="nofollow">
    <img alt="Go to top!" src="http://viettelstudy.vn/images/gototop.png"/></a>
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
  <span style="float: right; line-height: 39px;"><input type="email" name="femail" id="femail" style=" background: #d4e7e3 none repeat scroll 0 0;
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
            <div id="overlay-footer-left">
            </div>
            <div id="overlay-footer-right">
            </div>
        </div>
        <!--end-overlay-footer-->
    </div>
    <!--end-wrapper-->
    
	<% 
  	for (Course course : courseDAO.getAllListCourse())
  	{
  		 teacher = courseDAO.getteacher(course.getCourse_id());
    %>
<div style="width: 392px; display: none" id="overlay-web<%=course.getCourse_id()%>">
    <style type="text/css">
        .sp-remember
        {
            float: left;
            width: 125px;
            margin-top: 5px;
            margin-bottom: 5px;
        }
        .sp-remember input
        {
            margin-right: 5px;
        }
        .LBD_CaptchaDiv{display:inline;}
    </style>
    
    <div class="box-popup">
        <a class="popup-close">X </a>
        <h3 class="bp-title">
            Xem chi tiết khóa học - <%=course.getCourse_name()%>
        </h3>
        <%
	        String year_start= course.getCourse_startdate().toString().substring(0, 4);
	        String month_start= course.getCourse_startdate().toString().substring(5, 7);
	        String day_start= course.getCourse_startdate().toString().substring(8, 10);
	        
	        String year_end= course.getCourse_enddate().toString().substring(0, 4);
	        String month_end= course.getCourse_enddate().toString().substring(5, 7);
	        String day_end= course.getCourse_enddate().toString().substring(8, 10);
        %>
        <div class="bp-content" style="font-size: 20px">
            <p style="padding-left: 50px;"> Khóa học:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=course.getCourse_name()%> </p>
            <p style="padding-left: 50px;"> Giảng viên:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=teacher.getTen() %> </p>
            <p style="padding-left: 50px;"> Lịch học:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Thứ <%=course.getCourse_schedulingday()%>, tiết <%=course.getCourse_startlession()%> - <%=course.getCourse_endlession()%>  </p>
            <p style="padding-left: 50px;"> Phòng học:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=course.getCourse_place()%> </p>
            <p style="padding-left: 50px;"> Ngày bắt đầu:&nbsp;&nbsp;<%=day_start %> - <%=month_start %> - <%=year_start %> </p>
            <p style="padding-left: 50px;"> Ngày kết thúc: <%=day_end %> - <%=month_end %> - <%=year_end %> </p>
                       <div id="login_pnLogin">
  
                 
                    
                    <div class="bpc-row">
                        <span class="sp-left"></span><span class="sp-right">
                                                        
                            </span></span>
                        <style>
                            .regis-info, .sp-forget-pass
                            {
                                position: relative;
                                display: inline-block;
                                padding-bottom: 5px;
                            }
                            .infor-forget
                            {
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
                            .regis-info .infor-forget
                            {
                                bottom: 10px;
                                right: -33px;
                                top: auto;
                            }
                            .regis-info
                            {
                                padding-top: 5px;
                            }
                            .sp-forget-pass:hover .infor-forget
                            {
                                display: block;
                            }
                            .regis-info:hover .infor-forget
                            {
                                display: block;
                            }
                        </style>
                    </div>
                    <div class="bpc-row" style="margin-top: 0px;">
                        <span class="sp-error">
                            <span id="login_lblErr"></span>
                        </span>
                    </div>
                    <div class="bpc-row" style="margin-top: 0px;">
                        <span class="sp-left"></span><span class="sp-right">
                            
                            <input type="button" onclick="btndangkyclick()"  value="Đăng ký" id="btndangky" name="btndangky" class="bpt-lnk-save btn-login">
                        </span>

						<script type="text/javascript">
                            function btndangkyclick() {
                            	alert('Chưa nhập nội dung');
                            }
                        </script>
						
                        

                    </div>
                    
                
</div>


            


            <div class="bpc-row">
                
            </div>
        </div>
    </div>
</div>
<%} %>






    

</body>
</html>

