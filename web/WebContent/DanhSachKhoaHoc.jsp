
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="model.Users"%>
<%@page import="model.User_info"%>
<%@page import="model.Course"%>
<%@page import="dao.CourseDAO"%>

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
    <!-- <form name="form1" method="post" action="/ky-nang-mem/thi-thu-vao-lop-10-mon-toan-hoc-all.html" id="form1">-->
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__LASTFOCUS" id="__LASTFOCUS" value="" />

<!--
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="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" />
</div>
-->

<script type="text/javascript">
//<![CDATA[
var theForm = document.forms['form1'];
if (!theForm) {
    theForm = document.form1;
}
function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.__EVENTTARGET.value = eventTarget;
        theForm.__EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}
//]]>
</script>


<script src="/WebResource.axd?d=L1xj5Ylo1Zl1fvy-xvPpnGuNs3kIFO2KKp2xaFvogG-fMqmhH718MD6c-VZXW0ck9S1rBNVhOqjvCwj-v2L9yIfTKSg1&amp;t=634244902260000000" type="text/javascript"></script>


<script src="/ScriptResource.axd?d=5dqp5x42Fbor1p4SQKp1g8f4dMRVVerUgaYAhzZh_vK9-tYYhjG7By875uyuaBK7Rv7Z3mqeGx0_kEuqlsSeC1hFNGV9g55gaBykAjTxjHnvBQXErWY8yZUBwvgN9WxLh35rWm14XXUOX13RvY7Su6LXULM1&amp;t=fffffffff9d85fa6" type="text/javascript"></script>
<script src="/ScriptResource.axd?d=F7bvtnsMU-_pTaQdhlAOC0EMwhndSZAeIktgc938tio1MGg410TEN6SRrMONvNWiRapagwMC0LPO5T5qtFkWYwRoNaTU3irfJbIV6uLw900GcBMTKZ0pX_cueZD6TaJzTsBdTmw15iFyB4HqqkQmclULKXNnQcLDl-8cte2IzE3ZR_1r0&amp;t=fffffffff9d85fa6" type="text/javascript"></script>
<div>

  <input type="hidden" name="__VIEWSTATEENCRYPTED" id="__VIEWSTATEENCRYPTED" value="" />
  <!--
  <input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="V3Zm0+7q7/3nL2eTEHZdlPu4W+XYKmikvvLEhEoCHnkmotO0j5tU6adbrzFJx1CN6zDzKiGSe7n3tn79dHDHvaZzfcUPb3LRIQwD9YKqNcnRUzjATigWtgVphZuXjCAgMfc4L6bgdQCgrwAPlZGTzMTON6HrF1X9CkZyxY/GPi1D3U+EsVde2MQNWO289pa4MwNoT+S6KNgFUxAzCMwG3rY0+SMS2aTzPBS585QMzAM/NNeR6V43QyWLhmllx14K+gwS3os5oBTcgXORkAQhAu3lDAQd/bblczHPkmLInGCnEIy/oOvOeUVQZ3iCOcZ41Qlf8xNbLk9rDZWpEb7K4G6IhN58N4tuQbqTj1t5JNv2QU6Ome96yUxo4M2RMJX0q4d8d1DVLXSGbtIeBxHbhEvnH9gfB9RvkxfZPJ+J4vOcOJii5MH+KDEhvbNk2fNaS04h2YU1rubU919+Y81Y8y93G2HDYkSfbH5bnh8vr3Wkwg8uX2VHWnITrYGP8vYY0Q7pKjcr/TTW+6sfpsHBH5S96Uk3iCiQ4519ODJh4nGKPMRsPdg2x+nYkXyJQwjsVf3hCv8Tp1DCt6rliEAr+OJmdADYrL2HA6l4Ham9YdWPysJmrMZyJB4K8be8O7JOG/qiz8O8gXrJcYdki6mBJtT1hgtRTnrsyz3yt/LgOlPoj0NFJ40sd6gbKkl0XIkSYeJDo93KQloQ5sTd5cO74p3UzjeH8UmX/Hig1vpSS6F+vE1wZPoUPIrT1yGzzclEu5tL6P+MGRV6/I3lOJq2Ry+ErJ4uljY04/KVSkO+W/uYRt9F" /> -->
</div>
    <script type="text/javascript">
