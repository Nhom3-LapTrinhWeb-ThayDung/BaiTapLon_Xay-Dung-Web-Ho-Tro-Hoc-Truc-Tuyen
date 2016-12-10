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


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" href="./css/process_learn.css" type="text/css">
  <link rel="stylesheet" href="./css/comment.css" type="text/css">
  <link rel="stylesheet" href="./css/coder_update.css" type="text/css">
  <link rel="stylesheet" href="./css/persion.css" type="text/css">
  <link rel="stylesheet" href="./css/common.css" type="text/css">
  <link rel="stylesheet" href="./css/reset.css" type="text/css">
  <link rel="stylesheet" href="css/oneOfCourse.css" type="text/css"></link>
  <link rel="stylesheet" href="css/testOnline.css" type="text/css"></link>



  <title>
  	Trang cá nhân - Study Funny
  </title>

<link rel="icon" href="Images/favicon.ico" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.bxSlider.min.js"></script>
<script type="text/javascript" src="js/overlay2.js"></script>
<script type="text/javascript" src="js/home.js"></script>
<script async="" src="//connect.facebook.net/en_US/fbevents.js"></script>
<script type="text/javascript" async="" src="http://www.google-analytics.com/ga.js"></script>
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>


</head>
<body>


<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="">
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="">
<input type="hidden" name="__LASTFOCUS" id="__LASTFOCUS" value="">

<!--
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="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">
-->
</div>

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


<script src="./hocvien_files/WebResource.axd" type="text/javascript"></script>


<script src="./hocvien_files/ScriptResource.axd" type="text/javascript"></script>
<script src="./hocvien_files/ScriptResource(1).axd" type="text/javascript"></script>
<div>

	<input type="hidden" name="__VIEWSTATEENCRYPTED" id="__VIEWSTATEENCRYPTED" value="">

  <!--
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="PbDLkFona/jUPuTFfvn7x5wDdmIXfnAABuj6o46h1bZCZ34cuyriSSrG73VCffpyp4GncxtYD4XjhyVDi85UC8YfsST4ZVl7VWGwtg0zieDGD6dk661H2q/l1c0FFBf7xb/MXoQurtA3wsYhAZomn5s5B5ieMUuz1YH76v5tDmqtF6nY4oW/MTZmzgeZqHOwijw3ubnOnWFnjXvFQC3RUyTRDyWuXAlXt4KPhb2wFb+9uFPmtPMnbXtv0uZPCSJwPR97LOuyMMlviiC0fsSu+Av9pwThSnJ9ZPMz70hgC5Yl1JAr0a7G/yf2jfYnmFHI1zhlfJRC8kTI53uQw8/d7STx28OLr3cAjxjmdIUEin6Rx2srP0OGJDHdwNrKa4yaWv4+655nGahulu7M94Oua7HPVfIqDgXCYt227RwMhsK+o3f1Nt3GEphpchStdLvCC2Dk3oHJYonV1Zpxt2TEC9sKGbqoAD58ZpptnbDhwfoMPU0bAWPQXZ+Btsn3p/4TCNNtpTxo19ZOSO9/p+hCNYeSUVPI/5uHR9WfZbNwxLJxvyD22MIypQ/GaoP6P7m0SUvxoEybkgt7qpIKHtlvxQRmYVsdx8xvdeqljyksR2sSKmOTqbtRIVMJTUqOPNcMm2XWUi65W0p3DBOVFWssETFEiF3/ChPfTJr/rsO5qTOdBSqWyw93GDU2aPAbq59ZhorReuwZPTsS1Anwcr7/+temHtxMjXemmOHzNypxrz6/3W1Vl9FcV8tHEx1WsEu6soCnTJ430YV257ZSK1CuH0iS7C3214Rp9HrCSttkzrlBQE6I2kfR6aP5p1k3JUsznqide0UCqYlM7b4KoNDY6YYG3mp6DkCc8pTIPxZDq7hfmJcX/PQxyKeoZN8U6e6d0Wok/84nb1CAYATWuLydqCjh8fERiWRDMwTKDEXc4Pu+DlqRPejQgMWjAE4M5NMSAukBPKGFzKkY8bilmIHsaAduwtbvSL+FYm90vDvugzan3/bSG/Qg+qSutDsAsMVhZJR0ZH0eeZI8dfdPF374qY/N2MXrtDNS1UC/IufRc/2TFEVh1ib39620DQD1paW93rbANH/Omq6o49aC6iv8ElOyoG8zQLldbNaxNy+/aCAGMSZ0s2r67qJCBmZHChBEy+poUhDyz44DdyH0rrlCUNlQqUlulpKMHnqvcepv1aMlwYHWnMUgc9OfXPJsObvAJHD8o3gDdt8/jv6VOiTeheCvFs/Cd7U3OTGYW/QnNC5XsY29wH5byZ2UgNxUdemoJBdnSsRkFAe9+SG598Bmhgs0xu8AEbb0zpqkWbd7FbDRDxO1O1ye+8xN9OYBwZErrQFiYPmXfT3gLrYoCEkcBnpLJc1drgqc5hcTYpWAHMKiXfk9BOOnjRtxSIOeKIid+06xJDrSEIh1lE/nuBN6bgFYh5lrmzI0gzz+UC45cBYyaFL1G9ASJQYq7wKU+Lmk1fZ/x/3wM4DrTFbHa2OB7l5NGzPAIGLkZgnQsUdv93vrkQOIt78Knxn5i8Wv3yEHXAHCuJAReSTlWk6+afvUQQ0HD8RhxekaGM3VoIRssb4dTrkNFMtLhGs1NgobJVDmAGsPl3e/QrqOWho2nDpH7qmfGUibS1khzfqmrf8Ni72jSu3Afwgbo6wRU8+9gLHaiaCXfSx+DOsiIqafGbJt8xJwrxVkY78CrrZsXFFvkjinQuDJ1FefC7CKbTHWYh2UI+ltBGsuKach+BLySlFeAGy0MlV+dQJF2u502QSvQfKcYL7inAseSOAg4hyXkINgM0idOF+9pAlL5yPpR3wuh3k2Em2mA16G14xEAJqyR+pPXREC2JFjFP184qQdxPujk+FYJR5TEnQJtpwemAn8evOTuau+zeD+gKeZNvP8GBLATRpd">
  -->
