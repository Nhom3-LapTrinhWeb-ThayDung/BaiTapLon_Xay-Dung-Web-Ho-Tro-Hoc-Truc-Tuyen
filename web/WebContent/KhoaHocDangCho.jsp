
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="model.Users"%>
<%@page import="model.User_info"%>
<%@page import="model.Course"%>
<%@page import="dao.CourseDAO"%>
<%@page import="model.CourseWaiting"%>
<%@page import="dao.CourseWaitingDAO"%>

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
  Khóa học đang chờ | StudyFunny
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
        
  <style type="text/css">
        .p-login .infor-forget{top:55px;}
         .p-login .lnk-user .infor-forget{display:none;}
        .p-login .lnk-user:hover .infor-forget{display:block;}
        .p-login .lnk-user{padding-bottom:3px;}
  </style>



    


<%@include file="//includes/header.jsp" %>
<%@include file="//includes/overlaylogin.jsp" %>
<%@include file="//includes/overlaylogin.jsp" %>
<%
			CourseDAO courseDAO = new CourseDAO();
			CourseWaitingDAO coursewaitingDAO = new CourseWaitingDAO();
			User_info teacher = new User_info();
			User_info student = new User_info();
%>




        <!--end-header-->
        <div id="body">
            <!--Alert-->
            



