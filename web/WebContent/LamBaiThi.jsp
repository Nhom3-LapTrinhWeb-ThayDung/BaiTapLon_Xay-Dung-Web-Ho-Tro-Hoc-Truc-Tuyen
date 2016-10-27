<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head><link rel="stylesheet" href="css/coder_update.css" type="text/css"></link>
<link rel="stylesheet" href="css/multiChoice.css" type="text/css"></link>
<link rel="stylesheet" href="css/common.css" type="text/css"></link>
<link rel="stylesheet" href="css/reset.css" type="text/css"></link>
<link rel="stylesheet" href="css/support_face.css" type="text/css">
<link rel="stylesheet" href="css/home.css" type="text/css">

<title>
	BÀI TEST IQ SỐ 1 - ViettelStudy
</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<body > 	
  <style type="text/css">
        .p-login .infor-forget{top:55px;}
         .p-login .lnk-user .infor-forget{display:none;}
        .p-login .lnk-user:hover .infor-forget{display:block;}
        .p-login .lnk-user{padding-bottom:3px;}
  </style>
<div id="header">
    <div id="header-top">
		<a style="color:#00918d;font-size:14px;position:absolute;right:0px;bottom:10px" href="HuongDanSuDung.jsp">Hướng dẫn
        </a>
        <a class="header-logo" href="index.jsp">
        </a>           
        <div class="header-login">
            <p class="p-login">
                    
                    &nbsp;|&nbsp;<a class="lnk-logout under popup-login" rel="#overlay-login">Đăng nhập</a>
            </p>            
        </div>
        <div class="study-search">
            <input name="Header$search_query" type="text" maxlength="100" id="Header_search_query" class="searchInput has_default_text ssh-input" onkeypress="return clickButton(event,'Header_btnSearch1')" onfocus="SearchOnFocus(this)" onblur="SearchOnBlur(this)" value="Từ khóa tìm kiếm" autocomplete="off" />
                
            <input type="submit" name="Header$btnSearch1" value="" onclick="checkdata('Header_btnSearch1');" id="Header_btnSearch1" class="ssh-btn-search" />
        </div>
    </div>
    <div id="header-menu">
        <a class="lnk-hm-home menu_active" href="index.jsp">
        </a>
        <ul class="ul-menu-header">
        <li class="li-menu-header"><a class="lnk-menu-header ">
                TRANG CHỦ </a>  
            </li>
            <li class="li-menu-header"><a class="lnk-menu-header ">
                HƯỚNG DẪN SỬ DỤNG </a>  
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
                        <li><a href="#">Trắc nghiệm <span class="arrow"></span></a>
                            <!-- Courses in category -->
                            <ul class="submenu2">
                                <li><a href="#">Trắc nghiệm IQ</a>
                                </li>
                                <li><a href="#">Trắc nghiệm EQ</a>
                                </li>
                                <li><a href="#">Trắc nghiệm tính cách MBTI</a>
                                </li>
                                <li><a href="#">Trắc nghiệm định hướng nghề nghiệp</a>
                                </li>
                                <li><a href="#"> Trắc nghiệm 8 loại trí thông minh</a>
                                </li>
                            </ul>
                        </li>
                        <li><a href="#">Thư viện video
                            <span class="arrow"></span></a>
                            <!-- Courses in category -->
                            <ul class="submenu2">
                                <li><a href="#">
                                    Tư vấn Vì tương lai</a></li>
                                <li><a href="#">
                                    Tọa đàm bản lĩnh trẻ</a></li>
                                <li><a href="#">
                                    Thư viện cuộc sống</a> </li>
                                    <li><a href="#">
                                   Khám phá Việt Nam</a> </li>
                                   <li><a href="#">
                                   Khám phá thế giới</a> </li>
                                <li><a href="#">Sáng tạo</a> </li>
                                
                            </ul>
                        </li>
                        <li><a href="#">Bài tập - Bài giải<span class="arrow"></span></a>
                            <!-- Courses in category -->
                            <ul class="submenu2">
                                <li><a href="#">
                                    Công nghệ thông tin </a></li>
                                <li><a href="#">Thiên
                                    Điện tử </a></li>
                                <li><a href="#">
                                    Tiếng Anh </a></li>
                                <li><a href="#">
                                    Chế tạo máy </a></li>
                                <li><a href="#">
                                    Công mghệ may và thời trang </a></li>
                            </ul>
                          </li>          
                            <!-- Courses in category -->
                        </li>
                    </ul>
                </div>
            </li>
                 
           
           <!--het phan body-->
    
    </ul>
</div>
</div>


        <!--end-header-->
        <div id="body">
        <!--Alert-->
<div class="box-multiChoice">
        	
            <div class="start-test">
                <h3 class="stt-h3">
                     XÁC NHẬN LÀM BÀI THI
                </h3>

            	<div class="tt-left martop_0">
                        <p class="ttl-p1 bold">
                        	
                        	BÀI TEST IQ SỐ 1
                        </p>
                        <p class="ttl-p2 bold">
                            
                        </p>
                         <p class="ttl-p3">
                         	
                        </p>
                </div>
                <div class="tt-left tt-right martop_0">
                    <p class="ttl-p1 bold">
                    	Thời gian: 28 phút
                    </p>
                     <p class="ttl-p2 bold"></p>
                     <p class="ttl-p3"></p>
                </div>
                <div id="ctl14_pnStart">
                    <div style="text-align:center;">
                        <span id="ctl14_lblErr"></span>
                    </div>
                <div class="tt-start">
                    <a id="ctl14_btnstart" class="tt-tart-lnk" href="BaiTestSo1.jsp">
                        Bắt đầu làm bài
                    </a>  
               </div>    
              </div>
  </div>
    <!--end-start-test-->

</div>      
        </div>
        
        <!--end-body-->
		<div id="footer"> 
		            <div class="footer-menu-new">
		  <span class="font-des">Đăng ký để nhận tài liệu bổ ích từ StudyFunny</span>
		  <span style="float: right; line-height: 39px;">
		  <input type="email" name="femail" id='femail' style=" background: #d4e7e3 none repeat scroll 0 0;
		    border: 1px solid #d4e7e3;
		    border-radius: 5px;
		    height: 25px;
		    margin-right: 16px;
		     padding: 1px 10px;
		    width: 260px;">
		  <input type="button" id="btnRegisterRevMail" value="ĐĂNG KÝ" style="height: 26px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 1px solid rgb(255, 255, 255); color: rgb(20, 146, 142); font-weight: bold; font-size: 12px; border-radius: 5px; width: 82px;">
	  	</span>
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
    <!--end-wrapper-->
</form>
</body>
</html>

