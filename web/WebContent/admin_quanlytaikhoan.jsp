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
<%@page import="model.Infotaikhoan"%>
<!-- saved from url=(0034)http://viettelstudy.vn/canhan.html -->
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
   Quản trị - Study Funny
  </title>
  <meta content="http://viettelstudy.vn/images/share_fb_img.jpg" name="og:image" />
    <link rel="icon" href="http://viettelstudy.vn/images/favicon.ico" />
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.bxSlider.min.js"></script>
    <script type="text/javascript" src="js/overlay2.js"></script>
    <script type="text/javascript" src="js/home.js"></script>
</head>
<body>
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
         .p-login .lnk-user .infor-forget{display:none;}
        .p-login .lnk-user:hover .infor-forget{display:block;}
        .p-login .lnk-user{padding-bottom:3px;}
  </style>
    
 
<%@include file="//includes/headerad.jsp" %>
<%@include file="//includes/message.jsp" %>
<%
 			User_infoDAO aduser_infoDAO = new User_infoDAO();
			UsersDAO adser_users = new UsersDAO();
			List<User_info> liststudent = new ArrayList<User_info>();
			List<User_info> listteacher = new ArrayList<User_info>();
			
			boolean UpdateInforUser ;
			User_info UpdateUS = new User_info();
			
			liststudent = aduser_infoDAO.getallstudent();
			List<Infotaikhoan> listtaikhoan = new ArrayList<Infotaikhoan>();
			listtaikhoan=aduser_infoDAO.getalltaikhoan();
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


<script type="text/javascript">
    /* <![CDATA[ */
    var google_conversion_id = 960383489;
    var google_custom_params = window.google_tag_params;
    var google_remarketing_only = true;
    /* ]]> */
</script>

