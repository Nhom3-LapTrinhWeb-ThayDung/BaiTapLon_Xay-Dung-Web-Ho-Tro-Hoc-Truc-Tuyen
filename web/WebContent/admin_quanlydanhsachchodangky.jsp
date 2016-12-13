<%@page import="model.CoursewaitingUser"%>
<%@page import="model.Infotaikhoan"%>
<%@page import="dao.UsersDAO"%>
<%@page import="model.Resources"%>
<%@page import="javax.swing.text.Document"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page import="dao.CourseDAO"%>
<%@page import="model.Section"%>
<%@page import="dao.SectionDAO"%>
<%@page import="model.Course"%>
<%@page import="dao.ExerciseDAO"%>
<%@page import="model.Exercise"%>
<%@page import="model.Quiz"%>
<%@page import="model.User_info"%>
<%@page import="dao.QuestionRadioDAO"%>
<%@page import="dao.Exercise_UserDAO"%>
<%@page import="model.Exercise_User"%>
<%@page import="model.Url"%>
<%@page import="dao.Quiz_UserDAO"%>
<%@page import="model.Quiz_User"%>
<%@page import="dao.User_infoDAO"%>
<%@page import="model.Course"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" href="./css/process_learn.css" type="text/css">
  <link rel="stylesheet" href="./css/comment.css" type="text/css">
  <link rel="stylesheet" href="./css/coder_update.css" type="text/css">
  <link rel="stylesheet" href="./css/persion.css" type="text/css">
  <link rel="stylesheet" href="./css/common.css" type="text/css">
  <link rel="stylesheet" href="./css/reset.css" type="text/css">
  <link rel="stylesheet" href="./css/Default.css" type="text/css">
  <link rel="stylesheet" href="./css/main.css" type="text/css">
  <link rel="stylesheet" href="./css/Reports.css" type="text/css">
  <title>
   Quản trị khoá học - Study Funny
  </title>
  <meta content="http://viettelstudy.vn/images/share_fb_img.jpg" name="og:image" />
    <link rel="icon" href="http://viettelstudy.vn/images/favicon.ico" />
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.bxSlider.min.js"></script>
    <script type="text/javascript" src="js/overlay2.js"></script>
    <script type="text/javascript" src="js/home.js"></script>