</div>
 <script type="text/javascript">
//<![CDATA[
Sys.WebForms.PageRequestManager._initialize('ScriptManager1', document.getElementById('form1'));
Sys.WebForms.PageRequestManager.getInstance()._updateControls(['tHeader$Widget$GopY$pnGopY','tlogin$pnLogin','tctl14$LoadUser$upUserLoad','tctl14$TienTrinhThi$upThi','tctl14$DoiMatKhau$upDoiMK','tctl14$ThongTinHocVien$pnInfo'], [], [], 90);
//]]>
</script>

 <div id="overlay-header">
        <div id="overlay-left"> </div>
        <div id="overlay-right"> </div>
	</div>
	<div id="wrapper">
    	
  <style type="text/css">
        .p-login .infor-forget{top:55px;}
         .p-login .lnk-user .infor-for
         get{display:none;}
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
    
<div class="vts-gadget">
   
    
     
     <div class="vts-gadget-item vts-gadget-comment">
    	 
    	 


<div class="vt-gadget gadget-comment" style="display: none;">
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
            	
                <div class="vt-gadget-p">
                	
                        
                	<input type="submit" name="Header$Widget$GopY$btnGui" value="Gửi" onclick="validgopy(&#39;Header_Widget_GopY_txtNoiDung&#39;);" id="Header_Widget_GopY_btnGui" class="vt-gadget-btn-send">
                	<input type="hidden" name="TokenCSRF_GopYBaiHoc" value="A22CE296A4B92D31E24BCE525C2E36784E42767F7C4C04695685016F7C0B618803359C7DDC2192DA4A1731E89BAAB8F65BF2C0F989EDB8091EA18B22EDEAAC24">
                </div>
            </div>
            <span id="Header_Widget_GopY_lblErr" style="color:Red;"></span>
            <span id="Header_Widget_GopY_lblSucc"></span>
            
