<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="model.Users"%>
<%@page import="model.User_info"%>
<%@page import="model.Course"%>
<%@page import="dao.CourseDAO"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONAware"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.parser.JSONParser"%>
<%@page import="org.json.simple.parser.ParseException"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%
CourseDAO courseDAO2 = new CourseDAO();
	Users users=null;
	User_info user_info = null;
	if(session.getAttribute("user")!=null && session.getAttribute("user_info")!=null)
	{
		users = (Users) session.getAttribute("user");
		user_info = (User_info) session.getAttribute("user_info");
	}
%>
<div id="header">

	<div id="header-top">
		<a
			style="color: #00918d; font-size: 14px; position: absolute; right: 0px; bottom: 10px"
			href="HuongDanSuDung.jsp">Hướng dẫn</a> <a class="header-logo"
			href="index.jsp"></a>
		<div class="header-login">
			<p class="p-login">


				<% if(users!=null) {%>
				<a class="lnk-logout under popup-login" 
				<%if (user_info.getQuyen()==1) {%>href="canhangiangvien.jsp"<%} else {%>href="hocvien.jsp"<%}%>><%=user_info.getTen() %></a>
				&nbsp;|&nbsp;<a href="logout.jsp">Thoát</a>
				<%}
    				else {%>
				<a class="lnk-logout under popup-login" rel="#overlay-register">Đăng
					ký</a> &nbsp;|&nbsp;<a class="lnk-logout under popup-login"
					rel="#overlay-login" name="" id="dang-nhap">Đăng nhập</a>
				<%}
    				%>
			</p>
		</div>
		<!-- <div class="study-search">
			<input name="Header1$search_query" type="text" maxlength="100"
				id="Header1_search_query"
				class="searchInput has_default_text ssh-input"
				onkeypress="return clickButton(event,'Header1_btnSearch1')"
				onfocus="SearchOnFocus(this)" onblur="SearchOnBlur(this)"
				value="Từ khóa tìm kiếm" autocomplete="off"> <input
				type="submit" name="Header1$btnSearch1" value=""
				onclick="checkdata('Header1_btnSearch1');" id="Header1_btnSearch1"
				class="ssh-btn-search">

		</div>
		<div style="display: none;" id="suggestions" class="suggestion">
		<ul> 
		<li>
		<a class="search-title"> Tìm kiếm với <span>"khóa"</span></a>
		</li>
		<li class="item-sugg item-sugg1">
		<h3>Chuyên đề</h3>
		<ul>
		<li>
		<a class="link-search" href="http://viettelstudy.vn/chuyen-de-Tong-quan-khoa-hoc_159-748.html">
		<img width="62" height="35" src="http://media.viettelstudy.vn/" class="image-search">Tổng quan 
		<span class="bold" style="display:inline">khóa</span> học</a>
		</li>
		<li>
		<a class="link-search" href="http://viettelstudy.vn/chuyen-de-Nganh-ruot-khoang_148-696.html">
		<img width="62" height="35" src="http://media.viettelstudy.vn/archive/imageslead/Chuyende/201504/20150423/thumb11_659985636.jpg" class="image-search">Ngành ruột 
		<span class="bold" style="display:inline">khoa</span>ng
		</a></li><li><a class="link-search" href="http://viettelstudy.vn/chuyen-de-Khoang-cach-va-goc-trong-khong-gian_40-181.html"><img width="62" height="35" src="http://media.viettelstudy.vn/archive/imageslead/Chuyende/201310/20131002/thumb11_53214032.png" class="image-search">
		<span class="bold" style="display:inline">Khoả</span>ng cách và góc trong không gian</a></li></ul></li>
		<li class="item-sugg item-sugg1">
		<h3>Bài học</h3><ul><li><a class="link-search" href="http://viettelstudy.vn/bai-hoc-Khoang-cach_133-615-4648.html">
		<span class="bold" style="display:inline">Khoả</span>ng cách</a></li>
		<li><a class="link-search" href="http://viettelstudy.vn/bai-hoc-Nganh-ruot-khoang-phan-1-_148-696-5361.html">Ngành ruột <span class="bold" style="display:inline">khoa</span>ng (phần 1)</a></li>
		<li><a class="link-search" href="http://viettelstudy.vn/bai-hoc-Nganh-ruot-khoang-phan-2-_148-696-5362.html">Ngành ruột <span class="bold" style="display:inline">khoa</span>ng (phần 2)</a></li></ul></li>
		<li class="item-sugg item-sugg1"><h3>Đề thi</h3><ul><li><a class="link-search" href="http://viettelstudy.vn/lam-bai-Phan-3--lua-chon--Khoa-hoc-xa-hoi--55-phut--_13077.html">Phần 3 (lựa chọn): <span class="bold" style="display:inline">Khoa</span> học xã hội (40 câu hỏi - 55 phút )</a></li>
		<li><a class="link-search" href="http://viettelstudy.vn/lam-bai-Phan-3--lua-chon--Khoa-hoc-tu-nhien--55-phut--_13076.html">Phần 3 (lựa chọn): <span class="bold" style="display:inline">Khoa</span> học tự nhiên (40 câu hỏi - 55 phút )</a></li>
		<li><a class="link-search" href="http://viettelstudy.vn/lam-bai-Trac-nghiem--Thanh-tuu-khoa-hoc-ky-thuat_14295.html">Trắc nghiệm: Thành tựu <span class="bold" style="display:inline">khoa</span> học kỹ thuật</a></li></ul></li></ul>
		</div> -->

	</div>
	<div id="header-menu" style="background: rgb(0, 183, 178);">
		<a class="lnk-hm-home menu_active" href="index.jsp"></a>
		<ul class="ul-menu-header">
			<li class="li-menu-header"><a class="lnk-menu-header"
				href="index.jsp"> TRANG CHỦ </a></li>
			<li class="li-menu-header"><a class="lnk-menu-header"
				href="HuongDanSuDung.jsp"> HƯỚNG DẪN SỬ DỤNG </a></li>
			<li class="li-menu-header"><a class="lnk-menu-header"
				href="DanhSachKhoaHoc.jsp"> DANH SÁCH LỚP HỌC </a>
				<div class="vts-submenu submenu-245">
					
					<ul class="submenu1">
						
						<%	for (Course course2 : courseDAO2.getAllListCourse())
	                    	{
	                    %>
	                    	<li><a> <%=course2.getCourse_name()%></a></li>
	                    
	                    <%} %>
					</ul>
				</div></li>
		</ul>
	</div>
</div>
