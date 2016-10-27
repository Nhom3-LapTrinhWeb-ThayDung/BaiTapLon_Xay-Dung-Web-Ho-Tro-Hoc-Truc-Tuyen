<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html >
<head>
	<link rel="stylesheet" href="public/css/coder_update.css" type="text/css">
	<link rel="stylesheet" href="css/multiChoice.css" type="text/css">
	<link rel="stylesheet" href="css/coder_update.css" type="text/css">
	<link rel="stylesheet" href="css/support_face.css" type="text/css">
	<link rel="stylesheet" href="css/home.css" type="text/css">
	<link rel="stylesheet" href="css/common.css" type="text/css">
<title>
    BÀI TEST IQ SỐ 1
</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.bxSlider.min.js"></script>
	<script type="text/javascript" src="js/overlay2.js"></script>
	<script type="text/javascript" src="js/home.js"></script>
	<script type="text/javascript" src="js/time_olympic.js"></script>
</head>

<body>
    <form name="form1" method="post" action="NopBai.jsp" id="form1">
    
  <style type="text/css">
        .p-login .infor-forget{top:55px;}
         .p-login .lnk-user .infor-forget{display:none;}
        .p-login .lnk-user:hover .infor-forget{display:block;}
        .p-login .lnk-user{padding-bottom:3px;}
  </style>
  
