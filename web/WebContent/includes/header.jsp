<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="model.Users"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%
	Users users=null;
	if(session.getAttribute("user")!=null)
	{
		users = (Users) session.getAttribute("user");
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
				<a class="lnk-logout under popup-login"><%=users.getUserName() %></a>
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
		<div class="study-search">
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
		</div>

	</div>
	<div id="header-menu" style="background: rgb(0, 183, 178);">
		<a class="lnk-hm-home menu_active" href="index.jsp"></a>
		<ul class="ul-menu-header">
			<li class="li-menu-header"><a class="lnk-menu-header"
				href="index.jsp"> TRANG CHỦ </a></li>
			<li class="li-menu-header"><a class="lnk-menu-header"
				href="HuongDanSuDung.jsp"> HƯỚNG DẪN SỬ DỤNG </a></li>
			<li class="li-menu-header"><a class="lnk-menu-header"
				href="dkkhoahoc.jsp"> DANH SÁCH LỚP HỌC </a>
				<div class="vts-submenu submenu-245">
					<ul class="submenu1">
						<li><a href="Course_Lap_Trinh_Web.jsp"> Lập trình web</a></li>
						<li><a> Kỹ thuật lập trình</a></li>
						<li><a> Công nghệ phần mềm </a></li>
					</ul>
				</div></li>
		</ul>
	</div>
</div>