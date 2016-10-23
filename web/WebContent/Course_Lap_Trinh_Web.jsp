<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
    Khóa Học
</title><meta content="http://viettelstudy.vn/images/share_fb_img.jpg" name="og:image">
<link rel="icon" href="http://viettelstudy.vn/images/favicon.ico">
<script async="" src="//connect.facebook.net/en_US/fbevents.js"></script>
<script type="text/javascript" async="" src="http://www.google-analytics.com/ga.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
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
            	<span class="vt-gadget-label">
                	Mã bảo mật
                </span>
                <div class="vt-gadget-p">
                	<input name="Header$Widget$GopY$txtCapcha" type="text" maxlength="10" id="Header_Widget_GopY_txtCapcha" autocomplete="off" class="vt-gadget-txt">
                        <a class="captcha-img" onclick="refreshCaptcha(&#39;GopY&#39;,&#39;5&#39;)" style="float:left;width:100px;">
                            

<div style="float:left;padding-left:8px;padding-right:20px">
    <img class="capcha" src="./hocvien_files/capchaImage.aspx" title="Lấy mã khác" alt="Study Funny"> 
     
</div>

                        </a>
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
        window.location.href = '/index.html'; //will redirect to your blog page (an ex: blog.html)
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
                <h2 class="vt-gadget-h1-hotline">Hotline 198 <br>
<span style="font-size:15px">(miễn phí)</span></h2>
                <p>Email: <a href="mailto:ViettelStudy@viettel.com.vn" style="color:#14928E">ViettelStudy@viettel.com.vn</a></p>
                <p class="vt-gadget-p-content">
                    Hỗ trợ giải đáp tất cả thắc mắc về các khóa học cách học và cách nộp học phí trên ViettelStudy
                </p>
                <a rel="nofollow" class="vt-gadget-lnk-fb" href="https://www.facebook.com/ViettelStudy.vn">Vi tuong lai</a>
        </div>
    </div>
         <a class="vts-gadget-lnk show-popup" title="Liên hệ">
            
         </a>   
    </div>
</div>


<div id="header">
    <div id="header-top">
        
        <a class="header-logo" href="index.jsp">      
           </a>           
        <div class="header-login">
             
            <p class="p-login">
                Xin chào: <a href="hocvien.jsp">
                    01678868567</a>
                | <a href="index.jsp">Thoát</a>
            </p>
            
        </div>
        <div class="study-search">
            <input name="Header$search_query" type="text" maxlength="100" id="Header_search_query" class="searchInput has_default_text ssh-input" onkeypress="return clickButton(event,'Header_btnSearch1')" onfocus="SearchOnFocus(this)" onblur="SearchOnBlur(this)" value="Từ khóa tìm kiếm" autocomplete="off">
                
            <input type="submit" name="Header$btnSearch1" value="" onclick="checkdata('Header_btnSearch1');" id="Header_btnSearch1" class="ssh-btn-search">
        </div>
        <div style="display: none;" id="suggestions" class="suggestion">
    </div>
    <script type="text/javascript">
        $(document).ready(function() {
            suggesstionFunc();
        });  
    </script>
   
    
    </div>
    <div id="header-menu" style="background: rgb(0, 183, 178);">
        <a class="lnk-hm-home menu_active" href="index.jsp">
        </a>
        <ul class="ul-menu-header">
            
            <li class="li-menu-header"><a href="index.jsp" class="lnk-menu-header ">
                TRANG CHỦ </a>                
            </li>
            
            <li class="li-menu-header"><a href="HuongDanSuDung.jsp" class="lnk-menu-header ">
                HƯỚNG DẪN SỬ DỤNG </a>                
            </li>  
            <li class="li-menu-header"><a class="lnk-menu-header">
               DANH SÁCH LỚP HỌC </a>   
               <div class="vts-submenu submenu-245">
                    <ul class="submenu1"> 
                         <li><a href="Course_Lap_Trinh_Web.jsp">
                                 Lập trình web</a> </li>
                                    <li><a>
                                  Kỹ thuật lập trình</a> </li>
                                <li><a >
                                  Công nghệ phần mềm </a> </li>                                
                    </ul>
                </div>             
            </li>                     
    
    </ul>
