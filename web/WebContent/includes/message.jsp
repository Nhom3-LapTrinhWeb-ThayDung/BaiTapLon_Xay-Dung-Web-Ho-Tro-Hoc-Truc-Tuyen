<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page import="model.Resources"%>
<%@page import="javax.swing.text.Document"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
<script type="text/javascript" src="js/search.js"></script>

<%@page import="dao.User_infoDAO"%>
<%@page import="model.User_info"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="dao.MessageDAO"%>
<%@page import="model.Message"%>

<%
	//giảng viên
	User_infoDAO msuser_infoDAO = new User_infoDAO();
	List<User_info> mslistgiangvien = new ArrayList<User_info>();
	mslistgiangvien = msuser_infoDAO.getallteacher();
	String msJSONgiangvien = JSONArray.toJSONString(mslistgiangvien);
	//học viên
	List<User_info> mslisthocvien = new ArrayList<User_info>();
	mslisthocvien = msuser_infoDAO.getallstudent();
	String msJSONhocvien = JSONArray.toJSONString(mslisthocvien);
	
	User_info msuser_info = null;
	MessageDAO messageDAO = new MessageDAO();
	List<Message> listMesageReceive = new ArrayList<Message>();
	if(session.getAttribute("user")!=null && session.getAttribute("user_info")!=null)
	{
		msuser_info = (User_info) session.getAttribute("user_info");
		listMesageReceive = messageDAO.getListReceiveMessage(msuser_info.getId());
	}
	
%>


<style>

#searchuser {
    background-color: #ffffff;
    border: 1px solid #D4D4D4;
    color: #555555;
    font-size: 12px;
    line-height: 16px;
    position: absolute;
    width: 259px;
    z-index: 99999;
    position: fixed; 
    right: 94px; 
    top: 164px;
    display: none;
}
#searchuser a.search-title {
    background: none repeat scroll 0 0 #f2f2f2;
    border-bottom: 1px solid #e6e6e6;
    clear: both;
    color: #555555;
    display: block;
    font-size: 13px;
    font-weight: normal;
    overflow: hidden;
    padding: 2px 5px;
}
#searchuser a.search-title span{font-weight:bold;color:#14928e;}
#searchuser li.item-sugg {clear: both;overflow: hidden;list-style:none;}
#searchuser li.item-sugg h3 {color: #707070;float: left;font-size: 15px;font-weight: normal;height: 30px;line-height: 25px;margin-left: 5px;margin-top: 15px;width: 70px;}
#searchuser li.item-sugg1 h3 {background: url("../Images/icon_search_04.html") no-repeat scroll left top rgba(0, 0, 0, 0);}
#searchuser li.item-sugg2 h3 {background: url("../Images/icon_search_03.html") no-repeat scroll left top rgba(0, 0, 0, 0);}
#searchuser li.item-sugg3 h3 {background: url("../Images/icon_search_02.html") no-repeat scroll left top rgba(0, 0, 0, 0);}
#searchuser li.item-sugg4 h3 {background: url("../Images/icon_search_01.html") no-repeat scroll left top rgba(0, 0, 0, 0);}
#searchuser li.item-sugg ul {background:none repeat scroll 0 0 #eff4f9;border-bottom: 1px solid #e6e6e6;border-left: 1px solid #e6e6e6;float: right;padding: 3px 0;width: 79%;}
#searchuser li.item-sugg a.link-search {clear: both;color: #303030;cursor: pointer;display: block;font-size: 13px;line-height: 18px;overflow: hidden;padding: 5px 5px;}
#searchuser li.item-sugg a.active, #searchuser li.item-sugg a.link-search:hover {background-color: #e5e5e5;}
#searchuser li.item-sugg .image-search {float: left;margin-right: 5px;padding: 2px;}
#searchuser li.item-sugg span {color: #14928e;font-size: 15px;}