<div class="Breadcrumb">
    <style>
        .Breadcrumb{margin-top:10px;background:#ffffff;padding:5px 10px;}
        .Breadcrumb .sne-lnk{color:#00918D;font-weight:normal;line-height:20px;background:}
    </style>
   
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
	                    	for (Course coursewaiting : coursewaitingDAO.getListCourseWaiting(user_info.getId()))
	                    	{
	                    		i++;
	                    %>
	                          <div class="row">
                                    <a class="lnk-logout under popup-login" rel="#overlay-web<%=coursewaiting.getCourse_id()%>">
                                        <p class="to-l-p-img">
                                            <span class="sp-text"> KHÓA HỌC </span><span class="sp-number">
                                                <%= i %>
                                            </span>
                                        </p>
                                    </a>
                                    <a class="lnk-logout under popup-login" rel="#overlay-web<%=coursewaiting.getCourse_id()%>">
	                                  <p class="to-l-p-name">
	                                      <span class="bold">
	                                         <%=coursewaiting.getCourse_name()%></span>
	                                  </p>
	                              </a>
                                    <div  class="lnk-logout under popup-login" rel="#overlay-web<%=coursewaiting.getCourse_id()%>">
                                    <a class="to-l-btn">
                                       <span class="to-l-btn">Xem chi tiết</span>
                                    </a>
                                    </div>
                                </div>		
	                          <%
	                  			}
	                          %>
	                    </div> 
                   
                    
                    <div class="bv-pagging">
                        <style>
                            .bv-pagging
                            {
                                float: left;
                                margin-top: 5px;
                                margin-bottom: 10px; ;padding-right:15px;text-align:right;width:612px;}
                            .bv-pagging a
                            {
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
                            .bv-pagging a:hover, .bv-pagging a.active
                            {
                                background-color: #00918D;
                                color: #FFFFFF;
                            }
                        </style>
                        <a href="CacKhoaHocDaDangKy.jsp">
                            &lt;</a>
                        
                        <a class="active" href="CacKhoaHocDaDangKy.jsp">
                            1</a>
                        
                        <a href="DanhSachKhoaHocpage2.jsp">
                            2</a>
                        
                        <a href="DanhSachKhoaHocpage2.jsp">
                            &gt;</a>
                        
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

<script>

    $(function() {
        function validateEmail(email) {
            var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
            return re.test(email);
        }
        $("#btnRegisterRevMail").click(function() {

            var txtEmail = $("#femail").val();
            if (validateEmail(txtEmail)) {
                $.post('http://viettelstudy.vn/Ajax/RegisterEmail.aspx',
                {
                    mEmail: txtEmail,
                    TokenEmail: "56395039238DDC12D740AF227324A0A98DB9E6F582C87231AD271760D658658793AD3430CE5CFA9ABF907B9FD1312F633EEDB93796AF3F76E07B4CE3D54BDDCF"
                },
                function(data, status) { 
                    if (data == '200') {
                        alert('Bạn đã Đăng ký nhận email thành công');
                        location.reload();
                    }
                    else if (data == '201') {
                        alert('Bạn đã Đăng ký nhận email trước đó');
                        location.reload();
                    }
                    else if (data == '403') {
                        alert('Hiện tại đang gặp vấn đề về dữ liệu! Hãy thử lại sau! Cảm ơn!');
                        location.reload();
                    }
                });
            } else {
                alert('Hãy nhập đúng địa chỉ email để nhận được tài liệu vô cùng bổ ích từ ViettelStudy');
            }
        });

        $("#femail").keypress(function(e) {
            if ((e.which && e.which == 13) || (e.keyCode && e.keyCode == 13)) {
                $("#btnRegisterRevMail").click();
                //                $('button[type=submit] .default').click();
                return false;
            } else {
                return true;
            }
        });
    });

</script>
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
    <div id="overlay-test" style="width: 392px; display: none;">
        <a class="close"></a>
        <div id="box_popup" class="box-popup">
        </div>
    </div>
<% 
    
  	for (Course coursewaiting : coursewaitingDAO.getListCourseWaiting(user_info.getId()))
  	{
  		 teacher = coursewaitingDAO.getteacher(coursewaiting.getCourse_id());
    %>
<div style="width: 392px; display: none" id="overlay-web<%=coursewaiting.getCourse_id()%>">
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
            Xem chi tiết khóa học - <%=coursewaiting.getCourse_name()%>
        </h3>
        <%
	        String year_start= coursewaiting.getCourse_startdate().toString().substring(0, 4);
	        String month_start= coursewaiting.getCourse_startdate().toString().substring(5, 7);
	        String day_start= coursewaiting.getCourse_startdate().toString().substring(8, 10);
	        
	        String year_end= coursewaiting.getCourse_enddate().toString().substring(0, 4);
	        String month_end= coursewaiting.getCourse_enddate().toString().substring(5, 7);
	        String day_end= coursewaiting.getCourse_enddate().toString().substring(8, 10);
        %>
        <div class="bp-content" style="font-size: 20px">
            <p style="padding-left: 50px;"> Khóa học:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=coursewaiting.getCourse_name()%> </p>
            <p style="padding-left: 50px;"> Giảng viên:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=teacher.getTen() %> </p>
            <p style="padding-left: 50px;"> Lịch học:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Thứ <%=coursewaiting.getCourse_schedulingday()%>, tiết <%=coursewaiting.getCourse_startlession()%> - <%=coursewaiting.getCourse_endlession()%>  </p>
            <p style="padding-left: 50px;"> Phòng học:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=coursewaiting.getCourse_place()%> </p>
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
                            
                            <input onclick="huydangkyclick()" type="button"  value="Đăng ký" id="btnHuyDangKy" class="bpt-lnk-save btn-login" name="btnHuyDangKy" >
                        </span>

                        <script type="text/javascript">
                            function btnDangNhap_OnClientClick() {
                                document.getElementById('login_btnDangNhap').style.visibility = 'hidden';
                                return true;
                            }
                        </script>

                    </div>
                    <div class="group-login-fb" style="display: none;">
                        
                        
                        <div id="status" style="display: none;">
                        </div>
                    </div>
                
</div>


            <div id="login_UpdateProgress1" style="display:none;">
  
                    <div class="bpc-row">
                        <span class="sp-left"></span><span class="sp-right">
                            <img src="http://viettelstudy.vn/images/ajax-loader.gif" alt="ViettelStudy">
                        </span>
                    </div>
                
</div>


            <div class="bpc-row">
                
            </div>
        </div>
    </div>
</div>
<%} %>
<div style="width: 392px; display: none" id="overlay-DeThiTOEIC">
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
            Xem chi tiết khóa học - Đề thi TOEIC
        </h3>
        <div class="bp-content">
            <p style="padding-left: 50px;"> Đề thi TOEIC </p>
            <p style="padding-left: 50px;"> Giảng viên: TS Trần Thị Vân Anh </p>
            <p style="padding-left: 50px;"> Lịch học: thứ 4, 7h00-11h30 </p>
           
            <p style="padding-left: 50px;"> Ngày bắt đầu: 31/08/2016 </p>
            <p style="padding-left: 50px;"> Ngày kết thúc: 07/12/2016 </p>
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
                            
                            <!--
                            <input type="submit" name="login$btnDangNhap" value="Đăng nhập" onclick="btnDangNhap_OnClientClick();" id="login_btnDangNhap" class="bpt-lnk-save btn-login">
                            <input type="hidden" name="TokenCSRF_Login" value="861C1C176546B26167F6E71624FC5090FF6A020C86DD08965B9A4D78ECF3BC62571BA5DDC0E3D858BED2D9CB8A6AB57C63717C9C78439D42777006E989CC4EBB">
                            -->

                            <input  type="submit" name="login$btnDangNhap" value="Đăng ký" id="login_btnDangKy" class="bpt-lnk-save btn-login">
                        </span>

                        <script type="text/javascript">
                            function btnDangNhap_OnClientClick() {
                                document.getElementById('login_btnDangNhap').style.visibility = 'hidden';
                                return true;
                            }
                        </script>

                    </div>
                    <div class="group-login-fb" style="display: none;">
                        
                        
                        <div id="status" style="display: none;">
                        </div>
                    </div>
                
</div>


            <div id="login_UpdateProgress1" style="display:none;">
  
                    <div class="bpc-row">
                        <span class="sp-left"></span><span class="sp-right">
                            <img src="http://viettelstudy.vn/images/ajax-loader.gif" alt="ViettelStudy">
                        </span>
                    </div>
                
</div>


            <div class="bpc-row">
                
            </div>
        </div>
    </div>
</div>

<div style="width: 392px; display: none" id="overlay-login">
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
            Đăng nhập
        </h3>
        <div class="bp-content">
            <p style="padding-left: 15px;">
                Bạn vui lòng đăng nhập để tiếp tục học tập trên ViettelStudy</p>
            <div id="login_pnLogin">
  
                    <div class="bpc-row">
                        <span class="sp-left">Số điện thoại</span> <span class="sp-right">
                            <input name="login$txtTaiKhoan" type="text" maxlength="15" id="login_txtTaiKhoan" class="bpc-txt" autocomplete="off" onkeypress="return clickButton(event,'login_btnDangNhap')" />
                            <input type="hidden" name="login$hfISMSDN" id="login_hfISMSDN" />
                            <input type="hidden" name="login$hfDem" id="login_hfDem" />
                        </span>
                    </div>
                    <div class="bpc-row">
                        <span class="sp-left">Mật khẩu</span> <span class="sp-right">
                            <input name="login$txtmatKhau" type="password" maxlength="30" id="login_txtmatKhau" class="bpc-txt" autocomplete="off" onkeypress="return clickButton(event,'login_btnDangNhap')" /></span>
                    </div>
                    
                    <div class="bpc-row">
                        <span class="sp-left"></span><span class="sp-right">
                            
                            <span class="sp-remember">
                                <input id="login_cbkRLogin" type="checkbox" name="login$cbkRLogin" /><label for="login_cbkRLogin">Duy trì đăng nhập</label></span>
                            <span class="sp-forget-pass" style="">
                            <p class="btn-forget under" style="margin: 0px; line-height: 28px">
                                Quên mật khẩu?</p> 
                            <span class="infor-forget">Khách hàng Viettel, soạn: <strong>VTS</strong>
                                    gửi <strong>5005</strong> (0đ)<br />
                                    
                                </span></span></span>
                        <style>
                            .regis-info, .sp-forget-pass
                            {
                                position: relative;
                                display: inline-block;
                                padding-bottom: 10px;
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
                                bottom: 28px;
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
                            <input type="submit" name="login$btnDangNhap" value="Đăng nhập" onclick="btnDangNhap_OnClientClick();" id="login_btnDangNhap" class="bpt-lnk-save btn-login" />
                            <input type="hidden" name="TokenCSRF_Login" value="658AA48C6D129BD94C912429CC59F1C126178B148F97195DC8A176EBBBD505F211CCB16FC6CD06EB2752A86C5F98C0986E5257D5177C519B8E7D2AB38A6B7254" />
                        </span>

                        <script type="text/javascript">
                            function btnDangNhap_OnClientClick() {
                                document.getElementById('login_btnDangNhap').style.visibility = 'hidden';
                                return true;
                            }
                        </script>

                    </div>
                    <div class="group-login-fb" style="display: none;">
                        <p class="login-fb-notice">
                            Hoặc đăng nhập bằng tài khoản
                        </p>
                        <p class="p-login-fb">
                            <a href="http://viettelstudy.vn/LoginExtension/FacebookConnect.aspx">
                                <img src="http://viettelstudy.vn/images/vts_new_06.png"></a> <a class="lnk-g"
                                    style="display: none" href="http://viettelstudy.vn/LoginExtension/GoogleConnect.aspx">
                                    <img src="http://viettelstudy.vn/images/vts_new_07.png"></a>
                        </p>
                        <div id="status" style="display: none;">
                        </div>
                    </div>
                
</div>
            <div id="login_UpdateProgress1" style="display:none;">
  
                    <div class="bpc-row">
                        <span class="sp-left"></span><span class="sp-right">
                            <img src="http://viettelstudy.vn/images/ajax-loader.gif" alt="ViettelStudy" />
                        </span>
                    </div>
                
</div>
            <div class="bpc-row">
                <span class="sp-right" style="width: 335px;"><span class="pbc-p" style="padding: 0px 0px 10px 15px;
                    font-size: 14px;">Bạn chưa có tài khoản? Mời đăng ký <span class="regis-info">
                    <span class="lnk-regis under">TẠI ĐÂY</span> 
                    <span class="infor-forget" style="font-weight:normal;">Khách hàng Viettel, soạn: <strong>VTS</strong>
                            gửi <strong>5005</strong> (0đ)<br />
                            
                        </span></span></span></span>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">

    function refreshCaptcha(capchaid, capchlength) {

        $('.capcha').attr('src', './uControls/Capcha/capchaImage.aspx' + '?id=' + capchaid + '&len=' + capchlength + '&r=' + Math.random());
    }
    
    
    function clickButton(e, buttonid) {
        var evt = e ? e : window.event;
        var bt = document.getElementById(buttonid);

        if (bt) {
            if (evt.keyCode == 13) {
                bt.click();
                return false;
            }
        }
    }  
</script>


<script type="text/javascript">

    function setCookie(name, value, expires, path, domain, secure) {
        var curCookie = name + "=" + encodeURI(value) +
              ((expires) ? "; expires=" + expires.toGMTString() : "") +
              ((path) ? "; path=" + path : "") +
              ((domain) ? "; domain=" + domain : "") +
              ((secure) ? "; secure" : "");
        document.cookie = curCookie;
    }



    function ckv_user(vl) {
        var cookieName = 'v_user';
        var today = new Date();
        var tomorrow = new Date();
        tomorrow.setDate(today.getHours + 3);
        setCookie(cookieName, vl, tomorrow, '/', '', '');
    }

    function ck_cou(vl) {
        var cookieName = 'cou';
        var today = new Date();
        var tomorrow = new Date();
        tomorrow.setDate(today.getHours + 3);
        setCookie(cookieName, vl, tomorrow, '/', '', '');
    }
</script>


    <div style="width: 392px;" id="overlay-thixacnhan">
    </div>
    

<script type="text/javascript">
//<![CDATA[
Sys.Application.initialize();
Sys.Application.add_init(function() {
    $create(Sys.UI._UpdateProgress, {"associatedUpdatePanelId":"Header_Widget_GopY_pnGopY","displayAfter":500,"dynamicLayout":true}, null, null, $get("Header_Widget_GopY_UpdateProgress1"));
});
Sys.Application.add_init(function() {
    $create(Sys.UI._UpdateProgress, {"associatedUpdatePanelId":"login_pnLogin","displayAfter":500,"dynamicLayout":true}, null, null, $get("login_UpdateProgress1"));
});
//]]>
</script>
</form>
</body>
</html>

<script>

    function thixacnhan(ten, tg) {
        var a1 = document.getElementById('overlay-thixacnhan')
        if (a1.innerHTML == '') {
            $.ajax({
                type: "get",
                url: './Ajax/BaiThi_XacNhan.aspx?ten=' + ten + '&tg=' + tg,
                success: function(msg) {

                    msg = $.trim(msg);
                    var a = document.getElementById('overlay-thixacnhan')

                    $('#overlay-thixacnhan').html(msg);

                    return false;
                }
            });
        }

    }
</script>