</div>  
            <div id="Header_Widget_GopY_UpdateProgress1" style="display:none;">
	
                <div class="bpc-row">
                    <span class="sp-left"></span>
                    <span class="sp-right">
                        <img src="./hocvien_files/ajax-loader.gif" alt="ViettelStudy">
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
        window.location.href = '/canhan.html'; //will redirect to your blog page (an ex: blog.html)
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
     	<div class="vt-gadget vt-hotline" style="display: none;">
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
                  <p>Email: <a href="mailto:mailto:congtuhot9.9@gmail.com" style="color:#14928E">StudyFunny@gmail.com</a></p>
                  <p class="vt-gadget-p-content">
                    Hỗ trợ giải đáp tất cả thắc mắc về các khóa học cách học và cách thức học tập trên StudyFunny
                  </p>
                <a rel="nofollow" class="vt-gadget-lnk-fb" href="https://www.facebook.com/StudyFunny">Study Funny</a>
        </div>
    </div>
    	 <a class="vts-gadget-lnk show-popup" title="Liên hệ">
         	
         </a>	
    </div>
</div>
<%@include file="//includes/header.jsp" %>
<%
	CourseDAO courseDAO = new CourseDAO();
	CourseWaitingDAO coursewaitingDAO = new CourseWaitingDAO();
	User_info teacher = new User_info();
	List<Course> listcoursewaiting = coursewaitingDAO.getListCourseWaiting(user_info.getId());
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



<script type="text/javascript" src="./hocvien_files/search.js.tải xuống"></script>

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

<script type="text/javascript" src="./hocvien_files/conversion.js.tải xuống">
</script>

<noscript>
    &lt;div style="display: inline;"&gt;
        &lt;img height="1" width="1" style="border-style: none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/960383489/?value=0&amp;amp;guid=ON&amp;amp;script=0" /&gt;
    &lt;/div&gt;
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
    &lt;img height="1" width="1" style="display: none" src="https://www.facebook.com/tr?id=362635017276287&amp;ev=PageView&amp;noscript=1" /&gt;</noscript>
<!-- End Facebook Pixel Code -->
        <!--end-header-->
        <div id="body">
        <!--Alert-->
        
<div class="study-notice">

    <span class="sne-sp">Thông báo: </span> 
        <a id="alert_likAlert" class="sne-lnk">Bạn có 1 bài tập cần phải hoàn thành. Click vào đây !</a>
</div>

<script>
$(document).ready(function(){
$('.persion-tab-lnk').click(function() {
    try{
    
        var id_tab = $(this).attr('name');
        if ($(this).hasClass('active')) {

        } else {
            $('.persion-tab-lnk').removeClass('active');
            $('.persion-right').hide();
            $(this).addClass('active');
            $('#' + id_tab).fadeIn("slow");
        }
    } catch (err) { }
        
    });    
});
</script>
<div id="body-content">
    <div class="persion-group">
        <div class="persion-left">
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

            </style>
            <div class="persion-avatar">
				<div id="ctl14_LoadUser_upUserLoad">

					<img src="upload/<%=user_info.getAnhdaidien() %>" alt="" class="persion-avatar-img">
					<h3 class="persion-info">
						<span class="bold"> ${user_info.getTen() }</span><br>
					</h3>

				</div>

			</div>
            <div class="persion-tab">
                <div class="wrap-tab">
                    <a class="persion-tab-lnk lnk-tab-info active" name="DetailUser" onclick="loadUserControl(&#39;ThongTinCaNhanNew&#39;)">
                        <span>Thông tin cá nhân</span> </a>
                    <a class="persion-tab-lnk lnk-tab-persion" name="TienTrinhHocNew" onclick="loadUserControl(&#39;TienTrinhHocNew&#39;)" href="DanhSachKhoaHoc.jsp">
                        <span>Đăng ký khóa học</span>
                    </a>
                    <a class="persion-tab-lnk lnk-tab-persion" name="CacKhoaHocDaDangKy">
                        <span>Danh sách khóa học đang học</span>
                        </a>
                    <a class="persion-tab-lnk lnk-tab-persion" name="CacKhoaHocDangCho" onclick="loadUserControl(&#39;LichSuGiaoDichNew&#39;)">
                        <span>Khóa học đang chờ</span>
                    </a> 
                    <a class="persion-tab-lnk lnk-tab-change" name="DetailDMK">
                        <span>Đổi mật khẩu</span>
                    </a>                                 
                </div>
            </div>
            <div>
            </div>
        </div>        
          <div class="persion-right persion-detail" id="QuanLyCommentNew" style="display: none;">
        </div>
          <div class="persion-right persion-detail" id="LichSuGiaoDichNew" style="display: none;">
        </div>        
        <div class="persion-right" id="DetailThi" style="display: none;">
            <div id="ctl14_TienTrinhThi_upThi">

