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
				<%if (user_info.getQuyen()==1) {%>href="canhangiangvien.jsp"<%} else if (user_info.getQuyen()==2) {%>href="hocvien.jsp"<%} else {%>href="admin_quanlytaikhoan.jsp"<%}%>><%=user_info.getTen() %></a>
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
