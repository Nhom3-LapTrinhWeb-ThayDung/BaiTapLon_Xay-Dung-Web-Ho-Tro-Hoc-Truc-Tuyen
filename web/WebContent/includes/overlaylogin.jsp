<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<script type="text/javascript" src="js/overlay2.js"></script>

		<div
		style="width: 392px; position: fixed; z-index: 0; top: 66.2px; left: 478.5px; display: none;"
		id="overlay-login">
		<a class="close"></a>
		<style type="text/css">
.sp-remember {
	float: left;
	width: 125px;
	margin-top: 5px;
	margin-bottom: 5px;
}

.sp-remember input {
	margin-right: 5px;
}

.LBD_CaptchaDiv {
	display: inline;
}
</style>
		<form action="UsersServlet" method="post">
			<div class="box-popup">
				<a class="popup-close">X </a>
				<h3 class="bp-title">Đăng nhập</h3>
				<div class="bp-content">
					<p style="padding-left: 15px;">Bạn vui lòng đăng nhập để tiếp
						tục học tập trên Study Funny</p>

					<%-- <font color="red"><c:if test="${not empty param.errMsg}">	
	            <c:out value="${param.errMsg}" />
	            </c:if></font> --%>
					<script type="text/javascript">
	            	$(document).ready(function(){
	            		String error="";
	            	})
	            	
	            </script>
					<%-- <% if(request.getParameter("error")!=null){%>
					<div>
						<font color="red"> <%=request.getParameter("error") %>
						</font>
					</div>
					<%}%> --%>
					<div class="bpc-row" id="qưe">
						<span class="sp-left"><input type="radio" name='quyen'
							value="2" checked="true">Học Viên</span> <span class="sp-left"><input
							type="radio" name='quyen' value="1">Giảng Viên</span> <span
							class="sp-left"><input type="radio" name='quyen' value="0">Admin</span>
					</div>

					<div id="login_pnLogin">
					<div class="bpt-item-right">
						<p style="color: red; font-style: italic; padding-left: 15px" id="errorlogin" name="errorlogin"></p>
					</div>
						<div class="bpc-row">
							<span class="sp-left">User</span> <span class="sp-right">
								<input name="username" type="text" maxlength="15" id="username"
								class="bpc-txt">

							</span>
						</div>
						<div class="bpc-row">
							<span class="sp-left">Password</span> <span class="sp-right">
								<input name="password" type="password" maxlength="30"
								id="password" class="bpc-txt" autocomplete="off"
								onkeypress="return clickButton(event,'login_btnDangNhap')">
							</span>
						</div>

						<div class="bpc-row">
							<span class="sp-left"></span><span class="sp-right"> <span
								class="sp-remember"> <input id="login_cbkRLogin"
									type="checkbox" name="login$cbkRLogin"><label
									for="login_cbkRLogin">Duy trì đăng nhập</label></span> <span
								class="sp-forget-pass" style="">
									<p>
										<a id="forget" class="lnk-logout under popup-login"
											rel="#overlay-forget" style="margin: 0px; line-height: 28px">Quên
											mật khẩu?</a>
									</p>
							</span></span>
							<style>
.regis-info, .sp-forget-pass {
	position: relative;
	display: inline-block;
	padding-bottom: 10px;
}

