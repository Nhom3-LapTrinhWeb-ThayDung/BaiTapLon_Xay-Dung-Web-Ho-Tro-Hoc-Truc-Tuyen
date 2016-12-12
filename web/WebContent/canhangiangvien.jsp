<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="model.Users"%>
<%@page import="model.User_info"%>
<%@page import="model.Course"%>
<%@page import="dao.CourseDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<link rel="stylesheet" href="css/process_learn.css" type="text/css">
<link rel="stylesheet" href="css/comment.css" type="text/css">
<link rel="stylesheet" href="css/coder_update.css" type="text/css">
<link rel="stylesheet" href="css/persion.css" type="text/css">
<link rel="stylesheet" href="css/common.css" type="text/css">
<link rel="stylesheet" href="css/reset.css" type="text/css">
<link rel="stylesheet" href="css/oneOfCourse.css" type="text/css"></link>
<link rel="stylesheet" href="css/testOnline.css" type="text/css"></link>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Trang cá nhân</title>
<meta content="Images/share_fb_img.jpg" name="og:image">
<link rel="icon" href="Images/favicon.ico">
<script async="" src="//connect.facebook.net/en_US/fbevents.js"></script>
<script type="text/javascript" async=""
	src="http://www.google-analytics.com/ga.js"></script>
