<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" href="css/support_face.css" type="text/css">
<link rel="stylesheet" href="css/home.css" type="text/css">
<link rel="stylesheet" href="css/common.css" type="text/css">
<link rel="stylesheet" href="css/khanh.css" type="text/css">
<title>Bootstrap 101 Template</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="js/jquery-3.1.1.min.js">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"><title>
    Hỗ trợ học trực tuyến
</title>
    
    <link rel="icon" href="http://viettelstudy.vn/images/favicon.ico">
    <link rel="publisher" href="https://plus.google.com/112426293146006228836">
    <
    <link href="http://www.viettelstudy.vn/" rel="canonical">
</head>
<body>
    <form name="form1" method="post" action="/index.html" id="form1">
<div>

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
<div id="header">
    <div id="header-top">
        <a style="color:#00918d;font-size:14px;position:absolute;right:0px;bottom:10px" href="http://viettelstudy.vn/huongdan.aspx">Hướng dẫn</a>
        <a class="header-logo" href="http://viettelstudy.vn/index.html">
      
           </a>           
        <div class="header-login">
             
            <p class="p-login">
                Xin chào: <a href="http://viettelstudy.vn/canhan.html">
                    Thay tên chỗ này</a>
                | <a href="http://viettelstudy.vn/thoat.html">Thoát</a>
            </p>
        </div>
        <div class="study-search">
            <input name="Header1$search_query" type="text" maxlength="100" id="Header1_search_query" class="searchInput has_default_text ssh-input" onkeypress="return clickButton(event,'Header1_btnSearch1')" onfocus="SearchOnFocus(this)" onblur="SearchOnBlur(this)" value="Từ khóa tìm kiếm" autocomplete="off">
                
            <input type="submit" name="Header1$btnSearch1" value="" onclick="checkdata('Header1_btnSearch1');" id="Header1_btnSearch1" class="ssh-btn-search">
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
        <a class="lnk-hm-home menu_active" href="http://viettelstudy.vn/index.html">
        </a>
        <ul class="ul-menu-header">
            <li class="li-menu-header"><a class="lnk-menu-header ">
                HƯỠNG DẪN</a>
            </li>
            <li class="li-menu-header"><a class="lnk-menu-header ">
                DANH SÁCH LỚP HỌC</a>
                <div class="vts-submenu submenu-245">
                    <ul class="submenu1"> 
                         <li><a href="http://viettelstudy.vn/luyen-thi/133/Luyen-thi-THPT-Quoc-gia-mon-Toan-hoc">
                                 Công Nghệ Phần Mềm</a> </li>
                                    <li><a href="http://viettelstudy.vn/luyen-thi/142/Luyen-thi-mon-Toan-danh-rieng-cho-khoi-Xa-hoi">
                                  Lập trình web</a> </li>
                                <li><a href="http://viettelstudy.vn/luyen-thi/127/Luyen-thi-THPT-Quoc-gia-mon-Vat-Ly">
                                  Hệ quản trị cơ sở dữ liệu </a> </li>
                                <li><a href="http://viettelstudy.vn/luyen-thi/128/Luyen-thi-THPT-Quoc-gia-mon-Hoa-Hoc">
                                  Điện tử căn bản </a> </li>
                                <li><a href="http://viettelstudy.vn/luyen-thi/158/Luyen-thi-THPT-Quoc-gia-mon-Sinh">
                                    Thực tập điện tử căn bản</a> </li>
                                <li><a href="http://viettelstudy.vn/luyen-thi/126/Luyen-thi-mon-Van-danh-rieng-cho-khoi-Tu-nhien">
                                    Lập trình WinDow From </a> </li>
                    </ul>
                </div>
            </li>  
             
            <li class="li-menu-header"><a class="lnk-menu-header ">
                THƯ VIỆN </a>
                <div class="vts-submenu">
                    <ul class="submenu1">
                        <li><a href="http://viettelstudy.vn/trac-nghiem.html">Trắc nghiệm <span class="arrow"></span></a>
                            <!-- Courses in category -->
                            <ul class="submenu2">
                                <li><a href="http://viettelstudy.vn/trac-nghiem-IQ.html">Trắc nghiệm IQ</a>
                                </li>
                                <li><a href="http://viettelstudy.vn/trac-nghiem-EQ.html">Trắc nghiệm EQ</a>
                                </li>
                                <li><a href="http://viettelstudy.vn/trac-nghiem-tinh-cach-mbti.html">Trắc nghiệm tính cách MBTI</a>
                                </li>
                                <li><a href="http://viettelstudy.vn/trac-nghiem-dhnn.html">Trắc nghiệm định hướng nghề nghiệp</a>
                                </li>
                                <li><a href="http://viettelstudy.vn/trac-nghiem-tri-thong-minh.html"> Trắc nghiệm 8 loại trí thông minh</a>
                                </li>
                            </ul>
                        </li>
                        <li><a href="http://viettelstudy.vn/thu-vien-video.html">Thư viện video
                            <span class="arrow"></span></a>
                            <!-- Courses in category -->
                            <ul class="submenu2">
                                <li><a href="http://viettelstudy.vn/thu-vien-video/tu-van-vi-tuong-lai-i23.html">
                                    Tư vấn Vì tương lai</a></li>
                                <li><a href="http://viettelstudy.vn/thu-vien-video/toa-dam-ban-linh-tre-i5.html">
                                    Tọa đàm bản lĩnh trẻ</a></li>
                                <li><a href="http://viettelstudy.vn/thu-vien-video/kinh-nghiem-song-i1.html">
                                    Thư viện cuộc sống</a> </li>
                                    <li><a href="http://viettelstudy.vn/thu-vien-video/kham-pha-viet-nam-i30.html">
                                   Khám phá Việt Nam</a> </li>
                                   <li><a href="http://viettelstudy.vn/thu-vien-video/kham-pha-the-gioi-i31.html">
                                   Khám phá thế giới</a> </li>
                                <li><a href="http://viettelstudy.vn/thu-vien-video/sang-tao-i8.html">Sáng
                                    tạo</a> </li>
                                
                            </ul>
                        </li>
                        <li><a href="http://viettelstudy.vn/khoa-hoc-thuong-thuc.html">Bài tập - Bài giải<span class="arrow"></span></a>
                            <!-- Courses in category -->
                            <ul class="submenu2">
                                <li><a href="http://viettelstudy.vn/thu-vien-video/the-gioi-dong-vat-i10.html">
                                    Công nghệ thông tin </a></li>
                                <li><a href="http://viettelstudy.vn/thu-vien-video/thien-van-i11.html">Thiên
                                    Điện tử </a></li>
                                <li><a href="http://viettelstudy.vn/thu-vien-video/danh-lam-thang-canh-i12.html">
                                    Tiếng Anh </a></li>
                                <li><a href="http://viettelstudy.vn/thu-vien-video/the-gioi-thuc-vat-i13.html">
                                    Chế tạo máy </a></li>
                                <li><a href="http://viettelstudy.vn/thu-vien-video/sinh-thai-hoc-i14.html">
                                    Công mghệ may và thời trang </a></li>
                            </ul>
                        </li>          
                            <!-- Courses in category -->
                        </li>
                    </ul>
                </div>
            </li>
    
    </ul>