.infor-forget {
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

.regis-info .infor-forget {
	bottom: 28px;
	right: -33px;
	top: auto;
}

.regis-info {
	padding-top: 5px;
}

.sp-forget-pass:hover .infor-forget {
	display: block;
}

.regis-info:hover .infor-forget {
	display: block;
}
</style>
						</div>
						<div class="bpc-row" style="margin-top: 0px;">
							<span class="sp-error"> <span id="login_lblErr"></span>
							</span>
						</div>
						<div class="bpc-row" style="margin-top: 0px;">
							<span class="sp-left"></span><span class="sp-right"> <a id="login_btnDangNhap" class="bpt-lnk-save btn-login" onclick="btnlogin()">
							login</a> <input type="hidden"
								name="command" value="login">
							</span>

							<!--<script type="text/javascript">
                           function btnDangNhap_OnClientClick() {
                                document.getElementById('login_btnDangNhap').style.visibility = 'hidden';
                                return true;
                            }
                        </script>-->

							<script type="text/javascript">
                           function btnlogin() {
                            var rdochecked = $('input[type="radio"][name="quyen"]}:checked');
                              var url ="";
                           	   $.post('UsersServlet', {'command':"login",'username':$('#username').val(),'password':$('#password').val(),'quyen':rdochecked.val(),'url':url}, function (data) {
   									if(data=="")
   										window.location.href = url;
   									else
   										{
                           		   			$("#errorlogin").html(data);	
   										}
   				                 },'text');
                            }
                        </script>

						</div>
						<div class="group-login-fb" style="display: none;">
							<p class="login-fb-notice">Hoặc đăng nhập bằng tài khoản</p>
							<p class="p-login-fb">
								<a
									href="http://viettelstudy.vn/LoginExtension/FacebookConnect.aspx">
									<img src="http://viettelstudy.vn/images/vts_new_06.png">
								</a> <a class="lnk-g" style="display: none"
									href="http://viettelstudy.vn/LoginExtension/GoogleConnect.aspx">
									<img src="http://viettelstudy.vn/images/vts_new_07.png">
								</a>
							</p>
							<div id="status" style="display: none;"></div>
						</div>

					</div>

					<div id="login_UpdateProgress1" style="display: none;">

						<div class="bpc-row">
							<span class="sp-left"></span><span class="sp-right"> <img
								src="Images/ajax-loader.gif" alt="StudyFunny">
							</span>
						</div>

					</div>
					<div class="bpc-row">
						<span class="sp-right" style="width: 335px;"><span
							class="pbc-p"
							style="padding: 0px 0px 10px 15px; font-size: 14px;">Bạn
								chưa có tài khoản? Mời đăng ký <a
								class="lnk-logout under popup-login" rel="#overlay-register">TẠI
									ĐÂY</a>

						</span></span></span>
					</div>
				</div>
			</div>
		</form>
	</div>
	
	<div
		style="width: 392px; position: fixed; z-index: 0; top: 66.2px; left: 478.5px; display: none;"
		id="overlay-forget">

		<a class="close"></a>
		<style type="text/css">
.sp-remember {
	float: left;
	width: 125px;
	margin-top: 5px;
	margin-bottom: 5px;
}

.sp-remember input {
	margin-right: 5px;
}

.LBD_CaptchaDiv {
	display: inline;
}
</style>
		<div class="box-popup">
			<a class="popup-close">X </a>
			<h3 class="bp-title">Lấy lại mật khẩu</h3>
			<div class="bp-content">
				<p style="padding-left: 15px;">Bạn vui lòng nhập email đã đăng
					ký để nhận lại mật khẩu</p>
				<div id="login_pnLogin">
					<div class="bpc-row">
						<span class="sp-left">Email</span> <span class="sp-right">
							<span style="float: right; line-height: 39px;"><input
								type="email" name="femail" id="femail"
								style="background: #d4e7e3 none repeat scroll 0 0; border: 1px solid #d4e7e3; border-radius: 5px; height: 25px; margin-right: 16px; padding: 1px 10px; width: 260px;">
						</span>
						</span>
					</div>

					<div class="bpc-row" style="margin-top: 0px;">
						<span class="sp-error"> <span id="login_lblErr"></span>
						</span>
					</div>
					<div class="bpc-row" style="margin-top: 0px;">
						<span class="sp-left"></span><span class="sp-right"> <input
							type="submit" name="login$btnDangNhap" value="Gửi"
							onclick="btnDangNhap_OnClientClick2();" id="btnforget"
							class="bpt-lnk-save btn-login"> <input type="hidden"
							name="TokenCSRF_Login"
							value="2DD198B4D0477D16C8AB6B14113805916D4D4A2C47920F250C937FCF58A650768E3E20D43C90E47FD0468883979CCD326D1B1D033440F3758B864548D669DABB">
						</span>

						<!--<script type="text/javascript">
                           function btnDangNhap_OnClientClick() {
                                document.getElementById('login_btnDangNhap').style.visibility = 'hidden';
                                return true;
                            }
                        </script>-->
						<script type="text/javascript">
                           function btnDangNhap_OnClientClick2() {
                            alert('Vui lòng check email để nhận lại mật khẩu')
                            }
                        </script>

					</div>
					<div class="group-login-fb" style="display: none;">
						<p class="login-fb-notice">Hoặc đăng nhập bằng tài khoản</p>
						<p class="p-login-fb">
							<a
								href="http://viettelstudy.vn/LoginExtension/FacebookConnect.aspx">
								<img src="http://viettelstudy.vn/images/vts_new_06.png">
							</a> <a class="lnk-g" style="display: none"
								href="http://viettelstudy.vn/LoginExtension/GoogleConnect.aspx">
								<img src="http://viettelstudy.vn/images/vts_new_07.png">
							</a>
						</p>
						<div id="status" style="display: none;"></div>
					</div>
				</div>
				<div id="login_UpdateProgress1" style="display: none;">

					<div class="bpc-row">
						<span class="sp-left"></span><span class="sp-right"> <img
							src="http://viettelstudy.vn/images/ajax-loader.gif"
							alt="ViettelStudy">
						</span>
					</div>

				</div>
			</div>
		</div>

	</div>
	
	<div
		style="width: 392px; position: fixed; z-index: 0; top: 66.2px; left: 478.5px; display: none;"
		id="overlay-register">
		<a class="close"></a>
		<style type="text/css">
.sp-remember {
	float: left;
	width: 125px;
	margin-top: 5px;
	margin-bottom: 5px;
}

.sp-remember input {
	margin-right: 5px;
}

.LBD_CaptchaDiv {
	display: inline;
}
</style>
		<div class="box-popup">
			<a class="popup-close">X </a>
			<h3 class="bp-title">Đăng ký tài khoản</h3>
			<div class="bp-content">
				<form action="UsersServlet" method="post">
					<p style="padding-left: 15px;">Bạn vui nhập thông tin để đăng
						ký tài khoản học tập trên Study Funny</p>
					<div id="login_pnLogin"><div class="bpt-item-right">
						<p style="color: red; font-style: italic; padding-left: 15px" id="errorregister" name="errorregister"></p>
					</div>
						<div class="bpc-row">
							<span class="sp-left">User</span> <span class="sp-right">
								<input name="username-register" type="text" maxlength="15"
								id="username-register" class="bpc-txt"> <span
								id="user-register-result"></span>
							</span>
						</div>
						<div class="bpc-row">
							<span class="sp-left">Password</span> <span class="sp-right">
								<input name="pass-register" type="password" maxlength="30"
								id="pass-register" class="bpc-txt" autocomplete="off"
								onkeypress="return clickButton(event,'login_btnDangNhap')">
							</span>
						</div>
						<div class="bpc-row">
							<span class="sp-left">Nhập lại</span> <span class="sp-right">
								<input name="pass-register2" type="password" maxlength="30"
								id="pass-register2" class="bpc-txt" autocomplete="off"
								onkeypress="return clickButton(event,'login_btnDangNhap')">
							</span>
						</div>
						<div class="bpc-row">
							<span class="sp-left">Email</span> <span class="sp-right">
								<input type="email" name="email-register" id="email-register"
								style="background: #d4e7e3 none repeat scroll 0 0; border: 1px solid #d4e7e3; border-radius: 5px; height: 30px; padding: 1px 10px; width: 238px;">
								<span id="email-register-result"></span>
							</span>
						</div>
						<div class="bpc-row">
							<span class="sp-left">Tên</span> <span class="sp-right"> <input
								name="name" type="text" maxlength="15" id="name" class="bpc-txt"
								autocomplete="off"
								onkeypress="return clickButton(event,'login_btnDangNhap')">

							</span>
						</div>
						<div class="bpc-row">
							<span class="sp-left">Số điện thoại</span> <span class="sp-right">
								<input name="sdt" type="text" maxlength="15" id="sdt"
								class="bpc-txt" autocomplete="off"
								onkeypress="return clickButton(event,'login_btnDangNhap')">

							</span>
						</div>
						<div class="bpc-row">
							<span class="sp-left">Giới tính</span> <span class="sp-right">
								<div class="bpt-item-right">
									<select name="gioitinh" id="gioitinh" class="bpt-sl-sex">
										<option value ="-1" selected="selected">Chọn giới tính</option>
										<option value="0">Nam</option>
										<option value="1">Nữ</option>

									</select>
								</div>
							</span>
						</div>
						<div class="bpc-row">
							<span class="sp-left">Ngày sinh:</span> <span class="sp-right">
								<select name="ngaysinh"
								id="ngaysinh" class="bpt-sl-date">
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

							</select> <select name="thangsinh"
								id="thangsinh" class="bpt-sl-month">
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

							</select> <select name="namsinh"
								id="namsinh" class="bpt-sl-date">
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
								<span class="sp-left"></span><span class="sp-right"> <a id="register" name="register"
											class="bpt-lnk-save btn-login">
											Đăng Ký </a> <input
									type="hidden" name="command" value="insert">
								</span>

								<!--<script type="text/javascript">
                           function btnDangNhap_OnClientClick() {
                                document.getElementById('login_btnDangNhap').style.visibility = 'hidden';
                                return true;
                            }
                        </script>-->
								<script type="text/javascript">
                           function btnDangNhap_OnClientClick3() {
                        	   $("#btnRegisterRevMail").click();
                            }
                        </script>

							</div>
							<div class="group-login-fb" style="display: none;">
								<p class="login-fb-notice">Hoặc đăng nhập bằng tài khoản</p>
								<p class="p-login-fb">
									<a
										href="http://viettelstudy.vn/LoginExtension/FacebookConnect.aspx">
										<img src="http://viettelstudy.vn/images/vts_new_06.png">
									</a> <a class="lnk-g" style="display: none"
										href="http://viettelstudy.vn/LoginExtension/GoogleConnect.aspx">
										<img src="http://viettelstudy.vn/images/vts_new_07.png">
									</a>
								</p>
								<div id="status" style="display: none;"></div>
							</div>
						</div>
						<div id="login_UpdateProgress1" style="display: none;">

							<div class="bpc-row">
								<span class="sp-left"></span><span class="sp-right"> <img
									src="http://viettelstudy.vn/images/ajax-loader.gif"
									alt="ViettelStudy">
								</span>
							</div>

						</div>
						<div class="bpc-row">
							<span class="sp-right" style="width: 335px;"><span
								class="pbc-p"
								style="padding: 0px 0px 10px 15px; font-size: 14px;">Bạn
									đã có tài khoản? Mời đăng nhập <a
									class="lnk-logout under popup-login" rel="#overlay-login">TẠI
										ĐÂY</a>
							</span></span></span></span>
						</div>
					</div>
			</div>
		</div>
	</div>
	<div
		style="width: 392px; position: fixed; z-index: 0; top: 66.2px; left: 478.5px; display: none;"
		id="overlay-register">
		<a class="close"></a>
		<style type="text/css">
.sp-remember {
	float: left;
	width: 125px;
	margin-top: 5px;
	margin-bottom: 5px;
}

.sp-remember input {
	margin-right: 5px;
}

.LBD_CaptchaDiv {
	display: inline;
}
</style>
		<div class="box-popup">
			<a class="popup-close">X </a>
			<h3 class="bp-title">Đăng ký tài khoản</h3>
			<div class="bp-content">
				<form action="UsersServlet" method="post">
					<p style="padding-left: 15px;">Bạn vui nhập thông tin để đăng
						ký tài khoản học tập trên Study Funny</p>
					<div id="login_pnLogin"><div class="bpt-item-right">
						<p style="color: red; font-style: italic; padding-left: 15px" id="errorregister" name="errorregister"></p>
					</div>
						<div class="bpc-row">
							<span class="sp-left">User</span> <span class="sp-right">
								<input name="username-register" type="text" maxlength="15"
								id="username-register" class="bpc-txt"> <span
								id="user-register-result"></span>
							</span>
						</div>
						<div class="bpc-row">
							<span class="sp-left">Password</span> <span class="sp-right">
								<input name="pass-register" type="password" maxlength="30"
								id="pass-register" class="bpc-txt" autocomplete="off"
								onkeypress="return clickButton(event,'login_btnDangNhap')">
							</span>
						</div>
						<div class="bpc-row">
							<span class="sp-left">Nhập lại</span> <span class="sp-right">
								<input name="pass-register2" type="password" maxlength="30"
								id="pass-register2" class="bpc-txt" autocomplete="off"
								onkeypress="return clickButton(event,'login_btnDangNhap')">
							</span>
						</div>
						<div class="bpc-row">
							<span class="sp-left">Email</span> <span class="sp-right">
								<input type="email" name="email-register" id="email-register"
								style="background: #d4e7e3 none repeat scroll 0 0; border: 1px solid #d4e7e3; border-radius: 5px; height: 30px; padding: 1px 10px; width: 238px;">
								<span id="email-register-result"></span>
							</span>
						</div>
						<div class="bpc-row">
							<span class="sp-left">Tên</span> <span class="sp-right"> <input
								name="name" type="text" maxlength="15" id="name" class="bpc-txt"
								autocomplete="off"
								onkeypress="return clickButton(event,'login_btnDangNhap')">

							</span>
						</div>
						<div class="bpc-row">
							<span class="sp-left">Số điện thoại</span> <span class="sp-right">
								<input name="sdt" type="text" maxlength="15" id="sdt"
								class="bpc-txt" autocomplete="off"
								onkeypress="return clickButton(event,'login_btnDangNhap')">

							</span>
						</div>
						<div class="bpc-row">
							<span class="sp-left">Giới tính</span> <span class="sp-right">
								<div class="bpt-item-right">
									<select name="gioitinh" id="gioitinh" class="bpt-sl-sex">
										<option value ="-1" selected="selected">Chọn giới tính</option>
										<option value="0">Nam</option>
										<option value="1">Nữ</option>

									</select>
								</div>
							</span>
						</div>
						<div class="bpc-row">
							<span class="sp-left">Ngày sinh:</span> <span class="sp-right">
								<select name="ngaysinh"
								id="ngaysinh" class="bpt-sl-date">
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

							</select> <select name="thangsinh"
								id="thangsinh" class="bpt-sl-month">
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

							</select> <select name="namsinh"
								id="namsinh" class="bpt-sl-date">
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
								<span class="sp-left"></span><span class="sp-right"> <a id="register" name="register"
											class="bpt-lnk-save btn-login">
											Đăng Ký </a> <input
									type="hidden" name="command" value="insert">
								</span>

								<!--<script type="text/javascript">
                           function btnDangNhap_OnClientClick() {
                                document.getElementById('login_btnDangNhap').style.visibility = 'hidden';
                                return true;
                            }
                        </script>-->
								<script type="text/javascript">
                           function btnDangNhap_OnClientClick3() {
                        	   $("#btnRegisterRevMail").click();
                            }
                        </script>

							</div>
							<div class="group-login-fb" style="display: none;">
								<p class="login-fb-notice">Hoặc đăng nhập bằng tài khoản</p>
								<p class="p-login-fb">
									<a
										href="http://viettelstudy.vn/LoginExtension/FacebookConnect.aspx">
										<img src="http://viettelstudy.vn/images/vts_new_06.png">
									</a> <a class="lnk-g" style="display: none"
										href="http://viettelstudy.vn/LoginExtension/GoogleConnect.aspx">
										<img src="http://viettelstudy.vn/images/vts_new_07.png">
									</a>
								</p>
								<div id="status" style="display: none;"></div>
							</div>
						</div>
						<div id="login_UpdateProgress1" style="display: none;">

							<div class="bpc-row">
								<span class="sp-left"></span><span class="sp-right"> <img
									src="http://viettelstudy.vn/images/ajax-loader.gif"
									alt="ViettelStudy">
								</span>
							</div>

						</div>
						<div class="bpc-row">
							<span class="sp-right" style="width: 335px;"><span
								class="pbc-p"
								style="padding: 0px 0px 10px 15px; font-size: 14px;">Bạn
									đã có tài khoản? Mời đăng nhập <a
									class="lnk-logout under popup-login" rel="#overlay-login">TẠI
										ĐÂY</a>
							</span></span></span></span>
						</div>
					</div>
			</div>
		</div>
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

               /* $("#email-register").keypress(function(e) {
                   if ((e.which && e.which == 13) || (e.keyCode && e.keyCode == 13)) {
                       $("#register").click();
                       //                $('button[type=submit] .default').click();
                       return false;
                   } else {
                       return true;
                   }
               }); */
           
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
		        			  'namsinh':$('#namsinh').val(),'thangsinh':$('#thangsinh').val(),'ngaysinh':$('#ngaysinh').val(),'name':$('#name').val(),'sdt':$('#sdt').val(),
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

    $(function() {
        function validateEmail(email) {
            var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
            return re.test(email);
        }
        $("#btnRegisterRevMail").click(function() {

            var txtEmail = $("#femail-register").val();
            if (validateEmail(txtEmail)) {
            	alert('Đăng ký thành công');
            } else {
            	alert('Email không hợp lệ')
            	location.reload();
            }
        });

        $("#femail-register").keypress(function(e) {
            if ((e.which && e.which == 13) || (e.keyCode && e.keyCode == 13)) {
                $("#btnRegisterRevMail").click();
                //                $('button[type=submit] .default').click();
                return false;
            } else {
                return true;
            }
        });
    });
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