</div>

<script type="text/javascript">
	$(document).ready(function(){
		
		$('.pln-lnk-share').live('click', function(e) {
			e.preventDefault();
			var path = $(this).attr('exam-url');
			var url = "https://www.facebook.com/sharer/sharer.php?u=http://viettelstudy.vn/" + path + "&amp;t=ViettelStudy";
			window.open(url, '_blank');
			return false;
		});		
	});
</script>

        </div>
<div class="persion-right persion-detail" id="CacKhoaHocDaDangKy" style="display: none;"><h3 class="learn-process-h3">
    <span>DANH SÁCH CÁC KHÓA HỌC ĐÃ ĐĂNG KÝ</span>
</h3>
 <style>
        .lp-lnk{margin-bottom:15px;}
        .lp-lnk img{height:152px;}
 </style>
<div class="learn-process process-study">
    <div class="box-test-online martop_0">
            
            <div class="to-content">
                <div class="to-c-left">
                   <div class="to-c-l-list">
	                    <%	int i=0;
	                    	for (Course course : courseDAO.getListCourse(user_info.getId())) 
	                    	{
	                    		i++;
	                    %>
	                          <div class="row" name ="1">
	                              <a  href ="khoahoc2.jsp?course_id=<%=course.getCourse_id()%>" name ="1">
	                                  <p class="to-l-p-img">
	                                      <span class="sp-text"> KHÓA HỌC </span><span class="sp-number">
	                                          <%=i %>
	                                      </span>
	                                  </p>
	                              </a>
	                              <a  href ="khoahoc2.jsp?course_id=<%=course.getCourse_id()%>" name = "1">
	                                  <p class="to-l-p-name">
	                                      <span class="bold">
	                                         <%=course.getCourse_name()%></span>
	                                  </p>
	                              </a>
	                          </div>
	                          <%
	                  			}
	                          %>
	                    </div>
                    <script type="text/javascript">
                        function loadCourse() {
                            var url;
                            url= "temp.html";
                            $("#TienTrinhHocNew").load(url);
                        }

                    </script>                     
                    
                </div>
                
    

            </div>
        </div>
</div></div>
        
<div class="persion-right persion-detail" id="CacKhoaHocDangCho" style="display: none;"><h3 class="learn-process-h3">
    <span>DANH SÁCH CÁC KHÓA HỌC ĐANG CHỜ</span>
</h3>
 <style>
        .lp-lnk{margin-bottom:15px;}
        .lp-lnk img{height:152px;}
 </style>
<div class="learn-process process-study">
    <div class="box-test-online martop_0">
            
            <div class="to-content">
                <div class="to-c-left">
                   <div class="to-c-l-list">
                   <div class="row">
                   		<%if(listcoursewaiting.isEmpty()){ %>
                   		<div class="study-notice">
						
						    <span class="sne-sp">Thông báo: </span>
						        
						        <a id="alert_likAlert" class="sne-lnk" href="DanhSachKhoaHoc.jsp">Bạn chưa đăng ký khóa học nào. Click vào đây để đăng ký!</a>
						    
						</div>
                   		
                   		<%}else{ %>
	                    <%	i = 0;
	                    	for (Course coursewaiting : listcoursewaiting)
	                    	{
	                    		CourseWaiting c= coursewaitingDAO.getCourseWaiting(user_info.getId(), coursewaiting.getCourse_id());
	                    		i++;
	                    %>
	                          
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
                                    
                                  <a class="to-l-btn" type="button" value="Hủy đăng ký "  name="btnhuydangky" onclick="btnhuydangkyclick('<%=c.getCourse_waiting_id() %>','<%=coursewaiting.getCourse_name() %>')" id="btnhuydangky">Hủy đăng ký </a>
                                   
                                    </div>
                                   
                                
                                
	                          <%
	                    			}
	                  			}
	                          %>
	                          </div>	
	                           <script type="text/javascript">
									function btnhuydangkyclick(course_waiting_id,name){
										if(confirm('Hủy đăng ký khóa học '+name+'. Đồng ý?')){
											$.post('CourseWaitingServlet', {'command':"delete",'course_waiting_id':course_waiting_id}, function (data) {
												if(data="thành công!"){
													alert("Hủy đăng ký khóa học "+name+" thành công!");
													location.reload();
												}
												else
													alert("Hủy đăng ký khóa học "+name+" không thành công!");
												},'text'); 
											
										}
									}
								</script>    	
	                    </div> 
	                    
	                
	                    
                    <script type="text/javascript">
                        function loadCourse() {
                            var url;
                            url= "temp.html";
                            $("#TienTrinhHocNew").load(url);
                        }

                    </script>                     
                    
                </div>
                
    

            </div>
        </div>