</style>	
<div class="vts-gadget">
				<%
					if(session.getAttribute("user")==null || session.getAttribute("user_info")==null)
					{
				%>
				<div class="vts-gadget-item vts-gadget-comment">
         			<a class="vts-gadget-lnk popup-login" rel="#overlay-login" title="Góp ý"></a>
         		</div>
				<%}else{ %>
				<div class="vts-gadget-item vts-gadget-comment">
					<div class="vt-gadget gadget-comment" style="display: none;">
						<span class="vt-gadget-more"> </span>
						<h3 class="vt-gadget-title">
							<span class="vt-gadget-sp"> TIN NHẮN</span> <a
								class="vt-gadget-close" > X </a>
						</h3>
							<div class="wrap-vt-gadget">
						<form>
							<div id="Header1_Widget_GopY_pnGopY">
						<%
							if(msuser_info.getQuyen()==2)
							{
						%>
						<div class="vt-gadget-div-form" id="msradiocheck">
									&nbsp;&nbsp;<input type="radio" name="rdms" value="admin" checked="checked" >Admin
									&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="rdms" value="giangvien" >Giảng Viên
						</div>
						<%}else if(msuser_info.getQuyen()==1){ %>
							<div class="vt-gadget-div-form" id="msradiocheck">
									&nbsp;&nbsp;<input type="radio" name="rdms" value="admin" checked="checked">Admin
									&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="rdms" value="hocvien" >Học viên
						</div>
						<%}else if(msuser_info.getQuyen()==0){ %>
							<div class="vt-gadget-div-form" id="msradiocheck">
									&nbsp;&nbsp;<input type="radio" name="rdms" value="giangvien" >Giảng Viên
									&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="rdms" value="hocvien" >Học viên
						</div>
						<%} %>

								<div class="vt-gadget-div-form">
									<span class="vt-gadget-label"> Người nhận: <input  onfocus="SearchOnFocus(this)" onblur="SearchOnBlur(this)" id="txtsearchuser"  type="text" style="display:none; width: 185px;height: 20px"><span id="user_name" >Admin</span></span>
									<input type="hidden" id="id_nguoinhan" name="id_nguoinhan" value=0>
								</div>
								<div class="vt-gadget-div-form">
									<span class="vt-gadget-label"> Nội dung </span>
									<p class="vt-gadget-p">
										<textarea name="noidung_message" rows="2"
											cols="20" id="noidung_message"
											class="vt-gadget-txtarea" placeholder="Nội dung"></textarea>
									</p>
								</div>
								
								
								<div class="vt-gadget-div-form gadget-captcha">
									
									<div class="vt-gadget-p">
									 <input type="button" name="btnguims"
											value="Gửi"
											onclick="btnguimsclick()"
											id="btnguims" class="vt-gadget-btn-send">
										
									</div>
								</div>
							</div>
						</form>
						<a id="showms" style="float:right;right:20px;color:#5e5e5e;">xem tin nhắn đến</a>
						</div>
						
					
						<div class="wrap-vt-gadget" id="divshowms" style="display:none;height: 200px;overflow-y: auto;">
						<%
							for(Message ms : listMesageReceive)
							{
								User_info sender = msuser_infoDAO.getUser_info(ms.getId_nguoigui());
						%>
						<div class="vt-gadget-div-form">
									<span class="vt-gadget-label"> Người gửi: <%=sender.getTen() %><span></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="float:right;"> <%=ms.getThoigian() %> </span></span>
						</div>	
							<div class="vt-gadget-div-form">
									<p class="vt-gadget-p">
										<textarea name="noidung_message" rows="2"
											cols="20" id="noidung_message"
											class="vt-gadget-txtarea" style="height:40px;" readonly="readonly"><%=ms.getNoidung() %></textarea>
									</p>
							</div>
							<div class="vt-gadget-div-form gadget-captcha">
									
									<div class="vt-gadget-p">
									 <input type="button" name="btnguims"
											value="Trả lời"
											onclick="btntlmsclick('<%=ms.getId_nguoigui() %>','<%=sender.getTen()%>')"
											id="btnguims" class="vt-gadget-btn-send">
										
									</div>
								</div>
							<%} %>
						</div>
							
							<div id="Header1_Widget_GopY_UpdateProgress1"
								style="display: none;">

								<div class="bpc-row">
									<span class="sp-left"></span> <span class="sp-right"> <img
										src="Images/ajax-loader.gif">
									</span>
								</div>

							</div>
							
						
					</div>
					<script type="text/javascript">

						function btntlmsclick(id,name){
							$('#id_nguoinhan').val(id);
							$('#user_name').text(name);
							$('#user_name').show();
						}
						function btnguimsclick(){
							
							if(trim($('#noidung_message').val())=="")
							{
								alert('Chưa nhập nội dung');
							}
							else
							{
								
								$.post('MessageServlet', {'command':"insert",'noidung_message':$('#noidung_message').val(),'id_nguoinhan':$('#id_nguoinhan').val()}, function (data) {
									if(data=="send success!"){
										alert('Gửi tin nhắn đến '+$('#user_name').text()+' thành công!');
										$('#noidung_message').val(' ');
									}
									else
										alert(data)
								},'text');
								
							}
						}
					</script>


					<script type="text/javascript">
						function refreshCaptcha(capchaid, capchlength) {
							$('#capcha').attr(
									'src',
									'./uControls/Capcha/capchaImage.aspx'
											+ '?id=' + capchaid + '&len='
											+ capchlength + '&r='
											+ Math.random());
						}

						function exitpopup() {
							setTimeout(function() {
								window.location.href = 'index.jsp'; //will redirect to your blog page (an ex: blog.html)
							}, 2000);

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




					<a class="vts-gadget-lnk show-popup" title="Góp ý"> </a>


				</div>
				<%} %>
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
            <h2 class="vt-gadget-h1-hotline">Hotline 0962126964 <br>
              <span style="font-size:15px">(miễn phí)</span></h2>
                  <p>Email: <a href="mailto:congtuhot9.9@gmail.com" style="color:#14928E">StudyFunny@gmail.com</a></p>
                  <p class="vt-gadget-p-content">
                    Hỗ trợ giải đáp tất cả thắc mắc về các khóa học cách học và cách thức học tập trên StudyFunny
                  </p>
                <a rel="nofollow" class="vt-gadget-lnk-fb" href="https://www.facebook.com/StudyFunny">Study Funny</a>
        </div>
    </div>
    	 <a class="vts-gadget-lnk show-popup" title="Liên hệ">
         	
         </a>	
    </div>
    <%if(request.getParameter("course_id")!=null && msuser_info.getQuyen()==2){
    %>
	    <div class="vts-gadget-item vts-gadget-user">
	        
	         <a class="vts-gadget-lnk popup-login" href="Review.jsp?course_id=<%=request.getParameter("course_id")%>" title="Đánh giá">
	         </a>	
	         
	    </div>
	    <%} %>
	</div>

			<div  id="searchuser" class="suggestion">
			</div>
		
		<script type="text/javascript">
			$('#msradiocheck [name="rdms"]').change(function() {
					if(this.value=="giangvien" || this.value=="hocvien" )
					{
						$('#txtsearchuser').fadeIn(100);
						$('#user_name').hide();
						$('#txtsearchuser').focus();
					}
					else if(this.value=="admin")
					{
						$('#txtsearchuser').hide();
						$('#user_name').text('Admin');
						$('#user_name').show();
						$('#id_nguoinhan').val('0');
					}

			});
			
			$('#showms').click(function(){
				$('#divshowms').slideToggle();
			});
		</script>
		<script type="text/javascript">
		$('#txtsearchuser').keyup(function(event) {
			
	        searchValue = $(this).val();
	        offs = searchValue.length;
	        //delaySearch(function() {
	        var timerCallback = function() {
		    	searchfunction();
	            suggesstionFunc2();
	        };
	        clearTimeout(timer);
	        timer = setTimeout(timerCallback, 200);
	        //}, 500);
	    });
		$('#txtsearchuser').blur(function(event) {

	        setTimeout("$('#searchuser').fadeOut(50);", 300);
	    });
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
		function suggesstionFunc2() {
		    if (searchValue.length < 1) {
		        $('#searchuser').fadeOut(100);
		    } else {
		    	$('#searchuser').fadeIn(200);
		    }
		   
		}
		
		function searchfunction()
		{	
			var list=null;
			if($('#msradiocheck input[type="radio"][name="rdms"]:checked').val()=="giangvien"){
				
				/* giảng viên */
				var giangvienjs = <%=msJSONgiangvien%>;
		        var Searchgiangvien = function (strgiangvien) {
		        	strgiangvien = unsignString(trim(strgiangvien));
		        	var result=[giangvienjs[0]];
		            var i = null;
		            for (i = 0; giangvienjs.length > i; i += 1) {
		                if (unsignString(trim(giangvienjs[i].id)).search(strgiangvien)!=-1 
		                		|| unsignString(trim(giangvienjs[i].ten)).search(strgiangvien)!=-1
		                		|| unsignString(trim(giangvienjs[i].email)).search(strgiangvien)!=-1) {
		                	result.push(giangvienjs[i]);
		                }
		            }
		            if(result)
		            	 return result;
		            return null;
		        };
		        list= Searchgiangvien($('#txtsearchuser').val());
			
			}
			else if($('#msradiocheck input[type="radio"][name="rdms"]:checked').val()=="hocvien")
			{
			
				/* học viên */
				var hocvienjs = <%=msJSONhocvien%>;
		        var Searchhocvien = function (strhocvien) {
		        	strhocvien = unsignString(trim(strhocvien));
		        	var result=[hocvienjs[0]];
		            var i = null;
		            for (i = 0; hocvienjs.length > i; i += 1) {
		                if (unsignString(trim(hocvienjs[i].id)).search(strhocvien)!=-1 
		                		|| unsignString(trim(hocvienjs[i].ten)).search(strhocvien)!=-1
		                		|| unsignString(trim(hocvienjs[i].email)).search(strhocvien)!=-1) {
		                	result.push(hocvienjs[i]);
		                }
		            }
		            if(result)
		            	 return result;
		            return null;
		        };
		        list= Searchhocvien($('#txtsearchuser').val());
			}
	        var resHtml = '';
      	  var hasResult = false;
      	  resHtml += '<ul> '
                + '<li><a class="search-title"> Tìm kiếm với <span>"' + $('#txtsearchuser').val() + '"</span></a></li>';
                if (list.length > 1) {
                    hasResult = true;
                    resHtml += '<li class="item-sugg item-sugg1">'
                  + '<ul>';
                  	for (i = 1; list.length > i; i += 1) {
                        resHtml += '<li><a class="bold link-search"  onmouseup="clicksearuser(\''+list[i].ten+'\',\''+list[i].id+'\')"><img width="31" height="17" src="upload/' + list[i].anhdaidien+ '" class="image-search"/>'+list[i].id+'-' + list[i].ten + '</li></a></li>';;
                       
                  	}
                    resHtml += '</ul></li>';
                    
                }
			
                if (hasResult)
      		  {
                  $('#searchuser').html(resHtml);
      		  }
              else
                  $('#searchuser').html('<ul><li><a class="search-title"> Không tìm thấy kết quả nào cho "' + $('#txtsearchuser').val()
                + '"</a></li></ul>');
		}
		</script>
		<script>
			function clicksearuser(name,id){
				$('#user_name').text(name);
				$('#txtsearchuser').val(name);
				$('#id_nguoinhan').val(id);
			}
		</script>
		
		
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
        });
    </script>
    
    
    <script type="text/javascript">
   

    function SearchOnFocus(field) {
        if (field.value == 'Từ khóa tìm kiếm') { field.value = ''; }
    }

    function SearchOnBlur(field) {
        if (field.value == '') { field.value = 'Từ khóa tìm kiếm'; }
    }

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