</div>
</div>

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




<!--phan body-->

<!--<div  style  class="content col-md-9 col-sm-9 col-xs-12">

        <div  style  class="content col-md-2 col-sm-9 col-xs-12">
        </div>


        <div  style  class="btn-group-vertical" type= "color:red"> 
            <a  style  href="lienhe.html" class="btn btn-primary btn-lg active" role="button" aria-disabled="true">Giới thiệu</a>
             <a href="hocvien.html" class= role="button" aria-disabled="true">Đăng kí học</a>
             <a href="hocvien.html" class="btn btn-primary btn-lg active" role="button" aria-disabled="true">Đăng kí giảng viên</a>
             <a href="hocvien.html" class="btn btn-primary btn-lg active" role="button" aria-disabled="true">Thắc mắc</a>
             <a href="hocvien.html" class="btn btn-primary btn-lg active" role="button" aria-disabled="true">Sử dụng tài liệu</a>
             <a href="hocvien.html" class="btn btn-primary btn-lg active" role="button" aria-disabled="true">Đăng kí/Đăng nhập</a>
             <a href="lienhe.html" class="btn btn-primary btn-lg active" role="button" aria-disabled="true">Liên hệ</a>

      </div>

 </div>
 <div id="header-menu1" style="background: rgb(20, 183, 178);">
        <a class="lnk-hm-home menu_active" href="http://viettelstudy.vn/index.html">
        </a>
        <ul class="ul-menu-header">
            <li class="li-menu-header"><a class="lnk-menu-header ">
                HƯỠNG DẪN</a>
            </li>
       </ul>