</div></div>        
        
<div class="persion-right" id="DetailDMK" style="display: none;">

						<script>
								function ChapNhan() {
									document.getElementById(
											'btnDoiMK')
											.click();
								}
							</script>
						<div id="ctl14_DoiMatKhau_upDoiMK">

							<div style="display: block;" class="bpt-content" id="doimk">
								<h3 class="learn-process-h3">
									<span>ĐỔI MẬT KHẨU</span>
								</h3>
								<%-- <c:if test="${errorStr != null }">  --%>
								<div class="bpt-item-right">
									<p style="color: red; font-style: italic; padding-left: 15px"
										id="errorStr" name="errorStr"></p>
								</div>
								<%-- </c:if> --%>
								<div class="bpt-row">
									<div class="bpt-item-left">Mật khẩu cũ:</div>
									<div class="bpt-item-right">
										<input name="oldpass" type="password" maxlength="30"
											id="oldpass" class="bpt-txt" autocomplete="off"
											onkeydown="var key = event.keyCode || event.which; if (key == 13){ChapNhan();return false;} return true;">
									</div>
									<div class="bpt-item-left"></div>
									<div class="bpt-item-right">
										<span id="ctl14_DoiMatKhau_lblErrMatKhauCu"></span>
									</div>
								</div>
								<div class="bpt-row">
									<div class="bpt-item-left">Mật khẩu mới:</div>
									<div class="bpt-item-right">
										<input name="newpass1" type="password" maxlength="30"
											id="newpass1" class="bpt-txt" autocomplete="off"
											onkeydown="var key = event.keyCode || event.which; if (key == 13){ChapNhan();return false;} return true;">
									</div>
									<div class="bpt-item-left"></div>
									<div class="bpt-item-right">
										<span id="ctl14_DoiMatKhau_lblErrMatKhauMoi"></span>
									</div>
								</div>
								<div class="bpt-row">
									<div class="bpt-item-left">Nhập lại mật khẩu</div>
									<div class="bpt-item-right">
										<input name="newpass2" type="password" maxlength="30"
											id="newpass2" class="bpt-txt" autocomplete="off"
											onkeydown="var key = event.keyCode || event.which; if (key == 13){ChapNhan();return false;} return true;">

									</div>
									<div class="bpt-item-left"></div>
									<div class="bpt-item-right">
										<span id="ctl14_DoiMatKhau_lblErrXnMatKhauMoi"></span>
									</div>
								</div>

								<div class="bpt-row" style="margin-top: 0px;">
								
									<div class="bpt-item-left"></div>
									<div class="bpt-item-right">
										<span id="ctl14_DoiMatKhau_lblErr"></span>
									</div>
								</div>
								<div class="bpt-row bpt-row-save" style="margin-top: 0px;">
									<a id="btnDoiMK" name="btnDoiMK" class="bpt-lnk-save"
										onclick="doimk()"> Đồng ý </a> <input type="hidden"
										name="TokenCSRF_Doimk"
										value="F1CF4C77CE1C09A32DD6BFE41A41A638CAE5A5A9EC423F90CB6D6858647664589ECFD6FCB25DAE392852A33A114552FB83150825346022B246D482F8B93E6A5C">
								</div>

							</div>
						</div>

						<script type="text/javascript">
								function doimk(){
									var newpass1,newpass2,oldpass,command, errormk,username;
									<%-- $('#errorStr').html('<%=users.getUserName()%>');
									alert('<%=users.getUserName()%>'); --%>
									username = '<%=users.getUserName()%>'
									curentpass = "<%=users.getUserPass()%>";
									oldpass = $('#oldpass').val();
									newpass1 = $('#newpass1').val();
									newpass2 = $('#newpass2').val();
									command = "doimk";
									errormk="";
									
									 if(oldpass != curentpass)
										{
											errormk="Mật khẩu không đúng! ";
											//$('p#errorStr').html('adsad');
											// hoặc
											$('#errorStr').html(errormk);
										}
									if(newpass1 != newpass2)
									{
										errormk= errormk + "Xác nhận mật khẩu không khớp!";
										//$('p#errorStr').html('adsad');
										// hoặc
										$('#errorStr').html(errormk);
									}
									if(oldpass == curentpass && newpass1 == newpass2)
										{
										//alert(username);
											$.post('UsersServlet', {'user_name':username,'newpass1':newpass1,'command':command}, function (data) {
													$("#errorStr").html(data);
													if(data=="Đổi mật khẩu thành công")
														location.reload();
							                 },'text');
										}
									//alert(curentpass+oldpass+ newpass1+ newpass2+command);
									
								}
							</script>
						<div id="ctl14_DoiMatKhau_UpdateProgress1" style="display: none;">

							<div class="bpt-row">
								<div class="bpt-item-left"></div>
								<div class="bpt-item-right">
									<img src="images/ajax-loader.gif" alt="StudyFunny">
								</div>
							</div>

						</div>

						<script type="text/javascript">
								function refreshCaptcha(capchaid, capchlength) {

									$('.capcha').attr(
											'src',
											'./uControls/Capcha/capchaImage.aspx'
													+ '?id=' + capchaid
													+ '&len=' + capchlength
													+ '&r=' + Math.random());
								}
							</script>
					</div>