<script type="text/javascript" src="./hocvien_files/conversion.js.tải xuống">
</script>
<!--
<iframe name="google_conversion_frame" title="Google conversion frame" width="300" height="13" src="./hocvien_files/saved_resource.html" frameborder="0" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no">
</iframe>
-->

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

      <h3>Danh sách tài khoản </h3> 

      </br>
      
      <div class="container">
                <!-- Tìm kiếm-->
                <!-- Modal -->
                <%
					int stt =0;
					for(Infotaikhoan student: listtaikhoan ){
						stt++;			
				%>
                  <div class="modal fade" id="myModalCTTK<%=student.getUserID() %>" role="dialog">
                    <div class="modal-dialog modal-md">
                      <div class="modal-content">
                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal">&times;</button>
                          <h4 class="modal-title">Thông tin chi tiết tài khoản</h4>
                        </div>
                        <div class="modal-body">
                        <div class="row">
						  <div class="col-xs-6">
						  <div class="bpt-item-left">ID</div>
                            <div class="bpt-item-right">
                             <input disabled="disabled" name="updateuserID" id="updateuserID<%=student.getUserID() %>" type="text" value="<%=student.getUserID()%>" maxlength="30"  class="bpt-txt">
                          </div></div>
						  <div class="col-xs-6"> <div class="bpt-item-left">Họ Tên</div>
                            <div class="bpt-item-right">
                             <input name="updateuserten"  id ="updateuserten<%=student.getUserID() %>" type="text" value="<%=student.getUserten()%>" maxlength="30"  class="bpt-txt">
                          </div></div>
						</div>
						 <div class="row">
						 <div class="col-xs-6">
						  	<div class="bpt-item-right">Giới tính:</div>
                          	<span class="sp-right">
							<select name="gioitinh" id="updateusergioitinh<%=student.getUserID() %>" class="bpt-sl-date">
							<option value="0">Nam</option>
							<option value="1">Nữ</option>
								</select> 
							</span>
						</div>
						<div class="col-xs-6"> 
						<div class="bpt-item-left">Ngày Sinh</div>
                            <div class="bpt-item-right">
                             <input style="width: 172px;" name="updateuserngaysinh" id="updateuserngaysinh<%=student.getUserID() %>" type="date" value="<%=student.getUserngaysinh()%>" maxlength="30"  class="bpt-txt">
                          </div>
                        </div>
						</div>
						<div class="row">
						  <div class="col-xs-6"><div class="bpt-item-left">Tài khoản</div>
                            <div class="bpt-item-right">
                             <input disabled="disabled" name="adminThongtinchitiethoten" type="text" value="<%=student.getUserName()%>" maxlength="30" class="bpt-txt">
                          </div></div>
						  <div class="col-xs-6">
						  <div class="bpt-item-left">Email
                          </div>
                            <div class="bpt-item-right">
                             <input name="updateusermail" id="updateusermail<%=student.getUserID() %>" type="text" value="<%=student.getUserEmail()%>" maxlength="30 class="bpt-txt">
                          </div> 
                          </div>
						</div>   
						<div class="row">
						<div class="col-xs-6">  
                          <div class="bpt-item-left">Địa chỉ</div>
                            <div class="bpt-item-right">
                             <input name="updateuserdiachi" id="updateuserdiachi<%=student.getUserID() %>" type="text" value="<%=student.getUserdiachi()%>" maxlength="30" class="bpt-txt">
                          </div>
                          </div>
                         <div class="col-xs-6">  
                          <div class="bpt-item-right">Quyền:</div>
                          <span class="sp-right">
							<select name="quyen"
							id="quyen<%=student.getUserID() %>" class="bpt-sl-date">
							<option value="0">Admin</option>
							<option value="1">Giảng viên</option>
							<option value="2">Học viên</option>
							</select> 
							</span>
							</div>
							<script type="text/javascript">
								var x = '<%=student.getUserquyen()%>';
								var y = '<%=student.getUsergioitinh()%>';
								var id='<%=student.getUserID() %>';
								$('#quyen'+id+' option[value=' + x + ']') .attr( 'selected', 'selected');						
								$('#updateusergioitinh'+id+' option[value=' + y + ']') .attr( 'selected', 'selected');
							</script>
							
						</div>
                        <div class="row">
						  <div class="col-xs-6">
						 <div class="bpt-item-left">Số điện thoại</div>
                            <div class="bpt-item-right">
                             <input name="updateusersdt" id="updateusersdt<%=student.getUserID() %>" type="text" value="<%=student.getUsersodienthoai()%>" maxlength="30" class="bpt-txt">
                          </div>
						  </div>					  
						  <div class="col-xs-6">
							 <button type="button" class="btn btn-info btn-sm "id = "updateuser<%=student.getUserID()%>" name ="updateuser">Chỉnh sửa tài khoản</button>
	                         <button type="button" class="btn btn-warning btn-sm" id ="deleteuser<%=student.getUserID()%>" name ="deleteuser">Xóa tài khoản</button>
						  </div>
						  
						  <div class="col-xs-6">
						   <div class="bpt-item-left">Ảnh đại diện:</div>
                          <div class="bpt-img-avarta">
								<img src="upload/<%=student.getAnhdaidien()%>"name=""
									id="" alt="Anhdaidien" height="80px">
							</div>
						  </div>				  
							</div>
                          </div>
                          <input type="hidden" id="anhdaidien<%=student.getUserID()%>" value="<%=student.getAnhdaidien()%>">
      							<script type="text/javascript">
                       $('#updateuser'+<%=student.getUserID()%>).click(function(){
                    	   
	               			  $.post('UsersServlet', {'command': "updateuser",
	               				'user_id':<%=student.getUserID()%>,
	               				'email':$('#updateusermail'+<%=student.getUserID() %>).val(),
	               				'gioitinh':$('#updateusergioitinh'+<%=student.getUserID() %>).val(),
	               				'namsinh':$('#updateuserngaysinh'+<%=student.getUserID() %>).val(),
	               				'ten':$('#updateuserten'+<%=student.getUserID() %>).val(),
	               				'sodienthoai':$('#updateusersdt'+<%=student.getUserID() %>).val(),
	               				'diachi':$('#updateuserdiachi'+<%=student.getUserID() %>).val(),
	               				'anhdaidien':$('#anhdaidien'+<%=student.getUserID() %>).val(),
	               				'user_quyen':$('#quyen'+<%=student.getUserID() %>).val()}
	               				,function (data) {
		               	          	if(data=="update success!")
		               	          		window.location.reload();
		               	          	else
		               	          		alert(data);
	               	           },'text')
	               	       
	               	          
	               	           
                         }); 
                         $('#deleteuser'+<%=student.getUserID()%>).click(function(){
	                         {
	                        	 if(confirm("Xóa user "+$('#updateuserten'+<%=student.getUserID()%>).val()+". Đồng ý?")==true)
	     								{                        
	     	                        	 $.post('UsersServlet', {'command': "deleteuser_userinfo",
	     	 	               				'userid_delete':<%=student.getUserID()%>}
	     	 	               				,function (data) {
	     	 		               	          	if(data=="Delete success!")
	     	 		               	          		window.location.reload();
	     	 		               	          	else
	     	 		               	          		alert(data);
	     	 	               	           },'text')
	     								}
	                         }
                         });
                         </script>
                          </br>
                     
                          <!-- Modal -->
                        </div>
                        
                        <div class="modal-footer"
                       
                          <button type="button" class="btn btn-primary btn-xs" data-dismiss="modal">Đóng</button>
                       
                      </div>
                      
                    </div>
                    
                  </div>
                  <%} %>
                   <!-- Thêm mới  -->
                   
                <button type="button" class="bpt-lnk-save btn-login" data-toggle="modal" data-target="#myModal2">Thêm mới</button>
  				<form action = "UsersServlet" method = "post">
                  <div class="modal fade" id="myModal2" role="dialog">
                    <div class="modal-dialog modal-sm">
                      <div class="modal-content">
                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal">&times;</button>
                          <h4 class="modal-title">Thêm mới</h4>
                          <p style="color: red; font-style: italic; padding-left: 15px" id="errorregister" name="errorregister"></p>
                          
                        </div>
                        <div class="modal-body">
                          <div class="bpt-item-left">User</div>
                            <div class=" ">
                             <input name="username-register" type="text" value="" maxlength="30" id="addusername" class="bpt-txt">
                          </div>
                          <div class="bpt-item-left">Password</div>
                            <div class="bpt-item-right">
                             <input name="pass-register" type="text" value="" maxlength="30" id="addpass" class="bpt-txt">
                          </div>
                           <div class="bpt-item-left">Nhập lại mật khẩu</div>
                            <div class="bpt-item-right">
                             <input name="pass-register2" type="text" value="" maxlength="30" id="addpass" class="bpt-txt">
                          </div>
                          <div class="bpt-item-left">Email</div>
                            <div class="bpt-item-right">
                             <input name="email-register" type="text" value="" maxlength="30"  id="addemail" class="bpt-txt">
                          </div>  
                          <div class="bpt-item-left">Tên người dùng</div>
                            <div class="bpt-item-right">
                             <input name="name" type="text" value="" maxlength="30"  id="addname" class="bpt-txt">
                          </div> 
                          <div class="bpt-item-left">Số điện thoại</div>
                            <div class="bpt-item-right">
                             <input name="sdt" type="text" value="" maxlength="30" id="addsdt" class="bpt-txt">
                          </div> 
							<span class="sp-left">Giới tính</span> <span class="sp-right">
								<div class="bpt-item-right">
									<select name="gioitinh" id="addgioitinh" class="bpt-sl-sex">
										<option >Chọn giới tính</option>
										<option value="0"selected="selected">Nam</option>
										<option value="1">Nữ</option>

									</select>
								</div>
							</span>
						<span class="sp-left">Quyền:</span> <span class="sp-right">
						<select name="quyen"
						id="addquyen" class="bpt-sl-date">
									<option selected="selected" value="0">Admin</option>
									<option value="1">Giảng viên</option>
									<option value="2">Học viên</option>
							</select> 
							</span>
                          </br>
                          <span class="sp-left">Ngày sinh:</span> <span class="sp-right">
								<select name="ngaysinh"
								id="addngaysinh" class="bpt-sl-date">
									<option value="0">Ngày</option>
									<option selected="selected" value="1">1</option>
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

							</select> 
							<select name="thangsinh"
								id="addthangsinh" class="bpt-sl-month">
									<option value="0">Tháng</option>
									<option selected="selected" value="1">1</option>
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

							</select> 
							<select name="namsinh"
								id="addnamsinh" class="bpt-sl-date">
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

							</select>
							</span> 
							
							<div class="bpc-row" style="margin-top: 0px;">
								<span class="sp-left"></span>
								<span class="sp-right"> 
								<a id="addregister" name="addregister"
								class="bpt-lnk-save btn-login">Thêm mới </a>
								<input	type="hidden" name="command" value="insert">
								</span>
								<script type="text/javascript">
                           			
								$('#addregister').click(function(){  
                       			$.post('UsersServlet', {'command': "insert",'email-register':$('#addemail').val(),'gioitinh':$('#addgioitinh').val(),
          		        			  'namsinh':$('#addnamsinh').val(),'thangsinh':$('#addthangsinh').val(),'ngaysinh':$('#addngaysinh').val(),'name':$('#addname').val(),'sdt':$('#addsdt').val(),
          		        			  'username-register':$('#addusername').val(),'pass-register':$('#addpass').val(),'quyen':$('#addquyen').val()}, function (data) {
          		                  	if(data=="")
          		                  		window.location.href="admin_quanlytaikhoan.jsp";
          		                  	else
          		                  		$('#errorregister').html(data);
          		                   },'text'); 
                       			});
                       		               			
                        		</script>
						</div>	
                          <!-- Modal -->
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                        </div>
                      </div>
                    </div>
                  </div>
                  </form>
                 
      </div>

      
                
      <td style="width:1%;">&nbsp;</td><td style="width:99%;">
      <table cellspacing="1" cellpadding="1" width="100%">
      <tbody>
      <tr><td height="3" colspan="4"></td></tr>
      <tr><td><table cellspacing="0" cellpadding="0" width="100%">
      <tbody>
      <tr><td class="studyprogram_tabledetails_td_header_dl" width="5%">STT</td>
      <td class="studyprogram_tabledetails_td_header_dl" width="15%">ID</td>
      <td class="studyprogram_tabledetails_td_header_dl" width="20%">Tên</td>
      <td class="studyprogram_tabledetails_td_header_dl" width="20%">Tài khoản</td>
      <td class="studyprogram_tabledetails_td_header_dl" width="20%">Ngày sinh</td>
      <td class="studyprogram_tabledetails_td_header_dl" width="10%">Địa chỉ</td>
      <td class="studyprogram_tabledetails_td_header_dl" width="10%">Chi tiết</td></tr>
			<%
					int ktt =0;
					for(Infotaikhoan student: listtaikhoan  ){
						ktt++;				
				%>
					<tr>
						<td class="studyprogram_tabledetails_td_content_dl">&nbsp;<%=ktt%></td>
						<td class="studyprogram_tabledetails_td_content_dl">&nbsp;<%=student.getUserID()%></td>
						<td class="studyprogram_tabledetails_td_content_dl">&nbsp;<%=student.getUserten()%></td>
						<td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;<%=student.getUserName()%></td>
						<td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;<%=student.getUserngaysinh()%></td>
						<td class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;<%=student.getUserdiachi() %></td>
						<td class="studyprogram_tabledetails_td_content_dl"><a data-toggle="modal" data-target="#myModalCTTK<%=student.getUserID() %>">Chi tiết</a></td>
					</tr>
					
						<input id="adminThongtinchitiettk" type="hidden" name ="adminThongtinchitiettk" value="<%=student.getUserID()%>">
					
					<%} %>
      <tr>
      </tbody>
      </table>
      </td></tr>
      </tbody>
      </table>
      </td>
    </tr><tr>


        <!--Alert-->
        