<script type="text/javascript" src="js/jquery.bxSlider.min.js"></script>
<script type="text/javascript" src="js/overlay2.js"></script>
<script type="text/javascript" src="js/home.js"></script>

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/search.js"></script>
</head>
<body>
<%		if(session.getAttribute("user")==null || session.getAttribute("user_info")==null)
{
		response.sendRedirect("index.jsp");
}
else
{
%>
	<div id="overlay-header">
		<div id="overlay-left"></div>
		<div id="overlay-right"></div>
	</div>
	<div id="wrapper">

		<style type="text/css">
.p-login .infor-forget {
	top: 55px;
}

.p-login .lnk-user .infor-forget {
	display: none;
}

.p-login .lnk-user:hover .infor-forget {
	display: block;
}

.p-login .lnk-user {
	padding-bottom: 3px;
}
</style>

		<%@ include file="//includes/header.jsp"%>
		<%@ include file="//includes/message.jsp" %>
		<%
		List<Course> listcourse= new ArrayList<Course>();
		String JSONResult = JSONArray.toJSONString(listcourse);

			CourseDAO courseDAO = new CourseDAO();

			listcourse = courseDAO.getListCourse(user_info.getId());
			JSONResult = JSONArray.toJSONString(listcourse);

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
				function SearchOnFocus(field) {
					if (field.value == 'Từ khóa tìm kiếm') {
						field.value = '';
					}
				}

				function SearchOnBlur(field) {
					if (field.value == '') {
						field.value = 'Từ khóa tìm kiếm';
					}
				}
			</script>



		<!--end-header-->
		<div id="body">
			<!--Alert-->






			<script>
					$(document)
							.ready(
									function() {
										$('.persion-tab-lnk')
												.click(
														function() {
															try {

																var id_tab = $(
																		this)
																		.attr(
																				'name');
																if ($(this)
																		.hasClass(
																				'active')) {

																} else {
																	$(
																			'.persion-tab-lnk')
																			.removeClass(
																					'active');
																	$(
																			'.persion-right')
																			.hide();
																	$(this)
																			.addClass(
																					'active');
																	$(
																			'#'
																					+ id_tab)
																			.fadeIn(
																					"slow");
																}
															} catch (err) {
															}

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
</style>
						<div class="persion-avatar">
							<div id="ctl14_LoadUser_upUserLoad">

								<img src="upload/<%=user_info.getAnhdaidien()%>" alt=""
									class="persion-avatar-img">
								<h3 class="persion-info">
									<span class="bold"> ${user_info.getTen() }</span><br>
								</h3>

							</div>

						</div>
						<div class="persion-tab">
							<div class="wrap-tab">
								<a class="persion-tab-lnk lnk-tab-info active" name="DetailUser"
									href="#DetailUser"
									onclick="loadUserControl('ThongTinCaNhanNew')"> <span>Thông
										tin cá nhân</span>
								</a>
								<!--<a class="persion-tab-lnk" name="skhoahocdangday" href="#dskhoahocdangday">
                        <span>Danh sách khóa học đang dạy</span>
                    </a>-->
								<a class="persion-tab-lnk lnk-tab-persion"
									name="TienTrinhHocNew"> <span>Danh sách khóa học
										đang dạy</span>
								</a> <a class="persion-tab-lnk" name="DetailThi"> <span>Đăng
										ký mở khóa học</span>
								</a> <a class="persion-tab-lnk lnk-tab-change" name="DetailDMK">
									<span>Đổi mật khẩu</span>
								</a>
							</div>
						</div>
						<div></div>
					</div>
					<div class="persion-right persion-detail" id="TienTrinhHocNew"
						style="display: none; width: 630px;">
						<div class="study-search" style="float: right; margin-top: 0px;">
							<input name="search" type="text" maxlength="100"
								onfocus="SearchOnFocus(this)" onblur="SearchOnBlur(this)"
								id="search" class="searchInput has_default_text ssh-input">
							<input type="button" name="Header1$btnSearch1" value=""
								id="Header1_btnSearch1" class="ssh-btn-search">
						</div>
						<h3 class="learn-process-h3" style="width: 630px;">
							<span>DANH SÁCH KHÓA HỌC ĐANG DẠY</span>
						</h3>

						<style>
.lp-lnk {
	margin-bottom: 15px;
}

.lp-lnk img {
	height: 152px;
}
</style>

						<div class="box-test-online martop_0">

							<div class="to-content">
								<div class="to-c-left">
									<div class="to-c-l-list">
										<%
											int i = 0;
											for (Course course : listcourse) {
												i++;
										%>
										<div class="row" name="1">
											<a href="khoahoc2.jsp?course_id=<%=course.getCourse_id()%>"
												name="1">
												<p class="to-l-p-img">
													<span class="sp-text"> KHÓA HỌC </span><span
														class="sp-number"> <%=i%>
													</span>
												</p>
											</a> <a href="khoahoc2.jsp?course_id=<%=course.getCourse_id()%>"
												name="1">
												<p class="to-l-p-name">
													<span class="bold"> <%=course.getCourse_name()%></span>
												</p>
											</a>
										</div>
										<%
											}
										%>
									</div>
									<script
										src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
									<script>
                        function loadCourse() {
                            var url;
                            url= "temp.html";
                            $("#TienTrinhHocNew").load(url);
                        }
                        
                        

                    </script>

								</div>



							</div>
						</div>
					</div>
					<!--list khoa hoc dang day-->
					<!-- search resurl-->
					<div style="display: none; left: 534px; top: 82px;"
						id="suggestions" class="suggestion"></div>

					<script type="text/javascript">
		$('#search').keyup(function (){
			
			var khoahocjs = <%=JSONResult%>;
	        var Searchkhoahoc = function (strkh) {
	        	strkh = unsignString(trim(strkh));
	        	var khresult=[khoahocjs[0]];
	            var i = null;
	            for (i = 0; khoahocjs.length > i; i += 1) {
	                if (unsignString(trim(khoahocjs[i].course_name)).search(strkh)!=-1 || unsignString(trim(khoahocjs[i].course_startdate)).search(strkh)!=-1) {
	                	khresult.push(khoahocjs[i]);
	                }
	            }
	            if(khresult)
	            {
	            	 return khresult;
	            }
	            return null;
	        };
	        var listkh = Searchkhoahoc($('#search').val());
	        
	        
	        
	        	  var resHtml = '';
	        	  var hasResult = false;
	        	  resHtml += '<ul> '
	                  + '<li><a class="search-title"> Tìm kiếm với <span>"' + $('#search').val() + '"</span></a></li>';
	                  if (listkh.length > 1) {
	                      hasResult = true;
	                      resHtml += '<li class="item-sugg item-sugg1">'
	                    + '<h3>Khóa học</h3>'
	                    + '<ul>';
	                    	for (i = 1; listkh.length > i; i += 1) {
	                          resHtml += '<a class="link-search" href="khoahoc2.jsp?course_id='  + listkh[i].course_id+ '"><li>' + listkh[i].course_name + '</li></a>';
	                      }
	                      resHtml += '</ul></li>';
	                  }
	        	  if (hasResult)
	                    $('#suggestions').html(resHtml);
	                else
	                    $('#suggestions').html('<ul><li><a class="search-title"> Không tìm thấy kết quả nào cho "' + $('#search').val()
	                  + '"</a></li></ul>');
			});
		
		
			
		</script>




					

					<div class="persion-right" id="DetailThi" style="display: none;">
						<form action="CourseServlet" method="post">
							<div id="ctl14_TienTrinhThi_upThi">

								<div id="tab_Opencourses">
									<h3 class="learn-process-h3">
										<span>ĐĂNG KÝ MỞ KHÓA HỌC</span>
									</h3>
									<div class="bpt-item-right">
										<p style="color: red; font-style: italic; padding-left: 15px"
											id="errordkkh" name="errordkkh"></p>
									</div>
									<div class="list-wrap">
										<div class="bpt-content" id="edit">
											<div id="ctl14_ThongTinHocVien_pnInfo">

												<div class="bpt-row">
													<div class="bpt-item-left">Tên khóa hoc:</div>
													<div class="bpt-item-right">
														<input name="course_name" type="text" value=""
															maxlength="100" id="course_name" class="bpt-txt"
															placeholder="Nội dung"> <span
															id="ctl14_ThongTinHocVien_lblErrTenDayDu"></span>
													</div>
												</div>


												<div class="bpt-row">
													<div class="bpt-item-left">Ngày bắt đầu:</div>
													<div class="bpt-item-right">
														<select name="startdate_ngay" id="startdate_ngay"
															class="bpt-sl-date">
															<option selected="selected" value="0">Ngày</option>
															<option value="1">1</option>
															<option value="2">2</option>
															<option value="3">3</option>
															<option value="4">4</option>
															<option value="5">5</option>
															<option value="6">6</option>
															<option value="7">7</option>
															<option value="8">8</option>
															<option value="9">9</option>
															<option value="10">10</option>
															<option value="11">11</option>
															<option value="12">12</option>
															<option value="13">13</option>
															<option value="14">14</option>
															<option value="15">15</option>
															<option value="16">16</option>
															<option value="17">17</option>
															<option value="18">18</option>
															<option value="19">19</option>
															<option value="20">20</option>
															<option value="21">21</option>
															<option value="22">22</option>
															<option value="23">23</option>
															<option value="24">24</option>
															<option value="25">25</option>
															<option value="26">26</option>
															<option value="27">27</option>
															<option value="28">28</option>
															<option value="29">29</option>
															<option value="30">30</option>
															<option value="31">31</option>

														</select> <select name="startdate_thang" id="startdate_thang"
															class="bpt-sl-month">
															<option selected="selected" value="0">Tháng</option>
															<option value="1">1</option>
															<option value="2">2</option>
															<option value="3">3</option>
															<option value="4">4</option>
															<option value="5">5</option>
															<option value="6">6</option>
															<option value="7">7</option>
															<option value="8">8</option>
															<option value="9">9</option>
															<option value="10">10</option>
															<option value="11">11</option>
															<option value="12">12</option>

														</select> <select name="startdate_nam" id="startdate_nam"
															class="bpt-sl-date">
															<option value="0">Năm</option>
															<option value="1930">1930</option>
															<option value="1931">1931</option>
															<option value="1932">1932</option>
															<option value="1933">1933</option>
															<option value="1934">1934</option>
															<option value="1935">1935</option>
															<option value="1936">1936</option>
															<option value="1937">1937</option>
															<option value="1938">1938</option>
															<option value="1939">1939</option>
															<option value="1940">1940</option>
															<option value="1941">1941</option>
															<option value="1942">1942</option>
															<option value="1943">1943</option>
															<option value="1944">1944</option>
															<option value="1945">1945</option>
															<option value="1946">1946</option>
															<option value="1947">1947</option>
															<option value="1948">1948</option>
															<option value="1949">1949</option>
															<option value="1950">1950</option>
															<option value="1951">1951</option>
															<option value="1952">1952</option>
															<option value="1953">1953</option>
															<option value="1954">1954</option>
															<option value="1955">1955</option>
															<option value="1956">1956</option>
															<option value="1957">1957</option>
															<option value="1958">1958</option>
															<option value="1959">1959</option>
															<option value="1960">1960</option>
															<option value="1961">1961</option>
															<option value="1962">1962</option>
															<option value="1963">1963</option>
															<option value="1964">1964</option>
															<option value="1965">1965</option>
															<option value="1966">1966</option>
															<option value="1967">1967</option>
															<option value="1968">1968</option>
															<option value="1969">1969</option>
															<option value="1970">1970</option>
															<option value="1971">1971</option>
															<option value="1972">1972</option>
															<option value="1973">1973</option>
															<option value="1974">1974</option>
															<option value="1975">1975</option>
															<option value="1976">1976</option>
															<option value="1977">1977</option>
															<option value="1978">1978</option>
															<option value="1979">1979</option>
															<option value="1980">1980</option>
															<option value="1981">1981</option>
															<option value="1982">1982</option>
															<option value="1983">1983</option>
															<option value="1984">1984</option>
															<option value="1985">1985</option>
															<option value="1986">1986</option>
															<option value="1987">1987</option>
															<option value="1988">1988</option>
															<option value="1989">1989</option>
															<option value="1990">1990</option>
															<option value="1991">1991</option>
															<option value="1992">1992</option>
															<option value="1993">1993</option>
															<option value="1994">1994</option>
															<option value="1995">1995</option>
															<option value="1996">1996</option>
															<option value="1997">1997</option>
															<option value="1998">1998</option>
															<option value="1999">1999</option>
															<option value="2000">2000</option>
															<option value="2001">2001</option>
															<option value="2002">2002</option>
															<option value="2003">2003</option>
															<option value="2004">2004</option>
															<option value="2005">2005</option>
															<option value="2006">2006</option>
															<option value="2007">2007</option>
															<option value="2008">2008</option>
															<option value="2009">2009</option>
															<option value="2010">2010</option>
															<option value="2011">2011</option>
															<option value="2011">2012</option>
															<option value="2011">2013</option>
															<option value="2011">2014</option>
															<option value="2011">2015</option>
															<option value="2011">2016</option>
															<option value="2011">2017</option>
															<option value="2011">2018</option>

														</select>
													</div>
												</div>


												<div class="bpt-row">
													<div class="bpt-item-left">Ngày kết thúc:</div>
													<div class="bpt-item-right">
														<select name="enddate_ngay" id="enddate_ngay"
															class="bpt-sl-date">
															<option value="0">Ngày</option>
															<option value="1">1</option>
															<option value="2">2</option>
															<option value="3">3</option>
															<option value="4">4</option>
															<option value="5">5</option>
															<option value="6">6</option>
															<option value="7">7</option>
															<option value="8">8</option>
															<option value="9">9</option>
															<option value="10">10</option>
															<option value="11">11</option>
															<option value="12">12</option>
															<option value="13">13</option>
															<option value="14">14</option>
															<option value="15">15</option>
															<option value="16">16</option>
															<option value="17">17</option>
															<option value="18">18</option>
															<option value="19">19</option>
															<option value="20">20</option>
															<option value="21">21</option>
															<option value="22">22</option>
															<option value="23">23</option>
															<option value="24">24</option>
															<option value="25">25</option>
															<option value="26">26</option>
															<option value="27">27</option>
															<option value="28">28</option>
															<option value="29">29</option>
															<option value="30">30</option>
															<option value="31">31</option>

														</select> <select name="enddate_thang" id="enddate_thang"
															class="bpt-sl-month">
															<option value="0">Tháng</option>
															<option value="1">1</option>
															<option value="2">2</option>
															<option value="3">3</option>
															<option value="4">4</option>
															<option value="5">5</option>
															<option value="6">6</option>
															<option value="7">7</option>
															<option value="8">8</option>
															<option value="9">9</option>
															<option value="10">10</option>
															<option value="11">11</option>
															<option value="12">12</option>

														</select> <select name="enddate_nam" id="enddate_nam"
															class="bpt-sl-date">
															<option value="0">Năm</option>
															<option value="1930">1930</option>
															<option value="1931">1931</option>
															<option value="1932">1932</option>
															<option value="1933">1933</option>
															<option value="1934">1934</option>
															<option value="1935">1935</option>
															<option value="1936">1936</option>
															<option value="1937">1937</option>
															<option value="1938">1938</option>
															<option value="1939">1939</option>
															<option value="1940">1940</option>
															<option value="1941">1941</option>
															<option value="1942">1942</option>
															<option value="1943">1943</option>
															<option value="1944">1944</option>
															<option value="1945">1945</option>
															<option value="1946">1946</option>
															<option value="1947">1947</option>
															<option value="1948">1948</option>
															<option value="1949">1949</option>
															<option value="1950">1950</option>
															<option value="1951">1951</option>
															<option value="1952">1952</option>
															<option value="1953">1953</option>
															<option value="1954">1954</option>
															<option value="1955">1955</option>
															<option value="1956">1956</option>
															<option value="1957">1957</option>
															<option value="1958">1958</option>
															<option value="1959">1959</option>
															<option value="1960">1960</option>
															<option value="1961">1961</option>
															<option value="1962">1962</option>
															<option value="1963">1963</option>
															<option value="1964">1964</option>
															<option value="1965">1965</option>
															<option value="1966">1966</option>
															<option value="1967">1967</option>
															<option value="1968">1968</option>
															<option value="1969">1969</option>
															<option value="1970">1970</option>
															<option value="1971">1971</option>
															<option value="1972">1972</option>
															<option value="1973">1973</option>
															<option value="1974">1974</option>
															<option value="1975">1975</option>
															<option value="1976">1976</option>
															<option value="1977">1977</option>
															<option value="1978">1978</option>
															<option value="1979">1979</option>
															<option value="1980">1980</option>
															<option value="1981">1981</option>
															<option value="1982">1982</option>
															<option value="1983">1983</option>
															<option value="1984">1984</option>
															<option value="1985">1985</option>
															<option value="1986">1986</option>
															<option value="1987">1987</option>
															<option value="1988">1988</option>
															<option value="1989">1989</option>
															<option value="1990">1990</option>
															<option value="1991">1991</option>
															<option value="1992">1992</option>
															<option value="1993">1993</option>
															<option value="1994">1994</option>
															<option value="1995">1995</option>
															<option value="1996">1996</option>
															<option value="1997">1997</option>
															<option value="1998">1998</option>
															<option value="1999">1999</option>
															<option value="2000">2000</option>
															<option value="2001">2001</option>
															<option value="2002">2002</option>
															<option value="2003">2003</option>
															<option value="2004">2004</option>
															<option value="2005">2005</option>
															<option value="2006">2006</option>
															<option value="2007">2007</option>
															<option value="2008">2008</option>
															<option value="2009">2009</option>
															<option value="2010">2010</option>
															<option value="2011">2011</option>
															<option value="2011">2012</option>
															<option value="2011">2013</option>
															<option value="2011">2014</option>
															<option value="2011">2015</option>
															<option value="2011">2016</option>
															<option value="2011">2017</option>=
															<option value="2011">2018</option>

														</select>
													</div>
												</div>
												<div class="bpt-row">
													<div class="bpt-item-left">Lịch:</div>
													<div class="bpt-item-right">
														<select name="schedulingday" id="schedulingday"
															class="bpt-sl-sex">
															<option selected="selected" value="0">Thứ</option>
															<option value="1">2</option>
															<option value="2">3</option>
															<option value="3">4</option>
															<option value="4">5</option>
															<option value="5">6</option>
															<option value="6">7</option>
															<option value="7">Chủ Nhật</option>


														</select> <select name="startlession" id="startlession"
															class="bpt-sl-sex">
															<option selected="selected" value="0">Tiết bắt
																đầu</option>
															<option value="1">1</option>
															<option value="2">2</option>
															<option value="3">3</option>
															<option value="4">4</option>
															<option value="5">5</option>
															
															<option value="7">7</option>
															<option value="8">8</option>
															<option value="9">9</option>
															<option value="10">10</option>
															<option value="11">11</option>
															<option value="12">12</option>
															
														</select> <select name="endlession" id="endlession"
															class="bpt-sl-sex">
															<option selected="selected" value="0">Tiết kết
																thúc</option>
															<option value="1">1</option>
															<option value="2">2</option>
															<option value="3">3</option>
															<option value="4">4</option>
															<option value="5">5</option>
															
															<option value="7">7</option>
															<option value="8">8</option>
															<option value="9">9</option>
															<option value="10">10</option>
															<option value="11">11</option>
															<option value="12">12</option>
															
														</select>
													</div>
												</div>



												<div class="bpt-row">
													<div class="bpt-item-left">Địa điểm học:</div>
													<div class="bpt-item-right">
														<input name="course_place" type="text" maxlength="100"
															id="course_place" class="bpt-txt" placeholder="Nội dung">
														<span id="ctl14_ThongTinHocVien_lblErrTenDayDu"></span>
													</div>
												</div>

												<div class="bpt-row">
													<div class="bpt-item-left">Mô tả:</div>
													<div class="bpt-item-right">
														<textarea class="txt-input" name="course_description"
															style="height: 100px; width: 250px;"
															id="course_description" placeholder="Nội dung"></textarea>
													</div>
												</div>


											</div>
											
											<div class="bpt-row" style="margin-top: 0px;">
												<div class="bpt-item-left"></div>
												<div class="bpt-item-right">
													<span id="ctl14_ThongTinHocVien_lblSusscess"></span>
												</div>
											</div>
											<div class="bpt-row bpt-row-save" style="margin-top: 0px;">
												<a id="btndkkhoahoc" class="bpt-lnk-save"
													onclick="dkkhoahocclick()"> Chấp nhận </a>
											
												<input type="hidden" name="command" value="insert">
												<input type="hidden" id="idgiangvien" name="idgiangvien"
													value="${user_info.getId()}">



												<script type="text/javascript">
					 function dkkhoahocclick(){
						 var errordkkh = "";
						 if($('#course_name').val()=="" || $('#startdate_ngay').val()=="0" || $('#startdate_thang').val()=="0" || $('#startdate_nam').val()=="0" 
							 || $('#enddate_ngay').val()=="0" || $('#enddate_thang').val()=="0" || $('#enddate_nam').val()=="0" 
								 || $('#schedulingday').val()=="0" || $('#startlession').val()=="0" || $('#endlession').val()=="0" )
							 {
							 	errordkkh += "Chưa nhập đủ thông tin khóa học! ";
							 	$('#errordkkh').html(errordkkh);
							 }
						 else
							 {
									var course_description,startdate_nam,startdate_thang,command, errormk,username;
									$('#errorStr').html('<%=users.getUserName()%>');
									alert('<%=users.getUserName()%>');
									username = "<%=users.getUserName()%>"
									curentpass = "<%=users.getUserPass()%>";
									oldpass = $('#oldpass').val();
									newpass1 = $('#newpass1').val();
									newpass2 = $('#newpass2').val();
									command = "doimk";
									errordkkh="";
									var idgiangvien = "<%=user_info.getId()%>";
										//alert(username);
											$.post('CourseServlet', {'command':"insert",'course_description':$('#course_description').val(),'startdate_nam':$('#startdate_nam').val(),'startdate_thang':$('#startdate_thang').val(),'startdate_ngay':$('#startdate_ngay').val(),
												'enddate_nam':$('#enddate_nam').val(),'enddate_thang':$('#enddate_thang').val(),'enddate_ngay':$('#enddate_ngay').val(),'course_name':$('#course_name').val(),
												'startlession':$('#startlession').val(),'endlession':$('#endlession').val(),'course_place':$('#course_place').val(),'schedulingday':$('#schedulingday').val(),'idgiangvien':idgiangvien}, function (data) {
												if(data=="Mở khóa học không thành công!")
													{
													 // similar behavior as an HTTP redirect
													//window.location.replace("khoahoc2.jsp");

													// similar behavior as clicking on a link
													$('#errordkkh').html(data);
													
													}
												else
													window.location.href = data;
												},'text');
							 }
						 
						
					}
				</script>
											</div>
											</div>
										<!--end-edit-user---->
									</div>
								</div>

							</div>



							
						</form>
					</div>

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
									username = "<%=users.getUserName()%>";
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
						

						
					</div>

					<div class="persion-right" id="DetailUser" style="display: block;">
						<form id="formuserinfo" action="UploadServlet" method="post"
							enctype="multipart/form-data">
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
												<div class="bpt-item-left">Tên:</div>
												<div class="bpt-item-right">
													<input name="ten" type="text" value="${user_info.getTen()}"
														maxlength="100" id="ten" class="bpt-txt"> <span
														id="ctl14_ThongTinHocVien_lblErrTenDayDu"></span> <input
														type="hidden" id="usermame" name="username"
														value="${users.getUserName()}" />
												</div>
											</div>
											<div class="bpt-row">
												<div class="bpt-item-left">Chức vụ</div>
												<div class="bpt-item-right">
													<input name="chucvu" type="text" value="Giảng viên"
														maxlength="100" id="ctl14_ThongTinHocVien_txtTenDayDu"
														disabled="disabled" class="bpt-txt"> <span
														id="chucvu"></span>
												</div>
											</div>
											<div class="bpt-row">
												<div class="bpt-item-left">Số điện thoại:</div>
												<div class="bpt-item-right">
													<input name="sodienthoai" type="text"
														value="${user_info.getSodienthoai() }" maxlength="15"
														id="sodienthoai" class="bpt-txt">
												</div>
											</div>
											<div class="bpt-row">
												<div class="bpt-item-left">Giới tính:</div>
												<div class="bpt-item-right">
													<select name="gioitinh" id="gioitinh" class="bpt-sl-sex">
														<option>Chọn giới tính</option>
														<option value="0">Nam</option>
														<option value="1">Nữ</option>
													</select>

													<script type="text/javascript">
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

													</script>



												</div>
											</div>
											<div class="bpt-row">
												<div class="bpt-item-left">Ngày/tháng/năm sinh:</div>
												<div class="bpt-item-right">
													<select name="ngaysinh" id="ngaysinh" class="bpt-sl-date">
														<option value="0">Ngày</option>
													</select> <select name="thangsinh" id="thangsinh"
														class="bpt-sl-month">
														<option value="0">Tháng</option>
													</select> <select name="namsinh" id="namsinh" class="bpt-sl-date">
														<option value="0">Năm</option>

													</select>
													<script type="text/javascript">
												
															<%int nam = Integer.parseInt(user_info.getNgaysinh().substring(0, 4));
															int thang = Integer.parseInt(user_info.getNgaysinh().substring(5, 7));
															int ngay = Integer.parseInt(user_info.getNgaysinh().substring(8, 10));%>
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
																
														
													</script>
												</div>
											</div>
											<div class="bpt-row">
												<div class="bpt-item-left">Email:</div>
												<div class="bpt-item-right">
													<input name="email" type="text" maxlength="200" id="email"
														class="bpt-txt" value="${user_info.getEmail()}">
												</div>
											</div>

										</div>

										<div class="bpt-row bpt-row-line">
											<div class="bpt-item-left">Ảnh đại diện:</div>
											<div class="bpt-item-right">
												<div class="bpt-img-avarta">
													<img src="upload/<%=user_info.getAnhdaidien()%>"
														id="anhdaidien" alt="" height="48px">

												</div>
												<input name="uploadFile" type="file" accept="image/*"
													id="uploadFile" class="file" style="width: 210px">
												<input name="" type="submit" value="cập nhật ảnh đại diện"
													style="width: 150; height: 30;">
												<p class="bpt-note-img">
													<span id="ctl14_ThongTinHocVien_lblErrImage"></span>
												</p>

											</div>
										</div>


										<div class="bpt-row">
											<div class="bpt-item-left">Địa chỉ:</div>
											<div class="bpt-item-right">
												<input name="diachi" type="text" maxlength="200" id="diachi"
													class="bpt-txt" value="${user_info.getDiachi()}">
											</div>
										</div>

										<div class="bpt-row" style="margin-top: 0px;">
											<div class="bpt-item-left"></div>
											<div class="bpt-item-right">
												<span id="ctl14_ThongTinHocVien_lblSusscess"></span>
											</div>
										</div>
										<div class="bpt-row bpt-row-save" style="margin-top: 0px;">
											<a id="btnupdateuser" class="bpt-lnk-save"
												onclick="btnupdateuserclick()"> Chấp nhận </a>

										</div>
									</div>
									<!--end-edit-user-->
								</div>
							</div>
						</form>
						<script type="text/javascript">btnupdate
							function btnupdateuserclick(){
									if (confirm("Sửa đổi thông tin cá nhân. Đồng ý?") == true) {
										$.post('UsersServlet', {'command':"update",'email':$('#email').val(),'gioitinh':$('#gioitinh').val(),'ngaysinh':$('#ngaysinh').val(),'thangsinh':$('#thangsinh').val(),
											'namsinh':$('#namsinh').val(),'ten':$('#ten').val(),'sodienthoai':$('#sodienthoai').val(),'diachi':$('#diachi').val()}, function (data) {
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



				<p class="gd-copyright"></p>
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
					$("#btnRegisterRevMail")
							.click(
									function() {

										var txtEmail = $("#femail").val();
										if (validateEmail(txtEmail)) {
											$
													.post(
															'http://viettelstudy.vn/Ajax/RegisterEmail.aspx',
															{
																mEmail : txtEmail,
																TokenEmail : "8696A65FE9D1506D9FF55A14CE2C74FF940A0657B505EEE910B35B6514F3CD2939FCE72FB59FD35685CD442A01FFCF21BF75BCC039FF727EF38C9139427F9416"
															},
															function(data,
																	status) {
																if (data == '200') {
																	alert('Bạn đã Đăng ký nhận email thành công');
																	location
																			.reload();
																} else if (data == '201') {
																	alert('Bạn đã Đăng ký nhận email trước đó');
																	location
																			.reload();
																} else if (data == '403') {
																	alert('Hiện tại đang gặp vấn đề về dữ liệu! Hãy thử lại sau! Cảm ơn!');
																	location
																			.reload();
																}
															});
										} else {
											alert('Hãy nhập đúng địa chỉ email để nhận được tài liệu vô cùng bổ ích từ ViettelStudy');
										}
									});

					$("#femail").keypress(
							function(e) {
								if ((e.which && e.which == 13)
										|| (e.keyCode && e.keyCode == 13)) {
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
			<div id="overlay-footer-left"></div>
			<div id="overlay-footer-right"></div>
		</div>
		<!--end-overlay-footer-->

	</div>
	<!--end-wrapper-->
	







	<%} %>
</body>
</html>