<div class="persion-right" id="DetailUser" style="display: block;">
<form id = "formuserinfo" action="UploadServlet" method="post" enctype="multipart/form-data">            
<input type="hidden" value="user" name="command">
<div id="tab_user">
    <h3 class="learn-process-h3">
        <span>THÔNG TIN CÁ NHÂN</span>
    </h3>
    <p style="color: red; font-style: italic; padding-left: 15px"
										id="errorupdateuser" name="errorupdateuser"></p>
    <div class="list-wrap">
        <div class="bpt-content" id="edit">
            <div id="ctl14_ThongTinHocVien_pnInfo">
	
                    <div class="bpt-row">
                        <div class="bpt-item-left">
                            Họ và tên:</div>
                        <div class="bpt-item-right">
												<input name="ten" type="text" value="${user_info.getTen()}"
													maxlength="100" id="ten" class="bpt-txt"> <span
													id="ctl14_ThongTinHocVien_lblErrTenDayDu"></span> 
													<input
													type="hidden" id="usermame" name="username"
													value="${users.getUserName()}" />
											</div>
                    </div>
                     <div class="bpt-row">
                        <div class="bpt-item-left">
                            Chức vụ</div>
                        <div class="bpt-item-right">
                            <input name="chucvu" type="text" value="Học viên" maxlength="100" id="ctl14_ThongTinHocVien_txtTenDayDu" disabled="disabled" class="bpt-txt">
                            <span id="chucvu"></span>
                        </div>
                    </div>
                    <div class="bpt-row">
                        <div class="bpt-item-left">
                            Số điện thoại:</div>
                        <div class="bpt-item-right">
							<input name="sodienthoai" type="text"
								value="${user_info.getSodienthoai() }" maxlength="15"
								id="sodienthoai" class="bpt-txt">
						</div>
                    </div>
                    <div class="bpt-row">
                        <div class="bpt-item-left">
                            Giới tính:</div>
                        <div class="bpt-item-right">
													<select name="gioitinh"
														id="gioitinh" class="bpt-sl-sex">
														<option>Chọn giới tính</option>
														<option value="0">Nam</option>
														<option value="1">Nữ</option>
													</select>

													<script type="text/javascript">
														$(document).ready(function() {
																			var x = ${user_info.getGioitinh()};
																			$(
																					'#gioitinh option[value='
																							+ x
																							+ ']')
																					.attr(
																							'selected',
																							'selected');
																			//alert(x);
																			//alert($('#ThongTinGiangVienGioiTinh option[selected="selected"]').attr('value'));
																		})
													</script>



												</div>
                    </div>
                    <div class="bpt-row">
												<div class="bpt-item-left">Ngày/tháng/năm sinh:</div>
												<div class="bpt-item-right">
													<select name="ngaysinh" id="ngaysinh" class="bpt-sl-date">
														<option value="0">Ngày</option>
														<option value="25">25</option>
													</select> <select name="thangsinh" id="thangsinh" class="bpt-sl-month">
														<option value="0">Tháng</option>
													</select> <select name="namsinh" id="namsinh" class="bpt-sl-date">
														<option value="0">Năm</option>

													</select>
													
													<script type="text/javascript">
														$(document).ready(function() {
															<%
															int nam =Integer.parseInt(user_info.getNgaysinh().substring(0, 4));
															int thang = Integer.parseInt(user_info.getNgaysinh().substring(5, 7));
															int ngay = Integer.parseInt(user_info.getNgaysinh().substring(8,10)) ;
															%>
																			var d = new Date();
																			var ngay = <%=ngay%>;
																			var thang = <%=thang%>;
																			var nam = <%=nam%>;
																			for (var int = 1; int <= 31; int++) {
																				if(int == ngay)
																					$('#ngaysinh').append('<option value="'+int+'" selected="selected">'+ int+ '</option>');
																				else
																					$('#ngaysinh').append('<option value="'+int+'">'+ int+ '</option>');
																				
																			}
																			for (var int = 1; int <= 12; int++) {
																				if(int == thang)
																					$('#thangsinh').append('<option value="'+int+'" selected="selected">'+ int+ '</option>');
																				else
																					$('#thangsinh').append('<option value="'+int+'">'+ int+ '</option>');
																			}
																			for (var int = 1980; int <= d.getFullYear(); int++) {
																				if(int == nam)
																					$('#namsinh').append('<option value="'+int+'" selected="selected">'+ int+ '</option>');
																				else
																					$('#namsinh').append('<option value="'+int+'">'+ int+ '</option>');
																			}
																		});
														
													</script>
												</div>
											</div>
                    <div class="bpt-row">
                        <div class="bpt-item-left">
                            Email:</div>
                        <div class="bpt-item-right">
                            <input name="email" type="text" maxlength="50" id="email" value=${user_info.getEmail() } class="bpt-txt">
                        </div>
                    </div>                