//<![CDATA[
Sys.WebForms.PageRequestManager._initialize('ScriptManager1', document.getElementById('form1'));
Sys.WebForms.PageRequestManager.getInstance()._updateControls(['tHeader$Widget$GopY$pnGopY','tlogin$pnLogin'], [], [], 90);
//]]>
</script>

   
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



    <script type="text/javascript">
        $(document).ready(function() {
        $('.show-popup').click(function() {
                if (!$(this).hasClass('active')) {
                    $('.vt-gadget').hide();
                    $('.vts-gadget-lnk').removeClass('active');
                }
                $(this).parent().find('.vt-gadget').slideToggle();
                $(this).toggleClass('active');
            });
            $('.vt-gadget-close').click(function() {
                $('.vt-gadget').hide();
                $('.vts-gadget-lnk').removeClass('active');
            })
            $('.vt-gadget-close').click();
        })
    </script>
    
<div class="vts-gadget" >
   
   
     
     <div class="vts-gadget-item vts-gadget-comment">
       
       


<div class="vt-gadget gadget-comment">
      <span class="vt-gadget-more">
          
        </span>
      <h3 class="vt-gadget-title">
            <span class="vt-gadget-sp">
                  GÓP Ý 
                </span>
                <a class="vt-gadget-close">
                  X
                </a>
        </h3>
        <div class="wrap-vt-gadget">
            <div id="Header_Widget_GopY_pnGopY">
  
            <div class="vt-gadget-div-form">
              <span class="vt-gadget-label">
                  Nội dung
                </span>
                <p class="vt-gadget-p">
                    <textarea name="Header$Widget$GopY$txtNoiDung" rows="2" cols="20" id="Header_Widget_GopY_txtNoiDung" class="vt-gadget-txtarea"></textarea>
                </p>
            </div>
            <div class="vt-gadget-div-form gadget-captcha">
              <span class="vt-gadget-label">
                  Mã bảo mật
                </span>
                <div class="vt-gadget-p">
                  <input name="Header$Widget$GopY$txtCapcha" type="text" maxlength="10" id="Header_Widget_GopY_txtCapcha" autocomplete="off" class="vt-gadget-txt" />
                        <a class="captcha-img" onclick="refreshCaptcha('GopY','5')" style="float:left;width:100px;">
                            

<div style="float:left;padding-left:8px;padding-right:20px"  >
    <img class="capcha"  src="http://viettelstudy.vn/uControls/Capcha/capchaImage.aspx?len=5&id=GopY" title="Lấy mã khác" alt="ViettelStudy" /> 
     
</div>

                        </a>
                  <input type="submit" name="Header$Widget$GopY$btnGui" value="Gửi" onclick="validgopy('Header_Widget_GopY_txtNoiDung');" id="Header_Widget_GopY_btnGui" class="vt-gadget-btn-send" />
                  <input type="hidden" name="TokenCSRF_GopYBaiHoc" value="6A1DCF1CC4F45186E623101E1194A4F2B82EEAA3F0DF9AC883BCE310AB2D0F522789D27B6CEFEDE9DC96BEFD0B3D2BFF6AE39E401DC52904F58DFD7A10CDCD13" />
                </div>
            </div>
            <span id="Header_Widget_GopY_lblErr" style="color:Red;"></span>
            <span id="Header_Widget_GopY_lblSucc"></span>
            
</div>  
            <div id="Header_Widget_GopY_UpdateProgress1" style="display:none;">
  
                <div class="bpc-row">
                    <span class="sp-left"></span>
                    <span class="sp-right">
                        <img src="http://viettelstudy.vn/images/ajax-loader.gif" alt="ViettelStudy" />
                    </span>
                </div>
            
</div>
            
            
        </div>
    </div>
    
    
    
<script type="text/javascript">
    function refreshCaptcha(capchaid, capchlength) {
        $('#capcha').attr('src', './uControls/Capcha/capchaImage.aspx' + '?id=' + capchaid + '&len=' + capchlength + '&r=' + Math.random());
    }
    
    function exitpopup() {
        setTimeout(function() {
        window.location.href = '/ky-nang-mem/thi-thu-vao-lop-10-mon-toan-hoc-all.html'; //will redirect to your blog page (an ex: blog.html)
        }
        , 2000);
        
        
    }
        function clickButton(e, buttonid)
        {  
          var evt = e ? e : window.event;  
          var bt = document.getElementById(buttonid);  
 
          if (bt){
              if (evt.keyCode == 13){  
                    bt.click();  
                    return false;  
              }  
          }  
        }  
    </script>



       
            <a class="vts-gadget-lnk show-popup" title="Góp ý">
          
            </a>
            
         
    </div>
     <div class="vts-gadget-item vts-gadget-contact">
      <div class="vt-gadget vt-hotline">
      <span class="vt-gadget-more">
          
        </span>
      <h3 class="vt-gadget-title">
            <span class="vt-gadget-sp">
                  LIÊN HỆ 
                </span>
                <a class="vt-gadget-close">
                  X
                </a>
        </h3>
        <div class="wrap-vt-gadget">
            <h2 class="vt-gadget-h1-hotline">Hotline 0962126964 <br>