<div class="study-notice">   
</div>



<script type="text/javascript">
      $(document).ready(function () {
    	  
    	  var checkuser,checkemail,errorregister;
    	  checkuser="";
    	  checkemail="";
    	  errorregister="";
           var x_timer;
           $("#email-register").keyup(function (e) {
                clearTimeout(x_timer);
                var email = $(this).val();
                x_timer = setTimeout(function () {
                	check_email_ajax(email);
                }, 1000);
                });
 
           function check_email_ajax(email) {
                $("#email-register-result").html('<img src="Images/ajax-loader.gif" />');
                $.post('CheckEmailServlet', {'email-register': email,'checkemail':checkemail}, function (data) {
                	//$("#email-register-result").html(data);	
                	var txtEmail = $("#email-register").val();
                	if(data=="" && validateEmail(txtEmail))
                		{
             		   		$("#email-register-result").html("<img src=\"Images/available.png\"/>");
             		   		checkemail="";
                		}
             	   else
             		  {
             		   
             		   if(!validateEmail(txtEmail))
             			  checkemail = "\nEmail không hợp lệ (exam:study@gmail.com)"
             			  else if(data!="")
                			  checkemail =data;
             			$("#email-register-result").html("<img src=\"Images/not-available.png\"/>");
             		  }
                 },'text');			
           }
               function validateEmail(email) {
                   var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
                   //hoặc var re=/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
                   return re.test(email);
               }        
           var x_timer;
           $("#username-register").keyup(function (e) {
               clearTimeout(x_timer);
               var user_name = $(this).val();
               x_timer = setTimeout(function () {
            	   check_username_ajax(user_name);
               }, 1000);
               });
          function check_username_ajax(username) {
               $("#user-register-result").html('<img src="Images/ajax-loader.gif" />');
               $.post('CheckUserServlet', {'username': username,'checkuser':checkuser}, function (data) {
            	   if(data=="")
            		   {
            		   	$("#user-register-result").html("<img src=\"Images/available.png\"/>");
            		   	checkuser="";
            		   }
            	   else
            		  {
            			$("#user-register-result").html("<img src=\"Images/not-available.png\"/>");
            			checkuser =data;
            		  }
                },'text');
          }
          $('#register').click(function(){
        	  errorregister="";
        	  errorregister = errorregister + checkuser + checkemail;
        	  $("#errorregister").empty();
        	  if(errorregister!="")
        		  {
	        	  	$("#errorregister").html(errorregister);
        		  }
        	  else
        		  {
        		  if($('#email-register').val()=="" || $('#gioitinh').val()=="-1" || $('#namsinh').val()=="0" ||
        				  $('#thangsinh').val()=="0" || $('#ngaysinh').val()=="0" || $('#name').val()==""||
        				  $('#sdt').val()=="" || $('#username-register').val()=="" || $('#pass-register').val()=="")
        			  {
        			  	$('#errorregister').html("Chưa nhập đủ thông tin! ");
        			  }
        		  else if($('#pass-register').val() != $('#pass-register2').val())
        			  {
        			  $('#errorregister').html("Xác nhận mật khẩu sai! ");
        			  }
        		  else
        			  {
        			  alert($('#email-register').val() + $('#gioitinh').val()+ $('#namsinh').val()+
            				  $('#thangsinh').val()+ $('#ngaysinh').val()+ $('#name').val()+
            				  $('#sdt').val()+ $('#username-register').val()+ $('#pass-register').val())
		        		  $.post('UsersServlet', {'command': "insert",'email-register':$('#email-register').val(),'gioitinh':$('#gioitinh').val(),
		        			  'namsinh':$('#namsinh').val(),'thangsinh':$('#thangsinh').val(),':$('#ngaysinh').val(),'name':$('#name').val(),'sdt':$('#sdt').val(),
		        			  'username-register':$('#username-register').val(),'pass-register':$('#pass-register').val()}, function (data) {
		                  	if(data=="")
		                  		window.location.href="index.jsp";
		                  	else
		                  		$('#errorregister').html(data);
		                   },'text');
        			  }
        		  }
          })

       });