</div>
-->
 <style>
.list-group-item.active1, .list-group-item.active1:focus, .list-group-item.active1:hover {
    z-index: 2;
    color: #fff;
    background-color: rgb(0,183,178);
    border-color: #9AFE2E;
}
</style>

<div id="wrapper">
    <div class="container">
      <div class="row">
        <div id="left-content"><!-- Menu desktop -->
          <div class="col-md-3"> 
            <div id="desktop-menu">
              <div class="panel panel-default"><h4 id="mobile_home">Hướng dẫn sử dụng</h4>
                <div>
                    <a href="HuongDanSuDung.html" class="list-group-item " ><span class="k1" ><i class="icon-chevron-right"></i></span >Giới thiệu</a>
                     <a href="ThacMac.html" class="list-group-item "><span class="pull-right"><u class="icon-chevron-right">
                     </i></span>Thắc mắc</a>
                     <a href="SuDungTaiLieu.html" class="list-group-item "><span class="pull-right"><i class="icon-chevron-right"></i></span>Sử dụng tài liệu</a>
                      <a href="LienHe.html" class="list-group-item active1"><span class="pull-right"><i class="icon-chevron-right"></i></span>Liên hệ</a>    
                </div>
              </div><!-- /panel-default -->
            </div><!--desktop menu-->
          </div><!--colmd 3-->
        </div><!--end Menu desktop -->

        <!--Khung hiển thị chính-->
          <div class="col-md-9">
            
            <!--end hot new-->

            <div class="panel panel-default">
                <div  style="color: rgb(7, 132, 163);" class="panel-heading">
                    <h4 style="font-family: verdana;color:rgb(87,87,87);">Liên hệ với chúng tôi</h4>
                </div>
                        <div class="panel-body"><!--Các bản tin-->
                            <ul class="list-unstyled" > 
                              
                                  <li class="article-area" style= "color:rgb(0,183,178);"">
                                      <p><h4>
                                      <!--span  class="btn btn-primary btn-sm" style="background-color:rgb(0,183,178);">09/09/2016 - 18:16</span-->
                                      Hottline:0969696969.</h4> </p>
                                     <p><h4>Email:Donkihote2305@gmail.com</h4></p>
                                      <p> <h4> Facebook:Facebook.com/atun.1865</h4> </p> 
                                     
                                  </li><a href="../thong-bao-1.html">
                              </a>
            
                              <a href="#">
                                  <li class="article-area">
                                      <p style="color:rgb(0,183,178);">
                                      <span class="btn btn-success btn-sm">Trở về trang chủ</span>                                     
                                      </p>
                                  </li>
                              </a>
                            </ul>
                        </div><!--end bản tin-->
            </div>      

          </div><!--Khung hiển thị chính-->
      </div><!---end row-->

    </div><!---end container-->
  </div>

  <div class="container">
    <div id="footer">
      <hr />
        <h5 class="text-center text-danger">Khoa Công nghệ Thông tin - Đại học Sư phạm Kỹ thuật TP. Hồ Chí Minh</h5>
        <h5 class="text-center text-danger">Số 1, Võ Văn Ngân, Thủ Đức, TP. Hồ Chí Minh</h5>
    </div>
  </div>

<!--Ket thúc phần body-->
        







        <!--end-header-->
        <div id="body">
</div>


        </div>
        <!--end-body-->
         
<a id="to_top" href="#" style="display: none; bottom: 20px; position: fixed; right: 20px;
    z-index: 9999;" rel="nofollow">
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
  <span class="title">          </span>
  <span class="font-des">Đăng ký để nhận tài liệu và khóa học bổ ích từ StudyFunny.vn</span>
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
        <a class="logo-gd-footer" href="http://viettelstudy.vn/index.html"></a>
        <p style="color: #FFFFFF; float: left; font-size: 11px; line-height: 16px; margin-left: 20px;
            margin-top: 4px; text-align: center; width: 640px">
            UTE Portal :: HCMC University of Technology and Education
                   
        </p>
        <a class="logo_viettel" rel="nofollow"></a>
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




</form>


</body></html>