<span style="font-size:15px">(miễn phí)</span></h2>
            <p>Email: <a href="mailto:ViettelStudy@viettel.com.vn" style="color:#14928E">StudyFunny@gmail.com</a></p>
                <p class="vt-gadget-p-content">
                  Hỗ trợ giải đáp tất cả thắc mắc về các khóa học cách học và cách thức học tập trên StudyFunny
                </p>
                <a rel="nofollow" class="vt-gadget-lnk-fb" href="https://www.facebook.com/StudyFunny">Study Funny</a>
        </div>
    </div>
       <a class="vts-gadget-lnk show-popup"  title="Liên hệ">
          
         </a> 
    </div>
</div>


<%@include file="//includes/header.jsp" %>
<%
			User_info teacher = new User_info();
%>



<script type="text/javascript">

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
    function open_keeng() {
        window.open("http://keeng.vn")
    }
    function open_tiin() {
        window.open("http://tiin.vn")
    }
    function open_tinngan() {
        window.open("http://tinngan.vn")
    }

    function open_link(url) {
        window.open(url)
    }

    function SearchOnFocus(field) {
        if (field.value == 'Từ khóa tìm kiếm') { field.value = ''; }
    }

    function SearchOnBlur(field) {
        if (field.value == '') { field.value = 'Từ khóa tìm kiếm'; }
    }

</script>

<script type="text/javascript">
    $('.menu_active').parent().css('background', '#00b7b2');
</script>



<script type="text/javascript" src="http://viettelstudy.vn/js_20141104/search.js"></script>

<script type="text/javascript">

    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-39998057-1']);
    _gaq.push(['_setDomainName', 'viettelstudy.vn']);
    _gaq.push(['_trackPageview']);

    (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();

</script>

<script type="text/javascript">
    /* <![CDATA[ */
    var google_conversion_id = 960383489;
    var google_custom_params = window.google_tag_params;
    var google_remarketing_only = true;
    /* ]]> */
</script>

<script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
</script>

<noscript>
    <div style="display: inline;">
        <img height="1" width="1" style="border-style: none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/960383489/?value=0&amp;guid=ON&amp;script=0" />
    </div>
</noscript>
<!-- Facebook Pixel Code -->

<script>
!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
document,'script','//connect.facebook.net/en_US/fbevents.js');

fbq('init', '362635017276287');
fbq('track', "PageView");</script>

<noscript>
    <img height="1" width="1" style="display: none" src="https://www.facebook.com/tr?id=362635017276287&ev=PageView&noscript=1" /></noscript>
<!-- End Facebook Pixel Code -->



        <!--end-header-->
        <div id="body">
            <!--Alert-->
            

<div class="study-notice">

    <span class="sne-sp">Thông báo: </span>
    
        
        
        <a id="alert_likAlert" class="sne-lnk" href="http://tintuc.viettelstudy.vn/tin-tuc/giao-duc/Diem-chuan-dai-hoc-2016-136-truong-da-cong-bo-i4556c3.html">Bạn có 1 bài tập cần phải hoàn thành. Click vào đây !</a>
    
    
    
    
    
    
</div>


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
                            
                            <!--
                            <input type="submit" name="login$btnDangNhap" value="Đăng nhập" onclick="btnDangNhap_OnClientClick();" id="login_btnDangNhap" class="bpt-lnk-save btn-login">
                            <input type="hidden" name="TokenCSRF_Login" value="861C1C176546B26167F6E71624FC5090FF6A020C86DD08965B9A4D78ECF3BC62571BA5DDC0E3D858BED2D9CB8A6AB57C63717C9C78439D42777006E989CC4EBB">
                            -->

                            <input type="submit"  value="Đăng ký" id="login_btnDangKy" class="bpt-lnk-save btn-login">
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