</script>            
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
 
        </div>
        
        <div class="persion-right persion-detail" id="TienTrinhHocNew">
        </div>
          <div class="persion-right persion-detail" id="QuanLyCommentNew" style="display: none;">
        </div>
          <div class="persion-right persion-detail" id="LichSuGiaoDichNew" style="display: none;">
        </div>
        
        <div class="persion-right" id="DetailThi" style="display: none;">
            <div id="ctl14_TienTrinhThi_upThi">
  

<div class="box-persion process-exam">
</div>
<div id="ctl14_TienTrinhThi_UpdateProgress1" style="display:none;">

</div> 


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
        
        <div class="persion-right" id="DetailDMK" style="display: none;">
            
<script>
    function ChapNhan() {
        document.getElementById('ctl14_DoiMatKhau_btnDoiMK').click();
    }
</script>

<div id="ctl14_DoiMatKhau_upDoiMK">
  
<div style="display: block;" class="bpt-content" id="doimk">
    <h3 class="learn-process-h3">
        <span>ĐỔI MẬT KHẨU</span>
    </h3>
    <div class="bpt-row">
        <div class="bpt-item-left">
            Mật khẩu cũ:</div>
        <div class="bpt-item-right">
            <input name="ctl14$DoiMatKhau$txtMatKhauCu" type="password" maxlength="30" id="ctl14_DoiMatKhau_txtMatKhauCu" class="bpt-txt" autocomplete="off" onkeydown="var key = event.keyCode || event.which; if (key == 13){ChapNhan();return false;} return true;">
        </div>
        <div class="bpt-item-left">
        </div>
        <div class="bpt-item-right">
            <span id="ctl14_DoiMatKhau_lblErrMatKhauCu"></span>
        </div>
    </div>
    <div class="bpt-row">
        <div class="bpt-item-left">
            Mật khẩu mới:</div>
        <div class="bpt-item-right">
            <input name="ctl14$DoiMatKhau$txtmatKhauMoi" type="password" maxlength="30" id="ctl14_DoiMatKhau_txtmatKhauMoi" class="bpt-txt" autocomplete="off" onkeydown="var key = event.keyCode || event.which; if (key == 13){ChapNhan();return false;} return true;">
        </div>
        <div class="bpt-item-left">
        </div>
        <div class="bpt-item-right">
            <span id="ctl14_DoiMatKhau_lblErrMatKhauMoi"></span>
        </div>
    </div>
    <div class="bpt-row">
        <div class="bpt-item-left">
            Nhập lại mật khẩu</div>
        <div class="bpt-item-right">
            <input name="ctl14$DoiMatKhau$txtXnMatKhauMoi" type="password" maxlength="30" id="ctl14_DoiMatKhau_txtXnMatKhauMoi" class="bpt-txt" autocomplete="off" onkeydown="var key = event.keyCode || event.which; if (key == 13){ChapNhan();return false;} return true;">
            
        </div>
        <div class="bpt-item-left">
        </div>
        <div class="bpt-item-right">
            <span id="ctl14_DoiMatKhau_lblErrXnMatKhauMoi"></span>
        </div>
    </div>
    
    <div class="bpt-row" style="margin-top:0px;">
        <div class="bpt-item-left">
        </div>
        <div class="bpt-item-right">
            <span id="ctl14_DoiMatKhau_lblErr"></span>
        </div>
    </div>
    <div class="bpt-row bpt-row-save" style="margin-top:0px;">
        <a id="ctl14_DoiMatKhau_btnDoiMK" name="btnDoiMK" class="bpt-lnk-save" href="javascript:__doPostBack(&#39;ctl14$DoiMatKhau$btnDoiMK&#39;,&#39;&#39;)"> Đồng ý </a>
        <input type="hidden" name="TokenCSRF_Doimk" value="0041A73EF7922FC7BEE66A04DE372592C9CB63049AF5C24FD87AF7F5E6FB68DC964B1FE1CE344ABA35295B4330A087917220EC7E6E90A7EA4DAFC56D07FE9DD6">
    </div>
    