</div>
			<div class="bpt-row bpt-row-line">
										<div class="bpt-item-left">Ảnh đại diện:</div>
										<div class="bpt-item-right">
											<div class="bpt-img-avarta">
												<img src="upload/<%=user_info.getAnhdaidien()%>" id="anhdaidien" alt=""
													height="48px">

											</div>
											<input name="uploadFile" type="file"
												accept="image/*" id="uploadFile" class="file" style="width: 210px">
												<input name="" type="submit"
												value="cập nhật ảnh đại diện" style=" width: 150; height: 30;">
											<p class="bpt-note-img">
												<span id="ctl14_ThongTinHocVien_lblErrImage"></span>
											</p>
						
										</div>
									</div>

            <!-- <div class="bpt-row bpt-row-line">
                <div class="bpt-item-left">
                    Ảnh đại diện:</div>
                <div class="bpt-item-right">
                    <div class="bpt-img-avarta">
                        <img src="Images/hocvien/avatar_01678868567.jpg" id="anhdaidien" alt="" height="48px">                        
                    </div>
                    <input name="button_anhdaidien" type="file" id="button_anhdaidien" class="file" style="width: 210px">
                    <p class="bpt-note-img">
                        <span id="ctl14_ThongTinHocVien_lblErrImage"></span>
                    </p>
                    
                </div>
            </div>     -->        
            
            <div class="bpt-row">
                <div class="bpt-item-left">
                    Địa chỉ:</div>
                <div class="bpt-item-right">
					<input name="diachi" type="text" maxlength="200" id="diachi"
						class="bpt-txt" value="${user_info.getDiachi()}">
				</div>
            </div>
            
            <div class="bpt-row" style="margin-top: 0px;">
                <div class="bpt-item-left">
                </div>
                <div class="bpt-item-right">
                    <span id="ctl14_ThongTinHocVien_lblSusscess"></span>
                </div>
            </div>
            <div class="bpt-row bpt-row-save" style="margin-top: 0px;">
				<a id="btnupdateuser" class="bpt-lnk-save" onclick="btnupdateuserclick()">
					Chấp nhận </a>
					
			</div>
            
        </div>
        <!--end-edit-user---->
    </div>