<div id="header">
    <div id="header-top">
        <a style="color:#00918d;font-size:14px;position:absolute;right:0px;bottom:10px" href="huongdansudung.jsp">Hướng dẫn</a>
        <a class="header-logo" href="index.jsp"></a>           
        <div class="header-login">
            <p class="p-login">
                <a class="lnk-user under">Đăng ký</a>
                <a class="lnk-logout under popup-login" rel="#overlay-login">Đăng nhập</a>
            </p>
        </div>
        <div class="study-search">
            <input name="Header$search_query" type="text" maxlength="100" id="Header_search_query" class="searchInput has_default_text ssh-input" onkeypress="return clickButton(event,'Header_btnSearch1')" onfocus="SearchOnFocus(this)" onblur="SearchOnBlur(this)" value="Từ khóa tìm kiếm" autocomplete="off" />  
            <input type="submit" name="Header$btnSearch1" value="" onclick="checkdata('Header_btnSearch1');" id="Header_btnSearch1" class="ssh-btn-search" />
        </div>
        <div style="display: none;" id="suggestions" class="suggestion"></div>
        </div>
    <div id="header-menu">
        <a class="lnk-hm-home menu_active" href="index.jsp">
        </a>
        <ul class="ul-menu-header">
        <li class="li-menu-header">
		            <a  class="lnk-menu-header">
		               TRANG CHỦ </a>
	            </li>
             <li class="li-menu-header">
                 <a class="lnk-menu-header "> HƯỚNG DẪN SỬ DỤNG </a>  
            </li>        
            <li class="li-menu-header"><a class="lnk-menu-header ">
                DANH SÁCH LỚP HỌC</a>
                <div class="vts-submenu submenu-245">
                    <ul class="submenu1"> 
                         <li><a href="#">
                                 Công Nghệ Phần Mềm</a> </li>
                                    <li><a href="#">
                                  Lập trình web</a> </li>
                                <li><a href="#">
                                  Hệ quản trị cơ sở dữ liệu </a> </li>
                                <li><a href="#">
                                  Điện tử căn bản </a> </li>
                                <li><a href="#">
                                    Thực tập điện tử căn bản</a> </li>
                                <li><a href="#">
                                    Lập trình WinDow From </a> </li>
                    </ul>
                </div>
            </li> 
             <li class="li-menu-header"><a class="lnk-menu-header ">THƯ VIỆN </a>
                <div class="vts-submenu">
                    <ul class="submenu1">
                        <li><a href="LamBaiThi.jsp">Trắc nghiệm <span class="arrow"></span></a>
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
                                <li><a href="#">Sáng
                                    tạo</a> </li>
                                
                            </ul>
                        </li>
                        <li><a href="#">Bài tập - Bài giải<span class="arrow"></span></a>
                            <!-- Courses in category -->
                            <ul class="submenu2">
                                <li><a href="#">
                                    Công nghệ thông tin </a></li>
                                <li><a href="#">
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
         </ul>
        </div>
      </div>
        <!--end-header-->
        <div id="body">
		<div class="box-multiChoice">
    	<h2 class="bm-title">
        BÀI TEST IQ </h2>
    	<div class="question">
        <h3 class="h3q-title">
            ĐỀ BÀI
        </h3>
        <div class="question-list" id="baithi">  
        <div class="ql-row">
                        <div class="stt-left">       
                        <span class='sttl-sp'>1</span>
                        </div>
        			 <div class="ct-right">
                            <div class="ctr-recommend">
                                Trong một gia đình có sáu thành viên A, B, C, D, E và F. A và B là một cặp vợ chồng, A là thành viên nam. D là con trai duy nhất của C. C là anh trai của A. E là em gái của D. B là con dâu của F. F có chồng đã chết.
                                 Có bao nhiêu thành viên nam trong gia đình? (Câu hỏi có 1 phương án đúng)                              
                            </div>
             				<div class="ctr-choice" style=''>
                            <span class="sp-choice"> Chọn <b>1</b> câu trả lời đúng</span>    
                 			<table id="ctl15_rptCauHoi_ctl00_rbtnList" class="input" border="0">
	                       		 <tr>
		                              <td>
			                            <span class="rd"><input id="ctl15_rptCauHoi_ctl00_rbtnList_0" type="radio"/>
			                            <label for="ctl15_rptCauHoi_ctl00_rbtnList_0">A: 3</label></span>
		                             </td>
	                        	</tr>
	                        	<tr>
		                             <td>
		                            	<span class="rd"><input id="ctl15_rptCauHoi_ctl00_rbtnList_1" type="radio" />
		                            	<label for="ctl15_rptCauHoi_ctl00_rbtnList_1">B: 2</label></span>
		                            </td>
	                           </tr>
	                           <tr>
		                            <td>
			                            <span class="rd"><input id="ctl15_rptCauHoi_ctl00_rbtnList_2" type="radio"/>
			                            <label for="ctl15_rptCauHoi_ctl00_rbtnList_2">C: 4</label></span>
		                            </td>
	                          </tr>
	                          <tr>
		                            <td>
			                            <span class="rd"><input id="ctl15_rptCauHoi_ctl00_rbtnList_3" type="radio"/>
			                            <label for="ctl15_rptCauHoi_ctl00_rbtnList_3">D: 5</label></span>
		                            </td>
	                         </tr>
                 		</table>       
             		</div>
             </div>
        </div>
                
                    
                
                    <!-- hết câu 1-->
                
       <div class="ql-row">
            <div class="stt-left">
              <span class='sttl-sp'>2</span></div>
                        <div class="ct-right">
                            <div class="ctr-recommend">
                                Cho dãy số: 5,2 - 4,8 - 4,4 - 4 - ...Số nào sẽ là số tiếp theo trong dãy số trên? (Câu hỏi có 1 phương án đúng)</div>
                            <div class="ctr-choice" style=''>
                                <span class="sp-choice">
                                    Chọn <b>1</b> câu trả lời đúng</span>
                                <table id="ctl15_rptCauHoi_ctl03_rbtnList" class="input" border="0">
								    <tr>
								        <td><span class="rd"><input id="ctl15_rptCauHoi_ctl03_rbtnList_0" type="radio" />
								        <label for="ctl15_rptCauHoi_ctl03_rbtnList_0">A: 3.6</label></span></td>
								    </tr>
								    <tr>
								        <td><span class="rd"><input id="ctl15_rptCauHoi_ctl03_rbtnList_1" type="radio" />
								        <label for="ctl15_rptCauHoi_ctl03_rbtnList_1">B: 3.5</label></span></td>
								    </tr>
								    <tr>
								        <td><span class="rd"><input id="ctl15_rptCauHoi_ctl03_rbtnList_2" type="radio"/>
								        <label for="ctl15_rptCauHoi_ctl03_rbtnList_2">C: 3.3</label></span></td>
								    </tr>
								    <tr>
								        <td><span class="rd"><input id="ctl15_rptCauHoi_ctl03_rbtnList_3" type="radio"/>
								        <label for="ctl15_rptCauHoi_ctl03_rbtnList_3">D: 3</label></span></td>
								    </tr>
							</table>   
                            </div>
                        </div>
                    </div>
                
                    
                <!--hết câu 2-->
                <div class="ql-row">
                   <div class="stt-left"> 
                       <span class='sttl-sp'>3</span>
                   </div>
                        <div class="ct-right">
                            <div class="ctr-recommend">
                                Đến cuối bữa tiệc tất cả 8 người tham gia bữa tiệc sẽ bắt tay những người còn lại một lần. Vậy tổng số sẽ có bao nhiêu cái bắt tay? (Câu hỏi có 1 phương án đúng)
                            </div>
                            <div class="ctr-choice" style=''>
                                <span class="sp-choice">
                                    Chọn <b>1</b> câu trả lời đúng</span>
                                <table id="ctl15_rptCauHoi_ctl10_rbtnList" class="input" border="0">
								    <tr>
								        <td><span class="rd"><input id="ctl15_rptCauHoi_ctl10_rbtnList_0" type="radio"/>
								        <label for="ctl15_rptCauHoi_ctl10_rbtnList_0">A: 64</label></span></td>
								    </tr>
								    <tr>
								        <td><span class="rd"><input id="ctl15_rptCauHoi_ctl10_rbtnList_1" type="radio"/>
								        <label for="ctl15_rptCauHoi_ctl10_rbtnList_1">B: 28</label></span></td>
								    </tr>
								    <tr>
								        <td><span class="rd"><input id="ctl15_rptCauHoi_ctl10_rbtnList_2" type="radio"/>
								        <label for="ctl15_rptCauHoi_ctl10_rbtnList_2">C: 8</label></span></td>
								    </tr>
								    <tr>
								        <td><span class="rd"><input id="ctl15_rptCauHoi_ctl10_rbtnList_3" type="radio"/>
								        <label for="ctl15_rptCauHoi_ctl10_rbtnList_3">D: 16</label></span></td>
								    </tr>
								</table>
                            </div>
                        </div>
                    </div>
                    
                    <!--Hết câu 3-->
                
                 <div class="ql-row">
                      <div class="stt-left">
                         <span class='sttl-sp'>4</span>
                      </div>
                      <div class="ct-right">
                           <div class="ctr-recommend">
                                Cho dãy số:2 8 18 32 50 ? Số nào có thể thay vào chỗ có dấu hỏi chấm? (Câu hỏi có 1 phương án đúng)
                            </div>
                            <div class="ctr-choice" style=''>
                                <span class="sp-choice">
                                    Chọn <b>1</b> câu trả lời đúng</span>
                                
                                <table id="ctl15_rptCauHoi_ctl12_rbtnList" class="input" border="0">
								    <tr>
								        <td><span class="rd"><input id="ctl15_rptCauHoi_ctl12_rbtnList_0" type="radio"/>
								        <label for="ctl15_rptCauHoi_ctl12_rbtnList_0">A: 70</label></span></td>
								    </tr>
								    <tr>
								        <td><span class="rd"><input id="ctl15_rptCauHoi_ctl12_rbtnList_1" type="radio" />
								        <label for="ctl15_rptCauHoi_ctl12_rbtnList_1">B: 64</label></span></td>
								    </tr>
								    <tr>
								        <td><span class="rd"><input id="ctl15_rptCauHoi_ctl12_rbtnList_2" type="radio"/>
								        <label for="ctl15_rptCauHoi_ctl12_rbtnList_2">C: 72</label></span></td>
								    </tr>
								    <tr>
								        <td><span class="rd"><input id="ctl15_rptCauHoi_ctl12_rbtnList_3" type="radio"/>
								        <label for="ctl15_rptCauHoi_ctl12_rbtnList_3">D: 60</label></span></td>
								    </tr>
								</table>
                            </div>
                        </div>
                    </div> 
                    <!--hết câu 4-->

                   <div class="ql-row">
                       <div class="stt-left"> 
                            <span class='sttl-sp'>5</span>
                        </div>
                        <div class="ct-right">
                            <div class="ctr-recommend">
                                Tuấn 12 tuổi và có số tuổi bằng 3 lần em mình.Hỏi lúc Tuấn có số tuổi gấp 2 lần số tuổi em mình thì Tuấn bao nhiêu tuổi? 
                            </div>
                        <div class="ctr-choice" style=''>
                                <span class="sp-choice">
                                    Chọn <b>1</b> câu trả lời đúng</span>
                                <table id="ctl15_rptCauHoi_ctl16_rbtnList" class="input" border="0">
								    <tr>
								        <td><span class="rd"><input id="ctl15_rptCauHoi_ctl16_rbtnList_0" type="radio"/>
								        <label for="ctl15_rptCauHoi_ctl16_rbtnList_0">A: 16 tuổi</label></span></td>
								    </tr>
								    <tr>
								        <td><span class="rd"><input id="ctl15_rptCauHoi_ctl16_rbtnList_1" type="radio"/>
								        <label for="ctl15_rptCauHoi_ctl16_rbtnList_1">B: 22 tuổi</label></span></td>
								    </tr>
								    <tr>
								        <td><span class="rd"><input id="ctl15_rptCauHoi_ctl16_rbtnList_2" type="radio"/>
								        <label for="ctl15_rptCauHoi_ctl16_rbtnList_2">C: 18 tuổi</label></span></td>
								    </tr>
								    <tr>
								        <td><span class="rd"><input id="ctl15_rptCauHoi_ctl16_rbtnList_3" type="radio"/>
								        <label for="ctl15_rptCauHoi_ctl16_rbtnList_3">D: 20 tuổi</label></span></td>
								    </tr>
								</table> 
                            </div>
                        </div>
                    </div>
                <!--Hết câu 5-->
                 <div class="ql-row">
                     <div class="stt-left"> 
                         <span class='sttl-sp'>6</span>
                     </div>
                     <div class="ct-right">
                          <div class="ctr-recommend">
                                Hai người ban đầu cùng đứng một chỗ, sau đó đi về hai hướng ngược nhau. Cả hai người đi bộ 6 dặm, sau đó rẽ phải và đi tiếp 8 dặm nữa. Hòi bây giờ họ cách điểm xuất phát bao xa? (Câu hỏi có 1 phương án đúng)
                          </div>
                          <div class="ctr-choice" style=''>
                               <span class="sp-choice">Chọn <b>1</b> câu trả lời đúng</span>
                                <table id="ctl15_rptCauHoi_ctl17_rbtnList" class="input" border="0">
								    <tr>
								        <td><span class="rd"><input id="ctl15_rptCauHoi_ctl17_rbtnList_0" type="radio"/>
								        <label for="ctl15_rptCauHoi_ctl17_rbtnList_0">A: 6 dặm và 6 dặm</label></span></td>
								    </tr>
								    <tr>
								        <td><span class="rd"><input id="ctl15_rptCauHoi_ctl17_rbtnList_1" type="radio"/>
								        <label for="ctl15_rptCauHoi_ctl17_rbtnList_1">B: 14 dặm và 14 dặm</label></span></td>
								    </tr>
								    <tr>
								        <td><span class="rd"><input id="ctl15_rptCauHoi_ctl17_rbtnList_2" type="radio"/>
								        <label for="ctl15_rptCauHoi_ctl17_rbtnList_2">C: 10 dặm và 10 dặm</label></span></td>
								    </tr>
								    <tr>
								        <td><span class="rd"><input id="ctl15_rptCauHoi_ctl17_rbtnList_3" type="radio"/>
								        <label for="ctl15_rptCauHoi_ctl17_rbtnList_3">D: 5 dặm và 5 dặm</label></span></td>
								    </tr>
								</table>
                            </div>
                        </div>
                    </div>
                <!--Hết câu 6--> 
                   <div class="ql-row">
                       <div class="stt-left">
                            <span class='sttl-sp'>7</span>
                        </div>
                        <div class="ct-right">
                            <div class="ctr-recommend">
                                 Casey, Stuart, Ritchie, Billie và Colin đều có bàn học riêng ở trường. Casey và Colin có máy vi tính trên bàn, trong khi những người khác có máy tính. Ritchie và Casey có một sổ tay giống như một bảng hướng dẫn. Những người khác chỉ có bảng hướng dẫn. Bàn của Casey và Billie làm bằng gỗ. Bàn của những người khác làm bằng kim loại. Vậy ai là người có 1 chiếc máy vi tính trên bàn gỗ? (Câu hỏi có 1 phương án đúng) 
                            </div>
                            <div class="ctr-choice" style=''>
                                <span class="sp-choice">
                                    Chọn <b>1</b> câu trả lời đúng</span>
                                
                                <table id="ctl15_rptCauHoi_ctl19_rbtnList" class="input" border="0">
								    <tr>
								        <td><span class="rd"><input id="ctl15_rptCauHoi_ctl19_rbtnList_0" type="radio"/>
								        <label for="ctl15_rptCauHoi_ctl19_rbtnList_0">A: Casey</label></span></td>
								    </tr>
								    <tr>
								        <td><span class="rd"><input id="ctl15_rptCauHoi_ctl19_rbtnList_1" type="radio"/>
								        <label for="ctl15_rptCauHoi_ctl19_rbtnList_1">B: Stuart</label></span></td>
								    </tr>
								    <tr>
								        <td><span class="rd"><input id="ctl15_rptCauHoi_ctl19_rbtnList_2" type="radio"/>
								        <label for="ctl15_rptCauHoi_ctl19_rbtnList_2">C: Ritchie</label></span></td>
								    </tr>
								    <tr>
								        <td><span class="rd"><input id="ctl15_rptCauHoi_ctl19_rbtnList_3" type="radio"/>
								        <label for="ctl15_rptCauHoi_ctl19_rbtnList_3">D: Billie</label></span></td>
								    </tr>
								</table> 
                            </div>
                        </div>
                    </div>
                <!--Hêt câu 7-->
                <div class="ql-row">
                     <div class="stt-left">
                         <span class='sttl-sp'>8</span>
                     </div>
                     <div class="ct-right">
                          <div class="ctr-recommend">
                                Trước nửa đêm là bao nhiêu phút nếu trước đó 32 phút thời gian này gấp 3 lần số phút sau 22 giờ?
                         </div>
                         <div class="ctr-choice" style=''>
                         <span class="sp-choice">Chọn <b>1</b> câu trả lời đúng</span>
                         <table id="ctl15_rptCauHoi_ctl26_rbtnList" class="input" border="0">
						    <tr>
						        <td><span class="rd"><input id="ctl15_rptCauHoi_ctl26_rbtnList_0" type="radio"/>
						        <label for="ctl15_rptCauHoi_ctl26_rbtnList_0">A: 24 phút</label></span></td>
						    </tr><tr>
						        <td><span class="rd"><input id="ctl15_rptCauHoi_ctl26_rbtnList_1" type="radio"/>
						        <label for="ctl15_rptCauHoi_ctl26_rbtnList_1">B: 22 phút</label></span></td>
						    </tr><tr>
						        <td><span class="rd"><input id="ctl15_rptCauHoi_ctl26_rbtnList_2" type="radio"/>
						        <label for="ctl15_rptCauHoi_ctl26_rbtnList_2">C: 20 phút</label></span></td>
						    </tr><tr>
						        <td><span class="rd"><input id="ctl15_rptCauHoi_ctl26_rbtnList_3" type="radio"/>
						        <label for="ctl15_rptCauHoi_ctl26_rbtnList_3">D: 18 phút</label></span></td>
						    </tr>
						</table>    
                       </div>
                     </div>
                    </div>
                <!--Hết câu 8-->
                <div class="ql-row">
                    <div class="stt-left">
                        <span class='sttl-sp'>9</span>
                    </div>
                    <div class="ct-right">
                          <div class="ctr-recommend"> Cho dãy số:0 3 7 12 18 ? Số nào có thể thay vào chỗ có dấu hỏi chấm? (Câu hỏi có 1 phương án đúng) 
                          </div>
                            <div class="ctr-choice" style=''>
                            <span class="sp-choice"> Chọn <b>1</b> câu trả lời đúng</span>
                            <table id="ctl15_rptCauHoi_ctl27_rbtnList" class="input" border="0">
							    <tr>
							        <td><span class="rd"><input id="ctl15_rptCauHoi_ctl27_rbtnList_0" type="radio"/>
							        <label for="ctl15_rptCauHoi_ctl27_rbtnList_0">A: 34</label></span></td>
							    </tr>
							    <tr>
							        <td><span class="rd"><input id="ctl15_rptCauHoi_ctl27_rbtnList_1" type="radio" />
							        <label for="ctl15_rptCauHoi_ctl27_rbtnList_1">B: 25</label></span></td>
							    </tr>
							    <tr>
							        <td><span class="rd"><input id="ctl15_rptCauHoi_ctl27_rbtnList_2" type="radio"/>
							        <label for="ctl15_rptCauHoi_ctl27_rbtnList_2">C: 29</label></span></td>
							    </tr>
							    <tr>
							        <td><span class="rd"><input id="ctl15_rptCauHoi_ctl27_rbtnList_3" type="radio"/>
							        <label for="ctl15_rptCauHoi_ctl27_rbtnList_3">D: 24</label></span></td>
							    </tr>
							</table>   
                          </div>
          		</div>
    		 </div>
                    <!--Hết câu phần câu hỏi-->     
       </div>
  </div>
  
  <!-- Tạo nút để nộp bài -->
     <div id="ctl15_pnStart">
            <div class="bm-test-again">
                <a onclick="if ( ! FinishConfirmation()) return false;" id="ctl15_btnNopBai" class="bm-test-again-lnk" href="NopBai.jsp">
            	NỘP BÀI </a>
            	<input type="submit" name="ctl15$btn" value="" id="ctl15_btn" style="border-width:0px;height:0px;width:0px;" />
            </div>
            <div style="text-align: center;">
                <span id="ctl15_lblErr"></span>
                <span id="ctl15_LblIdlbt" style="display:none">7</span>
            </div>
    </div>
	    <div id="line_alert" style="text-align: center; width: 100%; color: red; padding: 10px 0px 5px;
	        overflow: hidden:">
	    </div>
	    <!-- Bạn có muốn nộp bài -->
	    <div id="ctl15_UpdateProgress2" style="display:none;">
	            <div class="bm-test-again">
	                <img src="images/ajax-loader.gif" />
	            </div>       
		</div>