</div>
</div>


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

<script type="text/javascript" src="js/search.js"></script>

        <!--end-header-->
        <div id="body">
        <!--Alert-->
        




            
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
        .Breadcrumb{margin-top:10px;background:#ffffff;padding:5px 10px;}
        .Breadcrumb .sne-lnk{color:#00918D;font-weight:normal;line-height:20px;background:}
    </style>
    <a id="alert_Breadcrumb__hplBreadcrumd" class="sne-lnk">Cá Nhân &gt; Khóa Học &gt; Lập trình web</a>
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
                <span>Lập trình web</span>
            </h1>
            
        </div>
        <div class="learn-process process-study">
            <div id="header-menu" style="background: rgb(0, 183, 178);">
                <a class="lnk-hm-home menu_active" href="index.jsp">
                </a>
                <ul class="ul-menu-header">
                
                    <li class="li-menu-header "><a class="lnk-menu-header menu_active"  name="Course">
                        View course </a>
                    </li>
                    
                    <li class="li-menu-header"><a class="lnk-menu-header "  name="DSHV">
                        Danh sách học viên </a>                
                    </li>  

                    <li class="li-menu-header"><a class="lnk-menu-header" id="DSBT" name="DSBTRa" onclick="loadDSBTRa()">
                       Danh sách bài tập </a>                            
                    </li> 

                    <li class="li-menu-header"><a class="lnk-menu-header"  id="KHHT" name="XemKeHoachHocTap">
                       Xem kế hoạch học tập </a>                            
                    </li> 
                    <li class="li-menu-header" style="margin-left:370px">
                        <a onclick="showedit()"><img style="display: none;" src="Images/settings.png"></a>
                    </li>          <!-- Courses in category -->
                </ul>
            </div>
            <div id="Course" class="body" style="display:block">
            <a onclick="showedit()"><img style="display: none;float:right; " src="Images/settings2.png"></a>
        <div class="box-test-online martop_0">
            <div class="to-content">
                <div class="to-c-left">
                   <div class="to-c-l-list" style="font-size:18px">
                   <div class="row">
                   <div class="box-text">
                    <a ><img style="display: none;float:right" name="edit" src="Images/settings2.png"></a>
                        <h2 style="color:blue">
                            <span>Đề cương chi tiết</span>
                        </h2>
                                    <br>
                        <h3 style="color:blue">Chương 1. Tổng quan</h3>
                        <h3 style="color:blue">Chương 2. HTML</h3>
                        <h3 style="color:blue">Chương 3. JQUERY</h3>
                        <h3 style="color:blue">Chương 4. AJAX </h3>
                    </div>
                    <div class="box-resources">
                    <br>
                    </div>

                        <div class="edit" style="display:none;">
                        <a href=""><img style="float:right" src="Images/add-item.png"></a>
                        </div>
                    </div>

                    <div class="row">
                        <div class="box-text">
                            <a ><img style="display: none;float:right" name="edit" src="Images/settings2.png"></a>
                            <h2 style="color:blue">
                                <span>Chương 1. Tổng quan</span>
                            </h2>
                        </div>

                        <div class="box-resources">
                        <br>
                        </div>

                        <div class="edit" style="display:none;">
                        <a href=""><img style="float:right" src="Images/add-item.png"></a>
                        </div>
                    </div>

                    <div class="row">
                        <div class="box-text">
                        <a ><img style="display: none;float:right" name="edit" src="Images/settings2.png"></a>
                            <h2 style="color:blue">
                                <span>Chương 2. HTML</span>
                            </h2>
                        </div>

                        <div class="box-resources">
                            <br>
                            <a  href="./resource/Lecture_01_HTML Fundamentals_v2.0.pdf">
                            <p style="margin-left: 20px"><img src="Images/pdf-24.png">&nbsp;Tài liệu hướng dẫn html&nbsp;&nbsp;&nbsp;&nbsp;<span class="edit" style="display:none">
                                <select class="bpt-sl-date">
                                <option value="0">edit</option>
                                <option value="1" onselect="sua()"><a onclick="sua()">Sửa</a></option>
                                <option value="2" href="">xóa</option>
                                </select>
                            </span>
                            </a>
                            </p>
                        </div>

                        <div class="edit" style="display:none;">
                        <a href=""><img style="float:right" src="Images/add-item.png"></a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="box-text">
                        <a ><img style="display: none;float:right" name="edit" src="Images/settings2.png"></a>
                            <h2 style="color:blue">
                                <span>Chương 3. JQUERY</span>
                            </h2>
                        </div>
                        <div class="box-resources">
                        <br>
                            <p style="margin-left: 20px"><img src="Images/icon-baitap.svg">&nbsp; Các chức năng chứa jquery trong BTL&nbsp;&nbsp;&nbsp;&nbsp;<span class="edit" style="display:none">
                                <select class="bpt-sl-date">
                                <option value="0">edit</option>
                                <option value="1" onselect="sua()"><a onclick="sua()">Sửa</a></option>
                                <option value="2" href="">xóa</option>
                                </select>
                            </span></p>
                    </div>
                        <div class="edit" style="display:none;">
                            <a href=""><img style="float:right" src="Images/add-item.png"></a>
                            </div>
                    </div>

                    <div class="row">
                        <div class="box-text">
                            <a ><img style="display: none;float:right" name="edit" src="Images/settings2.png"></a>
                            <h2 style="color:blue">
                                <span>Chương 4. AJAX</span>
                            </h2>
                        </div>

                        <div class="box-resources">
                        <br>
                         <a href="BaiTestSo1.jsp"><p style="margin-left: 20px"><img src="Images/icon-baitap.svg">&nbsp; Bài test số 1&nbsp;&nbsp;&nbsp;&nbsp;<span class="edit" style="display:none"></a>
                                
                            </span></p>
                        </div>

                        <div class="edit" style="display:none; ">
                            <a href=""><img style="float:right" src="Images/add-item.png"></a>
                        </div>
                    </div>
                    <div class="edit" style="display:none">
                        <div class="row">
                            <p style="text-align: right"><a><img src="Images/switch_plus.svg"></a> <a><img src="Images/switch_minus.svg"></a></p>
                        </div>
                    </div>
                 </div>
                </div>
                
            </div>
        </div>
        </div>

        <div class="body" id="DSHV" style="margin-left:10px">
            <h1 style="color: blue;"><span>Danh sách học viên của khóa</span></h1>
            <table cellspacing="1" cellpadding="1" width="100%">
      <tbody>
      <tr><td height="4" colspan="4"></td></tr>
      <tr><td><table cellspacing="0" cellpadding="0" width="100%">
        <tbody>

      <tr><td class="studyprogram_tabledetails_td_header_dl" width="5%" style="text-align:center">STT</td>
      <td class="studyprogram_tabledetails_td_header_dl" width="15%" style="text-align:center">Mã Học viên</td>
      <td class="studyprogram_tabledetails_td_header_dl" width="25%" style="text-align:center">Tên</td>
      <td class="studyprogram_tabledetails_td_header_dl" width="30%" style="text-align:center">Email</td>
      <td class="studyprogram_tabledetails_td_header_dl" width="15%" style="text-align:center">Ngày sinh</td>
      <td class="studyprogram_tabledetails_td_header_dl" width="10%" style="text-align:center">Chi Tiết</td>

      <tr>
      <td class="studyprogram_tabledetails_td_content_dl">&nbsp;1</td>
      <td class="studyprogram_tabledetails_td_content_dl">&nbsp;14110001</td>
      <td class="studyprogram_tabledetails_td_content_dl">&nbsp;Nguyễn Tuấn Anh</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;nguyentuananh@gmail.com</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;09/04/1994</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl"><a class="under popup-login" rel="#overlay-chitiet-hocvien">Chi tiết</a></td></tr>

      <tr><td class="studyprogram_tabledetails_td_content_dl">&nbsp;2</td>
      <td class="studyprogram_tabledetails_td_content_dl">&nbsp;14110002</td>
      <td class="studyprogram_tabledetails_td_content_dl">&nbsp;Nguyễn Ngọc Anh</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;nguyenngocanh@gmail.com</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;2/11/1996</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl"><a href="" target="_blank">Chi tiết</a></td></tr>

      <tr><td class="studyprogram_tabledetails_td_content_dl">&nbsp;3</td>
      <td class="studyprogram_tabledetails_td_content_dl">&nbsp;14110003</td>
      <td class="studyprogram_tabledetails_td_content_dl">&nbsp;Nguyễn Quốc Anh</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;nguyenquocanh@gmail.com</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;20/10/1995</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl"><a href="" target="_blank">Chi tiết</a></td></tr>

      <tr><td class="studyprogram_tabledetails_td_content_dl">&nbsp;4</td>
      <td class="studyprogram_tabledetails_td_content_dl">&nbsp;14110004</td>
      <td class="studyprogram_tabledetails_td_content_dl">&nbsp;Lê Gia Trung</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;legiatrung@gmail.com</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;2/12/1996</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl"><a href="" target="_blank">Chi tiết</a></td></tr>

      <tr><td class="studyprogram_tabledetails_td_content_dl">&nbsp;5</td>
      <td class="studyprogram_tabledetails_td_content_dl">&nbsp;14110030</td>
      <td class="studyprogram_tabledetails_td_content_dl">&nbsp;Phạm Trung Dũng</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;phamtrungdung@gmail.com</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;22/1/1996</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl"><a href="" target="_blank">Chi tiết</a></td></tr>

      <tr><td class="studyprogram_tabledetails_td_content_dl">&nbsp;6</td>
      <td class="studyprogram_tabledetails_td_content_dl">&nbsp;14110176</td>
      <td class="studyprogram_tabledetails_td_content_dl">&nbsp;Lê Nam</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;lenam@gmail.com</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;6/4/</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl"><a href="" target="_blank">Chi tiết</a></td></tr>
      
      <tr><td class="studyprogram_tabledetails_td_content_dl">&nbsp;7</td>
      <td class="studyprogram_tabledetails_td_content_dl">&nbsp;14110002</td>
      <td class="studyprogram_tabledetails_td_content_dl">&nbsp;Nguyễn Ngọc Anh</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;nguyenngocanh@gmail.com</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;14110002@student.stydyfunny.edu.vn</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl"><a href="" target="_blank">Chi tiết</a></td></tr>

      <tr><td class="studyprogram_tabledetails_td_content_dl">&nbsp;8</td>
      <td class="studyprogram_tabledetails_td_content_dl">&nbsp;14110003</td>
      <td class="studyprogram_tabledetails_td_content_dl">&nbsp;Nguyễn Quốc Anh</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;nguyenquocanh@gmail.com</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;14110003@student.studyfunny.edu.vn</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl"><a href="" target="_blank">Chi tiết</a></td></tr>

      <tr><td class="studyprogram_tabledetails_td_content_dl">&nbsp;9</td>
      <td class="studyprogram_tabledetails_td_content_dl">&nbsp;14110004</td>
      <td class="studyprogram_tabledetails_td_content_dl">&nbsp;Lê Gia Trung</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;legiatrung@gmail.com</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;14110004@student.studyfunny.edu.vn</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl"><a href="" target="_blank">Chi tiết</a></td></tr>

      <tr><td class="studyprogram_tabledetails_td_content_dl">&nbsp;10</td>
      <td class="studyprogram_tabledetails_td_content_dl">&nbsp;14110030</td>
      <td class="studyprogram_tabledetails_td_content_dl">&nbsp;Phạm Trung Dũng</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;phamtrungdung@gmail.com</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;14110030@student.studyfunny.edu.vn</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl"><a href="" target="_blank">Chi tiết</a></td></tr>

      <tr><td class="studyprogram_tabledetails_td_content_dl">&nbsp;11</td>
      <td class="studyprogram_tabledetails_td_content_dl">&nbsp;14110176</td>
      <td class="studyprogram_tabledetails_td_content_dl">&nbsp;Lê Nam</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;lenam@gmail.com</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;14110176@student.studyfunny.edu.vn</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl"><a href="" target="_blank">Chi tiết</a></td></tr>

      <tr><td class="studyprogram_tabledetails_td_content_dl">&nbsp;12</td>
      <td class="studyprogram_tabledetails_td_content_dl">&nbsp;14110002</td>
      <td class="studyprogram_tabledetails_td_content_dl">&nbsp;Nguyễn Ngọc Anh</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;nguyenngocanh@gmail.com</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;14110002@student.stydyfunny.edu.vn</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl"><a href="" target="_blank">Chi tiết</a></td></tr>

      <tr><td class="studyprogram_tabledetails_td_content_dl">&nbsp;13</td>
      <td class="studyprogram_tabledetails_td_content_dl">&nbsp;14110003</td>
      <td class="studyprogram_tabledetails_td_content_dl">&nbsp;Nguyễn Quốc Anh</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;nguyenquocanh@gmail.com</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;14110003@student.studyfunny.edu.vn</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl"><a href="" target="_blank">Chi tiết</a></td></tr>

      <tr><td class="studyprogram_tabledetails_td_content_dl">&nbsp;14</td>
      <td class="studyprogram_tabledetails_td_content_dl">&nbsp;14110004</td>
      <td class="studyprogram_tabledetails_td_content_dl">&nbsp;Lê Gia Trung</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;legiatrung@gmail.com</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;14110004@student.studyfunny.edu.vn</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl"><a href="" target="_blank">Chi tiết</a></td></tr>

      <tr><td class="studyprogram_tabledetails_td_content_dl">&nbsp;15</td>
      <td class="studyprogram_tabledetails_td_content_dl">&nbsp;14110030</td>
      <td class="studyprogram_tabledetails_td_content_dl">&nbsp;Phạm Trung Dũng</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;phamtrungdung@gmail.com</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;14110030@student.studyfunny.edu.vn</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl"><a href="" target="_blank">Chi tiết</a></td></tr>

      <tr><td class="studyprogram_tabledetails_td_content_dl">&nbsp;16</td>
      <td class="studyprogram_tabledetails_td_content_dl">&nbsp;14110176</td>
      <td class="studyprogram_tabledetails_td_content_dl">&nbsp;Lê Nam</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;lenam@gmail.com</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;14110176@student.studyfunny.edu.vn</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl"><a href="" target="_blank">Chi tiết</a></td></tr>
      <tr><td class="studyprogram_tabledetails_td_content_dl">&nbsp;17</td>

      <td class="studyprogram_tabledetails_td_content_dl">&nbsp;14110002</td>
      <td class="studyprogram_tabledetails_td_content_dl">&nbsp;Nguyễn Ngọc Anh</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;nguyenngocanh@gmail.com</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;14110002@student.stydyfunny.edu.vn</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl"><a href="" target="_blank">Chi tiết</a></td></tr>

      <tr><td class="studyprogram_tabledetails_td_content_dl">&nbsp;18</td>
      <td class="studyprogram_tabledetails_td_content_dl">&nbsp;14110003</td>
      <td class="studyprogram_tabledetails_td_content_dl">&nbsp;Nguyễn Quốc Anh</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;nguyenquocanh@gmail.com</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;14110003@student.studyfunny.edu.vn</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl"><a href="" target="_blank">Chi tiết</a></td></tr>

      <tr><td class="studyprogram_tabledetails_td_content_dl">&nbsp;19</td>
      <td class="studyprogram_tabledetails_td_content_dl">&nbsp;14110004</td>
      <td class="studyprogram_tabledetails_td_content_dl">&nbsp;Lê Gia Trung</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;legiatrung@gmail.com</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;14110004@student.studyfunny.edu.vn</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl"><a href="" target="_blank">Chi tiết</a></td></tr>

      <tr><td class="studyprogram_tabledetails_td_content_dl">&nbsp;20</td>
      <td class="studyprogram_tabledetails_td_content_dl">&nbsp;14110030</td>
      <td class="studyprogram_tabledetails_td_content_dl">&nbsp;Phạm Trung Dũng</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;phamtrungdung@gmail.com</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;14110030@student.studyfunny.edu.vn</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl"><a href="" target="_blank">Chi tiết</a></td></tr>

      <tr><td class="studyprogram_tabledetails_td_content_dl">&nbsp;21</td>
      <td class="studyprogram_tabledetails_td_content_dl">&nbsp;14110176</td>
      <td class="studyprogram_tabledetails_td_content_dl">&nbsp;Lê Nam</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;lenam@gmail.com</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;14110176@student.studyfunny.edu.vn</td>
      <td class="studyprogram_tabledetails_td_content_aligncenter_dl"><a href="" target="_blank">Chi tiết</a></td></tr>

      

      </tbody>
      </table>
      </td></tr>
      </tbody>
      </table>
      
                    
        </div>

        <div class="body" id="DSBTRa" style="margin-left:10px">
            <h1 style="color: blue;"><span>Danh sách bài tập cần phải hoàn thành</span></h1>
            <table cellspacing="1" cellpadding="1" width="100%">
              <tbody>
              <tr><td height="4" colspan="4"></td></tr>
              <tr><td><table cellspacing="0" cellpadding="0" width="100%">
                <tbody>

              <tr>
              <td class="studyprogram_tabledetails_td_header_dl" width="30%" style="text-align:center">Topic</td>
              <td class="studyprogram_tabledetails_td_header_dl" width="30%" style="text-align:center">Tên Bài Tập</td>
              <td class="studyprogram_tabledetails_td_header_dl" width="30%" style="text-align:center">Hạn Nộp</td>
              <td class="studyprogram_tabledetails_td_header_dl" width="10%" style="text-align:center">Chi tiết</td></tr>

              <tr>
              <td class="studyprogram_tabledetails_td_content_dl">&nbsp;Chương 3. JQUERY</td>
              <td class="studyprogram_tabledetails_td_content_dl">&nbsp;Các chức năng chứa jquery trong BTL</td>
              <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;1/11/2016, 0:0</td>
              <td class="studyprogram_tabledetails_td_content_aligncenter_dl"><a class="lnk-logout under" href="Course_Lap_Trinh_Web_Bai_Tap_1.jsp" target="_blank">Chi tiết</a></td></tr>

              <td class="studyprogram_tabledetails_td_content_dl">&nbsp;Chương 4. AJAX</td>
              <td class="studyprogram_tabledetails_td_content_dl">&nbsp;Những chức năng có thể dùng được AJAX trong BTL</td>
              <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;7/11/2016, 12:0</td>
              <td class="studyprogram_tabledetails_td_content_aligncenter_dl"><a class="lnk-logout under" href="#"" target="_blank">Chi tiết</a></td></tr>
              </tbody>
              </table>
              </td></tr>
              </tbody>
              </table>
              
        </div>
        <div class="body" id="XemKeHoachHocTap" style="margin-left:10px">
            <h1 style="color: blue;"><span>Kế hoạch học tập</span></h1>
            <table cellspacing="1" cellpadding="1" width="100%">
              <tbody>
              <tr><td height="4" colspan="4"></td></tr>
              <tr><td><table cellspacing="0" cellpadding="0" width="100%">
                <tbody>
              <tr>
              <td class="studyprogram_tabledetails_td_header_dl" width="30%" style="text-align:center">Thời gian</td>
              <td class="studyprogram_tabledetails_td_header_dl" width="30%" style="text-align:center">Đường dẫn</td>
              <td class="studyprogram_tabledetails_td_header_dl" width="30%" style="text-align:center">Mô tả</td>
             </tr>
              <tr>
              <td class="studyprogram_tabledetails_td_content_dl">&nbsp;December 2016</td>
              <td class="studyprogram_tabledetails_td_content_dl"><a href="http://jquery.com/"> &nbsp;http://jquery.com/ </a> </td>
              <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;Đây là phần nội dung kiến thức cơ bản của Jquery</td>
              </tr>
              <tr>
              <td class="studyprogram_tabledetails_td_content_dl">&nbsp;October 2016</td>
              <td class="studyprogram_tabledetails_td_content_dl"> <a href="https://vi.wikipedia.org/wiki/Ajax_(l%E1%BA%ADp_tr%C3%ACnh)"> &nbsp;https://vi.wikipedia.org/wiki/Ajax_(l%E1%BA%ADp_tr%C3%ACnh) </a> </td>
              <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;Đây là phần nội dung kiến thức cơ bản của Jquery</td>
              </tr>
              </tbody>
              </table>
              </td></tr>
              </tbody>
              </table>
              
        </div>
        <div class="body" id="DSBTNop" margin-left:10px>
            <h1 style="color: blue;"><span>Danh sách bài tập đã nộp</span></h1>
            <table cellspacing="1" cellpadding="1" width="100%">
              <tbody>
              <tr><td height="4" colspan="4"></td></tr>
              <tr><td><table cellspacing="0" cellpadding="0" width="100%">
                <tbody>
              <tr>
              <td class="studyprogram_tabledetails_td_header_dl" width="15%" style="text-align:center">Topic</td>
              <td class="studyprogram_tabledetails_td_header_dl" width="25%" style="text-align:center">Tên Bài Tập</td>
              <td class="studyprogram_tabledetails_td_header_dl" width="15%" style="text-align:center">Mã Học Viên</td>
              <td class="studyprogram_tabledetails_td_header_dl" width="20%" style="text-align:center">Tên Học Viên</td>
              <td class="studyprogram_tabledetails_td_header_dl" width="10%" style="text-align:center">Thời Điểm Nộp</td>
              <td class="studyprogram_tabledetails_td_header_dl" width="5%" style="text-align:center">Điểm</td>
              <td class="studyprogram_tabledetails_td_header_dl" width="10%" style="text-align:center">Chi Tiết</td></tr>
              <tr>
              <td class="studyprogram_tabledetails_td_content_dl">&nbsp;Chương 3. JQUERY</td>
              <td class="studyprogram_tabledetails_td_content_dl">&nbsp;Các chức năng chứa jquery trong BTL</td>
              <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;14110002</td>
              <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;Nguyễn Tuấn Anh</td>
              <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;10/10/2016, 9:45</td>
              <td class="studyprogram_tabledetails_td_content_aligncenter_dl"></td>
              <td class="studyprogram_tabledetails_td_content_aligncenter_dl"><a class="under popup-login" rel="#overlay-chitiet-btnop">Chi tiết</a></td></tr>
              <tr>
              <td class="studyprogram_tabledetails_td_content_dl">&nbsp;Chương 3. JQUERY</td>
              <td class="studyprogram_tabledetails_td_content_dl">&nbsp;Các chức năng chứa jquery trong BTL</td>
              <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;14110091</td>
              <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;Nguyễn Văn Khánh</td>
              <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;10/10/2016, 19:26</td>
              <td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;9</td>
              <td class="studyprogram_tabledetails_td_content_aligncenter_dl"><a class="under popup-login" rel="#overlay-chitiet-btnop">Chi tiết</a></td></tr>
              </tbody>
              </table>
              </td></tr>
              </tbody>
              </table>
              
        </div>
    
    <script>
$(document).ready(function(){
$('.lnk-menu-header').click(function() {
    try{
    
        var id_tab = $(this).attr('name');
        if ($(this).hasClass('menu_active')) {
        } else {
            $('.lnk-menu-header').removeClass('menu_active');
            $('.body').hide();
            $(this).addClass('menu_active');
            $('#' + id_tab).fadeIn("slow");
        }
    } catch (err) { }
            
    });    
});
function loadDSBTRa(){
    var id_tab2 = $(this).attr('name');
    $('.lnk-menu-header').removeClass('menu_active');
    $('.body').hide();
    $('#DSBT').addClass('menu_active');
    $('#DSBTRa').fadeIn("slow");  
}
function loadDSBTNop(){
    var id_tab2 = $(this).attr('name');
    $('.lnk-menu-header').removeClass('menu_active');
    $('.body').hide();
    $('#DSBT').addClass('menu_active');
    $('#DSBTNop').fadeIn("slow");  
}
</script>
</div>
    </div>
<div style="width: 392px; position: fixed; z-index: 0; top: 66.2px; left: 478.5px; display: none;" id="overlay-chitiet-hocvien" ><a class="close"></a>
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
            Thông tin chi tiết
        </h3>
        <div class="bp-content">
            <div id="login_pnLogin">
                    <div class="bpc-row">
                        <span class="sp-left">Tên:</span> <span class="sp-right">Nguyễn Tuấn Anh</span>
                    </div>
                    <div class="bpc-row">
                        <span class="sp-left">SĐT:</span> <span class="sp-right">0986127612</span>
                    </div>
                    <div class="bpc-row">
                        <span class="sp-left">Giới tính:</span> <span class="sp-right">Nam</span>
                    </div>
                    <div class="bpc-row">
                        <span class="sp-left">Ngày sinh:</span> <span class="sp-right"> 09/04/1994</span>
                    </div>
                    <div class="bpc-row">
                        <span class="sp-left">Email:</span> <span class="sp-right">nguyentuananh@gmail.com</span>
                    </div>
                    <div class="bpc-row">
                        <span class="sp-left">Ảnh đại diện:</span> <div class="bpt-img-avarta">
                        <img src="http://media.viettelstudy.vn/" alt="" height="48px">
                        
                    </div>
                    </div>
                    <div class="bpc-row">
                        <span class="sp-left">Địa chỉ:</span> <span class="sp-right">TPHCM</span>
                    </div>
                    
                    <div class="bpc-row" style="margin-top: 20px;">
                        <span class="sp-left"></span>
                        <span class="sp-right">
                            <a class="close"><input type="submit" value="Ok" " id="btnforget" class="bpt-lnk-save btn-login" ></a>
                        </span>
                    </div>
            </div>
        </div>
    </div>
</div>

<div style="width: 392px; position: fixed; z-index: 0; top: 66.2px; left: 478.5px; display: none;" id="overlay-chitiet-btnop" ><a class="close"></a>
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
            Thông tin chi tiết
        </h3>
        <div class="bp-content">
            <div id="login_pnLogin">
                    <div class="bpc-row">
                        <span class="sp-left">Topic</span> <span class="sp-right">Chương 3. JQUERY</span>
                    </div>
                    <div class="bpc-row">
                        <span class="sp-left">Tên bài tập</span> <span class="sp-right">Các chức năng chứa jquery trong BTL</span>
                    </div>
                    <div class="bpc-row">
                        <span class="sp-left">File bài tập</span> <span class="sp-right"><a class="under instance-color">jquery.docx</a></span>
                    </div>
                    <div class="bpc-row">
                        <span class="sp-left">Mã học viên:</span> <span class="sp-right">14110002</span>
                    </div>
                    <div class="bpc-row">
                        <span class="sp-left">Tên học viên:</span> <span class="sp-right"> Nguyễn Tuấn Anh</span>
                    </div>
                    <div class="bpc-row">
                        <span class="sp-left">Thời Điểm Nộp:</span> <span class="sp-right">10/10/2016, 9:45 </span>
                    </div>
                    <div class="bpc-row">
                        <span class="sp-left">Điểm:</span> <span class="sp-right">
                            <input name="ctl14$ThongTinHocVien$txtTenDayDu" type="text" value="" maxlength="100" id="ctl14_ThongTinHocVien_txtTenDayDu" class="bpt-txt">
                        </span>
                    </div>
                    <div class="bpc-row">
                        <span class="sp-left">Đánh giá:</span>
                            <textarea class="txt-input" name="txtAddedContent" style="height:80px;width: 200px;" id="txtAddedContent" placeholder="Nội dung"></textarea>
                    </div>
                    
                    <div class="bpc-row" style="margin-top: 20px;">
                        <span class="sp-left"></span>
                        <span class="sp-right">
                            <a class="close"><input type="submit" value="Ok" " id="btnforget" class="bpt-lnk-save btn-login" ></a>
                        </span>
                    </div>
            </div>
        </div>
    </div>
</div>
</div>
        <!--end-body-->
         
<a id="to_top" href="#" style="bottom: 20px; position: fixed; right: 20px; z-index: 9999; display: none;" rel="nofollow">
    <img alt="Go to top!" src="http://viettelstudy.vn/images/gototop.png"></a>
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
                    TokenEmail: "8696A65FE9D1506D9FF55A14CE2C74FF940A0657B505EEE910B35B6514F3CD2939FCE72FB59FD35685CD442A01FFCF21BF75BCC039FF727EF38C9139427F9416"
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


</form>
    
    
<script type="text/javascript">
function EnterKeyPress(id,e) {
  if (window.event) { e = window.event; }
   if (e.keyCode == 13 || e.keyCode == 121) {
     document.getElementById(id).click();
   }
}
</script>

</body></html>