</div>

</div>
<div id="ctl14_DoiMatKhau_UpdateProgress1" style="display:none;">
  
    <div class="bpt-row">
        <div class="bpt-item-left"></div>
        <div class="bpt-item-right">
            <img src="./hocvien_files/ajax-loader.gif" alt="ViettelStudy">
        </div>
    </div>
</div> 
s
  


<script type="text/javascript">
    function refreshCaptcha(capchaid, capchlength) {

        $('.capcha').attr('src', './uControls/Capcha/capchaImage.aspx' + '?id=' + capchaid + '&len=' + capchlength + '&r=' + Math.random());
    }
</script>
        </div>
        <div class="persion-right" id="DetailUser" style="display: block;">
<script type="text/javascript">
function refreshCaptcha(capchaid, capchlength) {
        $('#capcha').attr('src', './uControls/Capcha/capchaImage.aspx' + '?id=' + capchaid + '&len=' + capchlength + '&r=' + Math.random());
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
    <img alt="Go to top!" src="./hocvien_files/gototop.png"></a>
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
        <div class="bp-content">
            <p style="padding-left: 15px;">
                Bạn vui lòng đăng nhập để tiếp tục học tập trên ViettelStudy</p>
            <div id="login_pnLogin">
  
                    <div class="bpc-row">
                        <span class="sp-left">Số điện thoại</span> <span class="sp-right">
                            <input name="login$txtTaiKhoan" type="text" maxlength="15" id="login_txtTaiKhoan" class="bpc-txt" autocomplete="off" onkeypress="return clickButton(event,&#39;login_btnDangNhap&#39;)">
                            <input type="hidden" name="login$hfISMSDN" id="login_hfISMSDN">
                            <input type="hidden" name="login$hfDem" id="login_hfDem">
                        </span>
                    </div>
                    <div class="bpc-row">
                        <span class="sp-left">Mật khẩu</span> <span class="sp-right">
                            <input name="login$txtmatKhau" type="password" maxlength="30" id="login_txtmatKhau" class="bpc-txt" autocomplete="off" onkeypress="return clickButton(event,&#39;login_btnDangNhap&#39;)"></span>
                    </div>
                    
                    <div class="bpc-row">
                        <span class="sp-left"></span><span class="sp-right">
                            
                            <span class="sp-remember">
                                <input id="login_cbkRLogin" type="checkbox" name="login$cbkRLogin"><label for="login_cbkRLogin">Duy trì đăng nhập</label></span>
                            <span class="sp-forget-pass" style="">
                            <p class="btn-forget under" style="margin: 0px; line-height: 28px">
                                Quên mật khẩu?</p> 
                            <span class="infor-forget">Khách hàng Viettel, soạn: <strong>VTS</strong>
                                    gửi <strong>5005</strong> (0đ)<br>
                                    
                                </span></span></span>
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
                    <div class="bpc-row" style="margin-top: 0px;">
                        <span class="sp-error">
                            <span id="login_lblErr"></span>
                        </span>
                    </div>
                    <div class="bpc-row" style="margin-top: 0px;">
                        <span class="sp-left"></span><span class="sp-right">
                            <input type="submit" name="login$btnDangNhap" value="Đăng nhập" onclick="btnDangNhap_OnClientClick();" id="login_btnDangNhap" class="bpt-lnk-save btn-login">
                            <input type="hidden" name="TokenCSRF_Login" value="30B28695BF8042E3FBC9E3DC89E3F9D32B7DBF50E5B4CE33A182EF9FC944661299E4A5E837B6788F2155662BB73AA7D78ADE9EF66DE9F590A5F4A0C18ACD7D6C">
                        </span>

                        <script type="text/javascript">
                            function btnDangNhap_OnClientClick() {
                                document.getElementById('login_btnDangNhap').style.visibility = 'hidden';
                                return true;
                            }
                        </script>

                    </div>
                    <div class="group-login-fb" style="display: none;">
                        <p class="login-fb-notice">
                            Hoặc đăng nhập bằng tài khoản
                        </p>
                        <p class="p-login-fb">
                            <a href="http://viettelstudy.vn/LoginExtension/FacebookConnect.aspx">
                                <img src="./hocvien_files/vts_new_06.png"></a> <a class="lnk-g" style="display: none" href="http://viettelstudy.vn/LoginExtension/GoogleConnect.aspx">
                                    <img src="./hocvien_files/vts_new_07.png"></a>
                        </p>
                        <div id="status" style="display: none;">
                        </div>
                    </div>
                
</div>
            <div id="login_UpdateProgress1" style="display:none;">
  
                    <div class="bpc-row">
                        <span class="sp-left"></span><span class="sp-right">
                            <img src="./hocvien_files/ajax-loader.gif" alt="ViettelStudy">
                        </span>
                    </div>
                
</div>
            <div class="bpc-row">
                <span class="sp-right" style="width: 335px;"><span class="pbc-p" style="padding: 0px 0px 10px 15px;
                    font-size: 14px;">Bạn chưa có tài khoản? Mời đăng ký <span class="regis-info">
                    <span class="lnk-regis under">TẠI ĐÂY</span> 
                    <span class="infor-forget" style="font-weight:normal;">Khách hàng Viettel, soạn: <strong>VTS</strong>
                            gửi <strong>5005</strong> (0đ)<br>
                            
                        </span></span></span></span>
            </div>
        </div>
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

<script type="text/javascript">
    function ShowBoxTA() {
        if (confirm("Bạn đang được hưởng KM theo chương trình dành riêng cho KH sử dụng gói cước Sinh Viên: miễn phí khoá học Tiếng Anh cơ bản, giảm giá 50% khi đăng ký khoá học tiếng Anh không giới hạn English Study Pro") == true) {
            window.parent.location = 'http://tienganh1.viettelstudy.vn/viettel/public/course/index/all';
            return true;
        } else {
            window.parent.location = 'index.html';
            return true;
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
        setCookie(cookieName, vl, tomorrow, '/', '', '');
    }

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