</head>
<body>
<%		if(session.getAttribute("user")==null || session.getAttribute("user_info")==null || ((User_info)session.getAttribute("user_info")).getQuyen()!=0 )
{
		response.sendRedirect("index.jsp");
}
else
{
%>
<form name="form1" method="post" action="http://viettelstudy.vn/canhan.html" id="form1" enctype="multipart/form-data">
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
<script src="./axd/ScriptResource(1).axd" type="text/javascript"></script>
<script src="./axd/ScriptResource(2).axd" type="text/javascript"></script>
<script src="./axd/ScriptResource(3).axd" type="text/javascript"></script>
<script src="./axd/ScriptResource(4).axd" type="text/javascript"></script>
<script src="./axd/ScriptResource(5).axd" type="text/javascript"></script>
<script src="./axd/ScriptResource(6).axd" type="text/javascript"></script>
<script src="./axd/ScriptResource(7).axd" type="text/javascript"></script>
<script src="./axd/ScriptResource(8).axd" type="text/javascript"></script>
<script src="./axd/ScriptResource(9).axd" type="text/javascript"></script>
<script src="./axd/ScriptResource(10).axd" type="text/javascript"></script>
<div>
<input type="hidden" name="__VIEWSTATEENCRYPTED" id="__VIEWSTATEENCRYPTED" value="">
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
<%@include file="//includes/headerad.jsp" %>
<%@include file="//includes/message.jsp" %>
<%
CourseDAO aduser_courseDAO = new CourseDAO();
List<CoursewaitingUser> listcoursewaiting = new ArrayList<CoursewaitingUser>();
listcoursewaiting = aduser_courseDAO.getListCoursewaiting();

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
    _gaq.push(['_trackPageview'])
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
<h3>Danh sách các khoá học đang trong thời hạn đăng ký </h3>
       <script type="text/javascript">
        	function deletecoursewaiting(course_id)
        	{
        		 if(confirm("Xóa đăng ký khóa học "+course_id+". Đồng ý ?")==true)
				{                        
	               	 $.post('CourseWaitingServlet', {'command': "deletecoursewaiting",
	           				'course_waiting_id':course_id}
	           				,function (data) {
	             	          	if(data=="Delete success!")
	             	          		{
	             	          		location.reload();
	             	          		}
	             	          		
	             	          	else
	             	          		alert(data);
	           	           },'text');              
				} 
        	}
        	function acceptcoursewaiting(coursewaiting_id,course_id,userid)
        	{
        		if(confirm("Chấp nhận học viên vào khóa học "+course_id+". Đồng ý ?")==true)
				{                        
	               	 $.post('CourseWaitingServlet', {'command': "acceptcoursewaiting",
	           				'course_waiting_id':coursewaiting_id,
	           				'course_id':course_id,
	           				'user_id':userid}
	           				,function (data) {
	             	          	if(data=="Accept success!")
	             	          		{
	             	          			location.reload();
	             	          		}
	             	          		
	             	          	else
	             	          		alert(data);
	           	           },'text');              
				} 
        	}
        </script>  
      <table cellspacing="0" cellpadding="0" width="100%">
      <tbody>
      <tr><td class="studyprogram_tabledetails_td_header_dl" width="4%">STT</td>
      <td class="studyprogram_tabledetails_td_header_dl" width="8%">Mã khoá học chờ</td>
      <td class="studyprogram_tabledetails_td_header_dl" width="8%">Id User</td>
      <td class="studyprogram_tabledetails_td_header_dl" width="8%">Id khóa học</td>
      <td class="studyprogram_tabledetails_td_header_dl" width="10%">Tên khóa học</td>
      <td class="studyprogram_tabledetails_td_header_dl" width="5%">Thời gian bắt đầu</td>
      <td class="studyprogram_tabledetails_td_header_dl" width="10%">Thời gian kết thúc</td>
      <td class="studyprogram_tabledetails_td_header_dl" width="10%">Địa chỉ lớp học</td>
      <td class="studyprogram_tabledetails_td_header_dl" width="5%">Tên học viên</td>
      <td class="studyprogram_tabledetails_td_header_dl" width="10%">Số điện thoại</td>
      <td class="studyprogram_tabledetails_td_header_dl" width="6%">Đồng ý</td>
      <td class="studyprogram_tabledetails_td_header_dl" width="6%">Xoá</td></tr>
      <%
      int ktt =0;
      for(CoursewaitingUser courwaiting: listcoursewaiting ){
			ktt++;				
				%>
      <tr>
      <td class="studyprogram_tabledetails_td_content_dl"><%=ktt%></td>
      <td class="studyprogram_tabledetails_td_content_dl"><%=courwaiting.getCourse_waiting_id()%></td>
      <td class="studyprogram_tabledetails_td_content_dl"><%=courwaiting.getUser_id()%></td>
      <td class="studyprogram_tabledetails_td_content_dl"><%=courwaiting.getCourse_id()%></td>
      <td class="studyprogram_tabledetails_td_content_dl"><%=courwaiting.getCourse_name()%></td>
      <td class="studyprogram_tabledetails_td_content_dl"><%=courwaiting.getCourse_startdate()%></td>
      <td class="studyprogram_tabledetails_td_content_dl"><%=courwaiting.getCourse_enddate()%></td>
      <td class="studyprogram_tabledetails_td_content_dl"><%=courwaiting.getCourse_place()%></td>
      <td class="studyprogram_tabledetails_td_content_dl"><%=courwaiting.getTen()%></td>
      <td class="studyprogram_tabledetails_td_content_dl"><%=courwaiting.getSodienthoai()%></td>
	  <td><button type="button" class="btn btn-default btn-xs" onclick="acceptcoursewaiting('<%=courwaiting.getCourse_waiting_id()%>','<%=courwaiting.getCourse_id()%>','<%=courwaiting.getUser_id() %>')" id="acceptcoursewaiting<%=courwaiting.getCourse_id()%>">Accept</button></td>
	  <td><button type="button" class="btn btn-default btn-xs" onclick="deletecoursewaiting('<%=courwaiting.getCourse_id()%>')" id="deletecoursewaiting<%=courwaiting.getCourse_id()%>">Xóa</button></td>
      <tr>  
      <% }%>
      
      </tbody>
      </table>
        <!--Alert-->      
<div class="study-notice">   
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
    <img alt="Go to top!" src="./hocvien_files/gototop.png"></a>
<div id="footer">
    <div id="footer-menu">
        <a href="http://viettelstudy.vn/index.html">TRANG CHỦ</a>&nbsp;|&nbsp;        
    </div> 
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
    <%} %>
</body></html>