</div>
<!-- Đếm thời gian nộp bài -->
	<div id="ctl15_div_time" class="time-remain">
	    <span class="sp-text">Thời gian còn lại</span> 
	    <span class="sp-time" id="aTime" class="timeCount">
	
	        <script type="text/javascript">
	            timeDisplay('aTime',0,0,27,59,5,'ctl15_btn');
	        </script>
	
	    </span>
	</div>
	

		<script type="text/javascript">
		    Sys.WebForms.PageRequestManager.getInstance().add_beginRequest(startRequest);
		    Sys.WebForms.PageRequestManager.getInstance().add_endRequest(endRequest);
		
		    function startRequest(sender, e) {
		        //disable button during the AJAX call
		        document.getElementById('ctl15_btnNopBai').disabled = true;
		        document.getElementById('ctl15_btnNopBai').value = 'Waiting...';
		    }
		    function endRequest(sender, e) {
		        //re-enable button once the AJAX call has completed
		        document.getElementById('ctl15_btnNopBai').disabled = false;
		        document.getElementById('ctl15_btnNopBai').value = 'Nộp bài';
		    }
		</script>
		<!-- 60 request một lần -->
		<script type="text/javascript">
		    $(function() 
		    {
		        setInterval(function() { $.get("KeepAlive.ashx"); }, 1000 * 10);
		    });
		</script>

		<!-- Thông báo chính thức nộp bài -->
	<script type="text/javascript">
	    function FinishConfirmation()
	    {
	        var line_alert = document.getElementById('line_alert');
	        line_alert.style.visibility = 'hidden';
	        if (confirm("Bạn sẽ không thể sửa bài làm sau khi nộp. Đồng ý?") == true) 
	        {
	            document.getElementById('ctl15_btnNopBai').style.visibility = 'hidden';
	            return true;
	        } else
	        { return false; }
	    }
	</script>

		<script language="javascript" type="text/javascript">
		    var i = 10;
		    function time() {
		        if (i >= 0) {
		            document.getElementById("show").innerHTML = "" + i + "";
		            i--;
		            setTimeout("time()", 1000);
		        }
		        else {
		        }
		    }
		    window.onload = time;
		</script>
		<script type="text/javascript">
		    window.onload = function() {
		        document.onkeydown = function(e) {
		            return (e.which || e.keyCode) != 116;
		        };
		    }
		</script>    
       </div>
        <!--end-body-->
         
		<a id="to_top" href="#" style="display: none; bottom: 20px; position: fixed; right: 20px;z-index: 9999;" rel="nofollow">
    	<img alt="Go to top!" src="Images/gototop.png"/></a>
    	
    	
    	
		<div id="footer">
	            <div class="footer-menu-new">
				  <span class="font-des">Đăng ký để nhận tài liệu bổ ích từ Study Funny</span>
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
  	  </div>
</form>
</body>
</html>