</div>
</form>>
										<script type="text/javascript">btnupdate
							function btnupdateuserclick(){
									if (confirm("Sửa đổi thông tin cá nhân. Đồng ý?") == true) {
										$.post('UsersServlet', {'command':"update",'email':$('#email').val(),'gioitinh':$('#gioitinh').val(),'ngaysinh':$('#ngaysinh').val(),'thangsinh':$('#thangsinh').val(),
											'namsinh':$('#namsinh').val(),'ten':$('#ten').val(),'sodienthoai':$('#sodienthoai').val()}, function (data) {
											if(data=="update success!")
												{
												$('#errorupdateuser').html('Vui lòng đăng nhập lại để thay đổi!');
												}
											else
												$('#errorupdateuser').html(data);
											},'text');
									}
						}
						</script>
        </div>
    </div>
</div>

<script type="text/javascript">
    function loadUserControl(id_load) {
        $('#'+id_load).show();
        var a1 = document.getElementById(id_load)
        a1.innerHTML = '';
        if (a1.innerHTML == '') {
            $.ajax({
                type: "get",
                url: './Ajax/CaNhan/' + id_load.toString() + '.aspx',
                success: function(msg) {
                    msg = $.trim(msg);
                    a1.innerHTML = msg;
                    return false;
                }
            });
        }
    }
</script> 
            
        </div>
        <!--end-body-->
         
<a id="to_top" href="http://viettelstudy.vn/canhan.html#" style="display: none; bottom: 20px; position: fixed; right: 20px;
    z-index: 9999;" rel="nofollow">
    <img alt="Go to top!" src="images/gototop.png"></a>
<div id="footer">
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
                    TokenEmail: "749C233A417A0B0053F154ECF4E456E72DC701200886B4B4A1E48B725F2C616FEE070005EF7C50DE481719A74C72A222D092B46C0A37517C5858B823D88C6F54"
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
                            
                            <!--
                            <input type="submit" name="login$btnDangNhap" value="Đăng nhập" onclick="btnDangNhap_OnClientClick();" id="login_btnDangNhap" class="bpt-lnk-save btn-login">
                            <input type="hidden" name="TokenCSRF_Login" value="861C1C176546B26167F6E71624FC5090FF6A020C86DD08965B9A4D78ECF3BC62571BA5DDC0E3D858BED2D9CB8A6AB57C63717C9C78439D42777006E989CC4EBB">
                            -->

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
        setCookie(cookieName, vl, tomorrow, '/', '', '');    }

    function ck_cou(vl) {
        var cookieName = 'cou';
        var today = new Date();
        var tomorrow = new Date();
        tomorrow.setDate(today.getHours + 3);
        setCookie(cookieName, vl, tomorrow, '/', '', '');
    }
</script>

<script type="text/javascript">
//<![CDATA[
Sys.Application.initialize();
Sys.Application.add_init(function() {
    $create(Sys.UI._UpdateProgress, {"associatedUpdatePanelId":"Header_Widget_GopY_pnGopY","displayAfter":500,"dynamicLayout":true}, null, null, $get("Header_Widget_GopY_UpdateProgress1"));
});
Sys.Application.add_init(function() {
    $create(Sys.UI._UpdateProgress, {"associatedUpdatePanelId":"ctl14_TienTrinhThi_upThi","displayAfter":500,"dynamicLayout":true}, null, null, $get("ctl14_TienTrinhThi_UpdateProgress1"));
});
Sys.Application.add_init(function() {
    $create(Sys.UI._UpdateProgress, {"associatedUpdatePanelId":"ctl14_DoiMatKhau_upDoiMK","displayAfter":500,"dynamicLayout":true}, null, null, $get("ctl14_DoiMatKhau_UpdateProgress1"));
});
Sys.Application.add_init(function() {
    $create(Sys.UI._UpdateProgress, {"associatedUpdatePanelId":"login_pnLogin","displayAfter":500,"dynamicLayout":true}, null, null, $get("login_UpdateProgress1"));
});
//]]>
</script>
<script type="text/javascript">

function EnterKeyPress(id,e) {
  if (window.event) { e = window.event; }
   if (e.keyCode == 13 || e.keyCode == 121) {
     document.getElementById(id).click();
   }
}

</script>

</body></html>