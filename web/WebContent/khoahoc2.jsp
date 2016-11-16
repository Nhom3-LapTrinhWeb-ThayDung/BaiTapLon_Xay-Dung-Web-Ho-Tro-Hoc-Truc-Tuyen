<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" href="css/process_learn.css" type="text/css">
<link rel="stylesheet" href="css/comment.css" type="text/css">
<link rel="stylesheet" href="css/coder_update.css" type="text/css">
<link rel="stylesheet" href="css/persion.css" type="text/css">
<link rel="stylesheet" href="css/common.css" type="text/css">
<link rel="stylesheet" href="css/reset.css" type="text/css">
<link rel="stylesheet" href="css/oneOfCourse.css" type="text/css">
<link rel="stylesheet" href="css/testOnline2.css" type="text/css">
<link rel="stylesheet" href="./css/Default.css" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css"
	href="css/yui-moodlesimple-min.css">

<link charset="utf-8" rel="stylesheet"
	id="yui_3_15_0_2_1476174513860_237"
	href="css/cssbutton-min.css">

<title>Khóa Học</title>
<link rel="icon" href="Images/favicon.ico">
<script async="" src="https://connect.facebook.net/en_US/fbevents.js"></script>
<script type="text/javascript" async=""
	src="http://www.google-analytics.com/ga.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.bxSlider.min.js"></script>
<script type="text/javascript" src="js/overlay2.js"></script>
<script type="text/javascript" src="js/home.js"></script>
</head>
<body>
	<!-- <form name="form1" method="post" action="#" id="form1"
		enctype="multipart/form-data"> -->
		<div>
			<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="">
			<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT"
				value=""> <input type="hidden" name="__LASTFOCUS"
				id="__LASTFOCUS" value=""> <input type="hidden"
				name="__VIEWSTATE" id="__VIEWSTATE"
				value="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">
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


		<script
			src="/WebResource.axd?d=L1xj5Ylo1Zl1fvy-xvPpnGuNs3kIFO2KKp2xaFvogG-fMqmhH718MD6c-VZXW0ck9S1rBNVhOqjvCwj-v2L9yIfTKSg1&amp;t=634244902260000000"
			type="text/javascript"></script>


		<script
			src="/ScriptResource.axd?d=5dqp5x42Fbor1p4SQKp1g8f4dMRVVerUgaYAhzZh_vK9-tYYhjG7By875uyuaBK7Rv7Z3mqeGx0_kEuqlsSeC1hFNGV9g55gaBykAjTxjHnvBQXErWY8yZUBwvgN9WxLh35rWm14XXUOX13RvY7Su6LXULM1&amp;t=fffffffff9d85fa6"
			type="text/javascript"></script>
		<script
			src="/ScriptResource.axd?d=F7bvtnsMU-_pTaQdhlAOC0EMwhndSZAeIktgc938tio1MGg410TEN6SRrMONvNWiRapagwMC0LPO5T5qtFkWYwRoNaTU3irfJbIV6uLw900GcBMTKZ0pX_cueZD6TaJzTsBdTmw15iFyB4HqqkQmclULKXNnQcLDl-8cte2IzE3ZR_1r0&amp;t=fffffffff9d85fa6"
			type="text/javascript"></script>
		<div>

			<input type="hidden" name="__VIEWSTATEENCRYPTED"
				id="__VIEWSTATEENCRYPTED" value=""> <input type="hidden"
				name="__EVENTVALIDATION" id="__EVENTVALIDATION"
				value="6PvCLtEQEyCg+x4GzvdqwZu+Z8XZc1+nvd0JDNL7tbgIQzqBLB7aso9xsi8wHa/ob3itAAryG+kA/sbK68mwl48SL8nD39QR1TU4OAwFlU27mKZCfh9mPYTUAxaxIVdFydiuCHHSycdIdkFwBY4t021oNh1iXbDBXwMPxhHAtEpCSJftDrRR2VvFJBj8RRlroWbboJGUL/CeQ/kABu9paFdjAw05tTXeTPy3+WVbsOXvZDGvsKSgEOUciSyG+tkQaZyzZ1sq7bjUEXpdzqa19CRSjN0zgjxgMWJONJ33RWktsa4U9lfASw5xmKDhw7uG+aLOOiKosjF6D0QolWQvNCKEdKZq9VxZUzCdfmi6bLa17K1GB9OMn6naThpsNzKIBHwUfsqrzZG6mzB3vWwMd/WZEB/RdHDOhWJcI3shZqfZiq1TuV3/BeJARhXWSf3tjgjqKYRlYzZhb/bl0yIue5PIxEO8ERAIE0GSsyxlRL/x/2a5sZ8rJ+oaX+nymBd3OI5YlxPgRSWxnRK/cWHQA8Uz+e2eSe0GpljmaLbosLEOKcsvR54GBzIPq4zz6/tqlEKIK7b5/3Sh3yP96rttusrVkeAhOKI8/IAeHDHwL2y8uHeh065E9hirBHpim4p4nJKgAiii4dyxaXMK3TNNPN3y5KDPRkBFJPik772RQnpP4Eh5Eoup7UMhaNKh9NxAY/Iyx2/vUHU5Qle3XZJQZkSOZympijsjGwUeAbLJVGQ+dXJDE+Ch3GgGPM2eT2yjOQxshs5RIgSBdEdZqR2QxM7ZYZ6mevx3nFD0oUKFyouACnK0jvCqwnIwOBHZMW48Su6ilgKDcdvY2z4xvuxeFJkGm/3O7Cnp9CtXWTsrepYnXzjEpBPvKuMI1u5mxkhgAqOMp4AP4MBJfr/8GYG4G1Z4PfdX+TqRJsBsPYGWRPw797QpfPwZSN7FqLFbNLTnbgEgkqPif/wMU/TxW0TSjAdzSFON4ZzdxhMMIwLpPWOz91v20vWoDTF6SLg1x9LJq2TfAq3KP+zr07wztPNw6BbUt0FkP8fVzJQdODW+wcoW/fUD5ItmecBtGhoHiNnDDk3RqUCWhNiUU3g9rZcmKxOcHrjON9tpn7ijERe5sdE1KY5Vi6h+iZmguFK6VF6lhEzfqgpBXNBdElVQHP41Ov1Y5unhGGZqxPd2brahwS3aBY3ECJZ8s2eOMJ93VDM1/CzlplUKpmGfNoaNzn+x93h5LghtjRcWQxH1XbI9GEsNm4XSwR/cmW2oLrr/fuR/nT9+6NNNEb3nAhWJMD/E4ZxRVRH9sgCQl7G4z/S1GHN8yy8ZoGMbxu/aPzlYAnY1rQNTC0vBkqXQw/V2Wr5kGg/mZB9fgqEDyO0L4o6i5aYxCz9QkG8CEdPTMCofWWfX1C9lycyjQtUoBz8DZ1j0HvrBJc8pYIf47mhX5Bk53acUQTFIKKWXsS9Zr8CPPRo17vpzYT/7+jo6vkwvWP2S9Nt6KDmDNGba8tOFMyQx9dK9JkRLA9f1rpW7T9bq/Rer73i7rSTVCW4naM7VAq7NW5/+gG/v1PYzsWTZ7Im9qV94wuu4yG77enI7MMGNgz3+fgkVPOJYYzHeyG+I4kb2QDXCy4HgvY9eTUmr4JH2D9JMYL4vHbL7lRPTGqU3SpEzot8fOPAH1N/cPwoDTKTtCZq/30dIbpOphDNho069JTzbvhLoZHRhDGwH86qZfyo0STj0Iae4ZTI13Pcgwtinr0HLLa9h5hB3YacJAJ+YB81SL+lh+F5AOPmNt+kK3rG2g9cL+XXVYRQN2seaP5/Vt3nF624OfWzlCEdq5+N+rslwV9Fc9gdSYkOmPCIwQD4OPqf6fayJ7D3z6DuHm3MO24t+yOXcLF1j2/wqRw5zpoxeDKp7">
		</div>
		<script type="text/javascript">
			//<![CDATA[
			Sys.WebForms.PageRequestManager._initialize('ScriptManager1',
					document.getElementById('form1'));
			Sys.WebForms.PageRequestManager.getInstance()._updateControls(
					[ 'tHeader$Widget$GopY$pnGopY', 'tlogin$pnLogin',
							'tctl14$LoadUser$upUserLoad',
							'tctl14$TienTrinhThi$upThi',
							'tctl14$DoiMatKhau$upDoiMK',
							'tctl14$ThongTinHocVien$pnInfo' ], [], [], 90);
			//]]>
		</script>

		<div id="overlay-header">
			<div id="overlay-left"></div>
			<div id="overlay-right"></div>
		</div>
		<div id="wrapper">

			<style type="text/css">

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
			<div class="vts-gadget">


				<div class="vts-gadget-item vts-gadget-comment">
					<div class="vt-gadget gadget-comment" style="display: none;">
						<span class="vt-gadget-more"> </span>
						<h3 class="vt-gadget-title">
							<span class="vt-gadget-sp"> GÓP Ý </span> <a
								class="vt-gadget-close"> X </a>
						</h3>
						<div class="wrap-vt-gadget">
							<div id="Header1_Widget_GopY_pnGopY">

								<div class="vt-gadget-div-form">
									<span class="vt-gadget-label"> Nội dung </span>
									<p class="vt-gadget-p">
										<textarea name="Header1$Widget$GopY$txtNoiDung" rows="2"
											cols="20" id="Header1_Widget_GopY_txtNoiDung"
											class="vt-gadget-txtarea"></textarea>
									</p>
								</div>
								<div class="vt-gadget-div-form gadget-captcha">
									<span class="vt-gadget-label"> Mã bảo mật </span>
									<div class="vt-gadget-p">
										<input name="Header1$Widget$GopY$txtCapcha" type="text"
											maxlength="10" id="Header1_Widget_GopY_txtCapcha"
											autocomplete="off" class="vt-gadget-txt"> <a
											class="captcha-img" onclick="refreshCaptcha('GopY','5')"
											style="float: left; width: 100px;">


											<div
												style="float: left; padding-left: 8px; padding-right: 20px">
												<img class="capcha"
													src="http://viettelstudy.vn/uControls/Capcha/capchaImage.aspx?len=5&amp;id=GopY"
													title="Lấy mã khác" alt="ViettelStudy">

											</div>

										</a> <input type="submit" name="Header1$Widget$GopY$btnGui"
											value="Gửi"
											onclick="validgopy('Header1_Widget_GopY_txtNoiDung');"
											id="Header1_Widget_GopY_btnGui" class="vt-gadget-btn-send">
										<input type="hidden" name="TokenCSRF_GopYBaiHoc"
											value="458C4C43173C5771E7B5DA7BCE64635FD5BDF85C67F55B51B5C10248572A874BCBCF5EA4C652DFE55EDFA687BAC0A9F1FA0BE9ADC425CD6D0317A8CC61520C5B">
									</div>
								</div>
								<span id="Header1_Widget_GopY_lblErr" style="color: Red;"></span>
								<span id="Header1_Widget_GopY_lblSucc"></span>

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
					</div>



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
			</div>


			<div id="header">
				<div id="header-top">
					<a
						style="color: #00918d; font-size: 14px; position: absolute; right: 0px; bottom: 10px"
						href="HuongDanSuDung.jsp">Hướng dẫn</a> <a
						class="header-logo" href="index.jsp">

					</a>
					<div class="header-login">

						<p class="p-login">
							Xin chào: <a href="canhangiangvien.jsp"> Hải </a>
							| <a href="index.jsp">Thoát</a>
						</p>

					</div>
					<div class="study-search">
						<input name="Header$search_query" type="text" maxlength="100"
							id="Header_search_query"
							class="searchInput has_default_text ssh-input"
							onkeypress="return clickButton(event,'Header_btnSearch1')"
							onfocus="SearchOnFocus(this)" onblur="SearchOnBlur(this)"
							value="Từ khóa tìm kiếm" autocomplete="off"> <input
							type="submit" name="Header$btnSearch1" value=""
							onclick="checkdata('Header_btnSearch1');" id="Header_btnSearch1"
							class="ssh-btn-search">
					</div>
					<div style="display: none;" id="suggestions" class="suggestion">
					</div>
					<script type="text/javascript">
						$(document).ready(function() {
							suggesstionFunc();
						});
					</script>


				</div>
				<div id="header-menu" style="background: rgb(0, 183, 178);">
					<a class="lnk-hm-home menu_active"
						href="index.jsp"> </a>
					<ul class="ul-menu-header">

						<li class="li-menu-header"><a href="index.jsp" class="lnk-menu-header">
								TRANG CHỦ </a></li>

						<li class="li-menu-header"><a href="HuongDanSuDung.jsp" class="lnk-menu-header ">
								HƯỚNG DẪN SỬ DỤNG </a></li>
						<li class="li-menu-header"><a class="lnk-menu-header">
								DANH SÁCH LỚP HỌC </a>
							<div class="vts-submenu submenu-245">
								<ul class="submenu1">
									<li><a
										href="DanhSachKhoaHoc.jsp">
											Công Nghệ Phần Mềm</a></li>
									<li><a
										href="DanhSachKhoaHoc.jsp">
											Lập trình web</a></li>
									<li><a
										href="DanhSachKhoaHoc.jsp">
											Hệ quản trị cơ sở dữ liệu </a></li>
									<li><a
										href="DanhSachKhoaHoc.jsp">
											Điện tử căn bản </a></li>
									<li><a
										href="DanhSachKhoaHoc.jsp">
											Thực tập điện tử căn bản</a></li>
									<li><a
										href="DanhSachKhoaHoc.jsp">
											Lập trình WinDow From </a></li>
								</ul>
							</div></li>
						
					</ul>
				</div>
			</div>


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

		<script type="text/javascript">
			$('.menu_active').parent().css('background', '#00b7b2');
		</script>



		<script type="text/javascript"
			src="js/search.js"></script>

		<script type="text/javascript">
			var _gaq = _gaq || [];
			_gaq.push([ '_setAccount', 'UA-39998057-1' ]);
			_gaq.push([ '_setDomainName', 'viettelstudy.vn' ]);
			_gaq.push([ '_trackPageview' ]);

			(function() {
				var ga = document.createElement('script');
				ga.type = 'text/javascript';
				ga.async = true;
				ga.src = ('https:' == document.location.protocol ? 'https://ssl'
						: 'http://www')
						+ '.google-analytics.com/ga.js';
				var s = document.getElementsByTagName('script')[0];
				s.parentNode.insertBefore(ga, s);
			})();
		</script>

		<script type="text/javascript">
			/* <![CDATA[ */
			var google_conversion_id = 960383489;
			var google_custom_params = window.google_tag_params;
			var google_remarketing_only = true;
			/* ]]> */
		</script>

		<script type="text/javascript"
			src="//www.googleadservices.com/pagead/conversion.js">
			
		</script>
		<iframe name="google_conversion_frame" title="Google conversion frame"
			width="300" height="13"
			src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/960383489/?random=1475390474186&amp;cv=8&amp;fst=1475390474186&amp;num=1&amp;fmt=1&amp;guid=ON&amp;u_h=768&amp;u_w=1366&amp;u_ah=728&amp;u_aw=1366&amp;u_cd=24&amp;u_his=3&amp;u_tz=420&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=7&amp;frm=0&amp;url=http%3A%2F%2Fviettelstudy.vn%2Fcanhan.html&amp;ref=http%3A%2F%2Fviettelstudy.vn%2Findex.html&amp;tiba=Trang%20ti%E1%BA%BFn%20tr%C3%ACnh%20thi%20-%20ViettelStudy"
			frameborder="0" marginwidth="0" marginheight="0" vspace="0"
			hspace="0" allowtransparency="true" scrolling="no"></iframe>

		<noscript>&lt;div style="display: inline;"&gt; &lt;img
			height="1" width="1" style="border-style: none;" alt=""
			src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/960383489/?value=0&amp;amp;guid=ON&amp;amp;script=0"
			/&gt; &lt;/div&gt;</noscript>
		<!-- Facebook Pixel Code -->

		<script>
			!function(f, b, e, v, n, t, s) {
				if (f.fbq)
					return;
				n = f.fbq = function() {
					n.callMethod ? n.callMethod.apply(n, arguments) : n.queue
							.push(arguments)
				};
				if (!f._fbq)
					f._fbq = n;
				n.push = n;
				n.loaded = !0;
				n.version = '2.0';
				n.queue = [];
				t = b.createElement(e);
				t.async = !0;
				t.src = v;
				s = b.getElementsByTagName(e)[0];
				s.parentNode.insertBefore(t, s)
			}(window, document, 'script',
					'//connect.facebook.net/en_US/fbevents.js');

			fbq('init', '362635017276287');
			fbq('track', "PageView");
		</script>

		<noscript>&lt;img height="1" width="1" style="display:
			none"
			src="https://www.facebook.com/tr?id=362635017276287&amp;ev=PageView&amp;noscript=1"
			/&gt;</noscript>
		<!-- End Facebook Pixel Code -->



		<!--end-header-->
		<div id="body">
			<!--Alert-->






			<script>
				$(document).ready(function() {
					$('.persion-tab-lnk').click(function() {
						try {

							var id_tab = $(this).attr('name');
							if ($(this).hasClass('active')) {

							} else {
								$('.persion-tab-lnk').removeClass('active');
								$('.persion-right').hide();
								$(this).addClass('active');
								$('#' + id_tab).fadeIn("slow");
							}
						} catch (err) {
						}

					});
				});
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

.persion-right2 {
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

.box-text {
	
}

.box-resources {
	
}

.body {
	width: 890px;
	display: none;
}
</style>


			<div class="Breadcrumb">
				<style>
.Breadcrumb {
	margin-top: 10px;
	background: #ffffff;
	padding: 5px 10px;
}

.Breadcrumb .sne-lnk {
	color: #00918D;
	font-weight: normal;
	line-height: 20px;
	background:
}
</style>
				<a id="alert_Breadcrumb__hplBreadcrumd" class="sne-lnk">Cá Nhân
					&gt; Khóa Học &gt; Lập trình web</a>
			</div>

			<div class="persion-right2" style="display: block;" id="1">

				<style type="text/css">
.edit {
	
}
</style>

				<script type="text/javascript">
					function showedit() {
						$(edit).slideToggle();
						$('.edit').slideToggle();
					}
					function loadDSHV() {
						$('.course').attr('style', 'display:none')
					}

					function loadCourse() {
						$('.course').attr('style', 'display:block')
					}
				</script>
				<div class="row">
					<h1 class="learn-process-h3">
						<span>Lập trình web</span>
					</h1>

				</div>
				<div class="learn-process process-study">
					<div id="header-menu" style="background: rgb(0, 183, 178);">
						<a class="lnk-hm-home menu_active"
							href="khoahoc2.jsp"> </a>
						<ul class="ul-menu-header">

							<li class="li-menu-header "><a
								class="lnk-menu-header menu_active" name="Course"> View
									course </a></li>

							<li class="li-menu-header"><a class="lnk-menu-header "
								name="DSHV"> Danh sách học viên </a></li>
							<li class="li-menu-header"><a class="lnk-menu-header"
								id="DSBT" name="DSBT" onclick="loadDSBTRa()"> Danh sách bài
									tập </a>
								<div class="vts-submenu submenu-245">
									<ul class="submenu1">
										<li><a name="DSBTRa" onclick="loadDSBTRa()"> Danh
												sách bài tập đã ra</a></li>
										<li><a name="DSBTNop" onclick="loadDSBTNop()"> Danh
												sách bài tập đã nộp</a></li>
									</ul>
								</div></li>
							<li class="li-menu-header" style="margin-left: 370px"><a
								href="edit-course.jsp"><img style="display: block;"
									src="Images/settings.png"></a></li>
							<!-- Courses in category -->
						</ul>
					</div>
					<div id="Course" class="body" style="display: block">
					<c:if test="${errorStr != null }">
						<p style="color: red; font-style: italic;">${errorStr }</p>
					</c:if>
						<a onclick="showedit()"><img
							style="display: block; float: right;" src="Images/settings2.png"></a>
						<div class="box-test-online martop_0">
							<div class="to-content">
								<div class="to-c-left">
									<div class="to-c-l-list" style="font-size: 18px">
										<div class="row">
											<div class="box-text">
												<a href="edit-section.jsp"><img
													style="display: none; float: right" name="edit"
													src="Images/settings2.png"></a>
												<h2 style="color: blue">
													<span>Đề cương chi tiết</span>
												</h2>
												<br>
												<h3 style="color: blue">Chương 1. Tổng quan</h3>
												<h3 style="color: blue">Chương 2. HTML</h3>
												<h3 style="color: blue">Chương 3. JQUERY</h3>
												<h3 style="color: blue">Chương 4. AJAX</h3>
											</div>
											<div class="box-resources">
												<br>
											</div>

											<div class="edit" style="display: none;">
												<a class="under popup-login" rel="#overlay-add-assignment"><img
													style="float: right" src="Images/add-item.png"></a>
											</div>
										</div>

										<div class="row">
											<div class="box-text">
												<a><img style="display: none; float: right" name="edit"
													src="Images/settings2.png"></a>
												<h2 style="color: blue">
													<span>Chương 1. Tổng quan</span>
												</h2>
											</div>
											<form method="post" action="PracticeServlet" >
											<div class="box-resources">
												<br>
												<p style="margin-left: 20px">
													
													<img src="Images/quiz.png">
													&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="quiz_name" value="Bài Test Số 1" />
													<input type="hidden" name="command" value="thitracnghiem"/>
													<span class="edit"
														style="display: none"> <select class="bpt-sl-date">
															<option value="0">edit</option>
															<option value="1" onselect="sua()"><a
																	onclick="sua()">Sửa</a></option>
															<option value="2" href="">xóa</option>
													</select>
													</span>
												</p>
											</div>
											</form>

											<div class="edit" style="display: none;">
												<a href=""><img style="float: right"
													src="Images/add-item.png"></a>
											</div>
										</div>

										<div class="row">
											<div class="box-text">
												<a><img style="display: none; float: right" name="edit"
													src="Images/settings2.png"></a>
												<h2 style="color: blue">
													<span>Chương 2. HTML</span>
												</h2>
											</div>

											<div class="box-resources">
												<br>
												<p style="margin-left: 20px">
													<img src="Images/pdf-24.png">&nbsp;Tài liệu hưỡng dẫn
													html&nbsp;&nbsp;&nbsp;&nbsp;<span class="edit"
														style="display: none"> <select class="bpt-sl-date">
															<option value="0">edit</option>
															<option value="1" onselect="sua()"><a
																	onclick="sua()">Sửa</a></option>
															<option value="2" href="">xóa</option>
													</select>
													</span>
												</p>
											</div>

											<div class="edit" style="display: none;">
												<a href=""><img style="float: right"
													src="Images/add-item.png"></a>
											</div>
										</div>
										<div class="row">
											<div class="box-text">
												<a><img style="display: none; float: right" name="edit"
													src="Images/settings2.png"></a>
												<h2 style="color: blue">
													<span>Chương 3. JQUERY</span>
												</h2>
											</div>
											<div class="box-resources">
												<br> <a href="Chi-Tiet-Bai-Tap.jsp">
												<p style="margin-left: 20px">
														<img src="Images/icon-baitap.svg">&nbsp; Các chức
														năng chứa jquery trong BTL&nbsp;&nbsp;&nbsp;&nbsp;<span
															class="edit" style="display: none"></a> <select
													class="bpt-sl-date">
													<option value="0">edit</option>
													<option value="1" onselect="sua()"><a
															onclick="sua()">Sửa</a></option>
													<option value="2" href="">xóa</option>
												</select> </span>
												</p>
											</div>
											<div class="edit" style="display: none;">
												<a href=""><img style="float: right"
													src="Images/add-item.png"></a>
											</div>
										</div>

										<div class="row">
											<div class="box-text">
												<a><img style="display: none; float: right" name="edit"
													src="Images/settings2.png"></a>
												<h2 style="color: blue">
													<span>Chương 4. AJAX</span>
												</h2>
											</div>

											<div class="box-resources">
												<br>
												<p style="margin-left: 20px">
													<img src="Images/icon-baitap.svg">&nbsp;Những chức
													năng có thể dùng được AJAX trong
													BTL&nbsp;&nbsp;&nbsp;&nbsp;<span class="edit"
														style="display: none"> <select class="bpt-sl-date">
															<option value="0">edit</option>
															<option value="1" onselect="sua()"><a
																	onclick="sua()">Sửa</a></option>
															<option value="2" href="">xóa</option>
													</select>
													</span>
												</p>
											</div>

											<div class="edit" style="display: none;">
												<a href=""><img style="float: right"
													src="Images/add-item.png"></a>
											</div>
										</div>
										<div class="edit" style="display: none">
											<div class="row">
												<p style="text-align: right">
													<a><img src="Images/switch_plus.svg"></a> <a><img
														src="Images/switch_minus.svg"></a>
												</p>
											</div>
										</div>
									</div>
								</div>

							</div>
						</div>
					</div>

					<div class="body" id="DSHV" style="margin-left: 10px">
						<h1 style="color: blue;">
							<span>Danh sách học viên của khóa</span>
						</h1>
						<table cellspacing="1" cellpadding="1" width="100%">
							<tbody>
								<tr>
									<td height="4" colspan="4"></td>
								</tr>
								<tr>
									<td><table cellspacing="0" cellpadding="0" width="100%">
											<tbody>

												<tr>
													<td class="studyprogram_tabledetails_td_header_dl"
														width="5%" style="text-align: center">STT</td>
													<td class="studyprogram_tabledetails_td_header_dl"
														width="15%" style="text-align: center">Mã Học viên</td>
													<td class="studyprogram_tabledetails_td_header_dl"
														width="25%" style="text-align: center">Tên</td>
													<td class="studyprogram_tabledetails_td_header_dl"
														width="30%" style="text-align: center">Email</td>
													<td class="studyprogram_tabledetails_td_header_dl"
														width="15%" style="text-align: center">Ngày sinh</td>
													<td class="studyprogram_tabledetails_td_header_dl"
														width="10%" style="text-align: center">Chi Tiết</td>
												<tr>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;1</td>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;14110001</td>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;Nguyễn
														Tuấn Anh</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;nguyentuananh@gmail.com</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;09/04/1994</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl"><a
														class="under popup-login" rel="#overlay-chitiet-hocvien">Chi
															tiết</a></td>
												</tr>

												<tr>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;2</td>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;14110002</td>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;Nguyễn
														Ngọc Anh</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;nguyenngocanh@gmail.com</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;2/11/1996</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl"><a
														href="" target="_blank">Chi tiết</a></td>
												</tr>

												<tr>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;3</td>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;14110003</td>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;Nguyễn
														Quốc Anh</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;nguyenquocanh@gmail.com</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;20/10/1995</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl"><a
														href="" target="_blank">Chi tiết</a></td>
												</tr>

												<tr>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;4</td>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;14110004</td>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;Lê
														Gia Trung</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;legiatrung@gmail.com</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;2/12/1996</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl"><a
														href="" target="_blank">Chi tiết</a></td>
												</tr>

												<tr>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;5</td>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;14110030</td>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;Phạm
														Trung Dũng</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;phamtrungdung@gmail.com</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;22/1/1996</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl"><a
														href="" target="_blank">Chi tiết</a></td>
												</tr>

												<tr>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;6</td>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;14110176</td>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;Lê
														Nam</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;lenam@gmail.com</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;6/4/</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl"><a
														href="" target="_blank">Chi tiết</a></td>
												</tr>

												<tr>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;7</td>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;14110002</td>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;Nguyễn
														Ngọc Anh</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;nguyenngocanh@gmail.com</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;14110002@student.stydyfunny.edu.vn</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl"><a
														href="" target="_blank">Chi tiết</a></td>
												</tr>

												<tr>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;8</td>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;14110003</td>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;Nguyễn
														Quốc Anh</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;nguyenquocanh@gmail.com</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;14110003@student.studyfunny.edu.vn</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl"><a
														href="" target="_blank">Chi tiết</a></td>
												</tr>

												<tr>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;9</td>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;14110004</td>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;Lê
														Gia Trung</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;legiatrung@gmail.com</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;14110004@student.studyfunny.edu.vn</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl"><a
														href="" target="_blank">Chi tiết</a></td>
												</tr>

												<tr>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;10</td>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;14110030</td>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;Phạm
														Trung Dũng</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;phamtrungdung@gmail.com</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;14110030@student.studyfunny.edu.vn</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl"><a
														href="" target="_blank">Chi tiết</a></td>
												</tr>

												<tr>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;11</td>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;14110176</td>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;Lê
														Nam</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;lenam@gmail.com</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;14110176@student.studyfunny.edu.vn</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl"><a
														href="" target="_blank">Chi tiết</a></td>
												</tr>

												<tr>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;12</td>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;14110002</td>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;Nguyễn
														Ngọc Anh</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;nguyenngocanh@gmail.com</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;14110002@student.stydyfunny.edu.vn</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl"><a
														href="" target="_blank">Chi tiết</a></td>
												</tr>

												<tr>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;13</td>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;14110003</td>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;Nguyễn
														Quốc Anh</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;nguyenquocanh@gmail.com</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;14110003@student.studyfunny.edu.vn</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl"><a
														href="" target="_blank">Chi tiết</a></td>
												</tr>

												<tr>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;14</td>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;14110004</td>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;Lê
														Gia Trung</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;legiatrung@gmail.com</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;14110004@student.studyfunny.edu.vn</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl"><a
														href="" target="_blank">Chi tiết</a></td>
												</tr>

												<tr>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;15</td>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;14110030</td>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;Phạm
														Trung Dũng</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;phamtrungdung@gmail.com</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;14110030@student.studyfunny.edu.vn</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl"><a
														href="" target="_blank">Chi tiết</a></td>
												</tr>

												<tr>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;16</td>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;14110176</td>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;Lê
														Nam</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;lenam@gmail.com</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;14110176@student.studyfunny.edu.vn</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl"><a
														href="" target="_blank">Chi tiết</a></td>
												</tr>
												<tr>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;17</td>

													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;14110002</td>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;Nguyễn
														Ngọc Anh</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;nguyenngocanh@gmail.com</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;14110002@student.stydyfunny.edu.vn</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl"><a
														href="" target="_blank">Chi tiết</a></td>
												</tr>

												<tr>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;18</td>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;14110003</td>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;Nguyễn
														Quốc Anh</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;nguyenquocanh@gmail.com</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;14110003@student.studyfunny.edu.vn</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl"><a
														href="" target="_blank">Chi tiết</a></td>
												</tr>

												<tr>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;19</td>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;14110004</td>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;Lê
														Gia Trung</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;legiatrung@gmail.com</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;14110004@student.studyfunny.edu.vn</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl"><a
														href="" target="_blank">Chi tiết</a></td>
												</tr>

												<tr>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;20</td>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;14110030</td>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;Phạm
														Trung Dũng</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;phamtrungdung@gmail.com</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;14110030@student.studyfunny.edu.vn</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl"><a
														href="" target="_blank">Chi tiết</a></td>
												</tr>

												<tr>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;21</td>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;14110176</td>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;Lê
														Nam</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;lenam@gmail.com</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;14110176@student.studyfunny.edu.vn</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl"><a
														href="" target="_blank">Chi tiết</a></td>
												</tr>



											</tbody>
										</table></td>
								</tr>
							</tbody>
						</table>
						<div class="bv-pagging">
							<style>
.bv-pagging {
	float: left;
	margin-top: 5px;
	margin-bottom: 10px;;
	padding-right: 15px;
	text-align: right;
	width: 890px;
}

.bv-pagging a {
	color: #565656;
	display: inline-block;
	font-size: 14px;
	font-weight: bold;
	height: 20px;
	line-height: 20px;
	margin-left: 3px;
	text-align: center;
	width: 20px;
}

.bv-pagging a:hover, .bv-pagging a.active {
	background-color: #00918D;
	color: #FFFFFF;
}
</style>
							<a
								href="#">
								&lt;</a> <a class="active"
								href="#">
								1</a> <a
								href="#">
								&gt;</a>

						</div>

					</div>

					<div class="body" id="DSBTRa" style="margin-left: 10px">
						<h1 style="color: blue;">
							<span>Danh sách bài tập đã ra</span>
						</h1>
						<table cellspacing="1" cellpadding="1" width="100%">
							<tbody>
								<tr>
									<td height="4" colspan="4"></td>
								</tr>
								<tr>
									<td><table cellspacing="0" cellpadding="0" width="100%">
											<tbody>

												<tr>
													<td class="studyprogram_tabledetails_td_header_dl"
														width="30%" style="text-align: center">Topic</td>
													<td class="studyprogram_tabledetails_td_header_dl"
														width="30%" style="text-align: center">Tên Bài Tập</td>
													<td class="studyprogram_tabledetails_td_header_dl"
														width="30%" style="text-align: center">Hạn Nộp</td>
													<td class="studyprogram_tabledetails_td_header_dl"
														width="10%" style="text-align: center">Chi tiết</td>
												</tr>

												<tr>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;Chương
														3. JQUERY</td>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;Các
														chức năng chứa jquery trong BTL</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;1/11/2016,
														0:0</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl"><a
														class="lnk-logout under" href="Chi-Tiet-Bai-Tap.jsp"
														target="_blank">Chi tiết</a></td>
												</tr>

												<td class="studyprogram_tabledetails_td_content_dl">&nbsp;Chương
													4. AJAX</td>
												<td class="studyprogram_tabledetails_td_content_dl">&nbsp;Những
													chức năng có thể dùng được AJAX trong BTL</td>
												<td
													class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;7/11/2016,
													12:0</td>
												<td
													class="studyprogram_tabledetails_td_content_aligncenter_dl"><a
													class="lnk-logout under" href="Chi-Tiet-Bai-Tap.jsp"
													target="_blank">Chi tiết</a></td>
												</tr>

											</tbody>
										</table></td>
								</tr>
							</tbody>
						</table>
						<div class="bv-pagging">
							<style>
.bv-pagging {
	float: left;
	margin-top: 5px;
	margin-bottom: 10px;;
	padding-right: 15px;
	text-align: right;
	width: 890px;
}

.bv-pagging a {
	color: #565656;
	display: inline-block;
	font-size: 14px;
	font-weight: bold;
	height: 20px;
	line-height: 20px;
	margin-left: 3px;
	text-align: center;
	width: 20px;
}

.bv-pagging a:hover, .bv-pagging a.active {
	background-color: #00918D;
	color: #FFFFFF;
}
</style>
							<a
								href="#">
								&lt;</a> <a class="active"
								href="#">
								1</a> <a
								href="#">
								&gt;</a>
						</div>
					</div>

					<div class="body" id="DSBTNop" style="margin-left:10px">
						<h1 style="color: blue;">
							<span>Danh sách bài tập đã nộp</span>
						</h1>
						<table cellspacing="1" cellpadding="1" width="100%">
							<tbody>
								<tr>
									<td height="4" colspan="4"></td>
								</tr>
								<tr>
									<td><table cellspacing="0" cellpadding="0" width="100%">
											<tbody>

												<tr>
													<td class="studyprogram_tabledetails_td_header_dl"
														width="15%" style="text-align: center">Topic</td>
													<td class="studyprogram_tabledetails_td_header_dl"
														width="25%" style="text-align: center">Tên Bài Tập</td>
													<td class="studyprogram_tabledetails_td_header_dl"
														width="15%" style="text-align: center">Mã Học Viên</td>
													<td class="studyprogram_tabledetails_td_header_dl"
														width="20%" style="text-align: center">Tên Học Viên</td>
													<td class="studyprogram_tabledetails_td_header_dl"
														width="10%" style="text-align: center">Thời Điểm Nộp</td>
													<td class="studyprogram_tabledetails_td_header_dl"
														width="5%" style="text-align: center">Điểm</td>
													<td class="studyprogram_tabledetails_td_header_dl"
														width="10%" style="text-align: center">Chi Tiết</td>
												</tr>

												<tr>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;Chương
														3. JQUERY</td>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;Các
														chức năng chứa jquery trong BTL</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;14110002</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;Nguyễn
														Tuấn Anh</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;10/10/2016,
														9:45</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl"></td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl"><a
														class="under popup-login" rel="#overlay-chitiet-btnop">Chi
															tiết</a></td>
												</tr>

												<tr>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;Chương
														3. JQUERY</td>
													<td class="studyprogram_tabledetails_td_content_dl">&nbsp;Các
														chức năng chứa jquery trong BTL</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;14110091</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;Nguyễn
														Văn Khánh</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;10/10/2016,
														19:26</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl">&nbsp;9</td>
													<td
														class="studyprogram_tabledetails_td_content_aligncenter_dl"><a
														class="under popup-login" rel="#overlay-chitiet-btnop">Chi
															tiết</a></td>
												</tr>

											</tbody>
										</table></td>
								</tr>
							</tbody>
						</table>
						<div class="bv-pagging">
							<style>
.bv-pagging {
	float: left;
	margin-top: 5px;
	margin-bottom: 10px;;
	padding-right: 15px;
	text-align: right;
	width: 890px;
}

.bv-pagging a {
	color: #565656;
	display: inline-block;
	font-size: 14px;
	font-weight: bold;
	height: 20px;
	line-height: 20px;
	margin-left: 3px;
	text-align: center;
	width: 20px;
}

.bv-pagging a:hover, .bv-pagging a.active {
	background-color: #00918D;
	color: #FFFFFF;
}
</style>
							<a
								href="#">
								&lt;</a> <a class="active"
								href="#">
								1</a> <a
								href="#">
								&gt;</a>
						</div>
					</div>

					<script>
						$(document)
								.ready(
										function() {
											$('.lnk-menu-header')
													.click(
															function() {
																try {

																	var id_tab = $(
																			this)
																			.attr(
																					'name');
																	if ($(this)
																			.hasClass(
																					'menu_active')) {

																	} else {
																		$(
																				'.lnk-menu-header')
																				.removeClass(
																						'menu_active');
																		$(
																				'.body')
																				.hide();
																		$(this)
																				.addClass(
																						'menu_active');
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
						function loadDSBTRa() {
							var id_tab2 = $(this).attr('name');
							$('.lnk-menu-header').removeClass('menu_active');
							$('.body').hide();
							$('#DSBT').addClass('menu_active');
							$('#DSBTRa').fadeIn("slow");
						}
						function loadDSBTNop() {
							var id_tab2 = $(this).attr('name');
							$('.lnk-menu-header').removeClass('menu_active');
							$('.body').hide();
							$('#DSBT').addClass('menu_active');
							$('#DSBTNop').fadeIn("slow");
						}
					</script>
				</div>
			</div>

			<div
				style="width: 392px; position: fixed; z-index: 0; top: 66.2px; left: 478.5px; display: none;"
				id="overlay-add-assignment">
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
</style>
				<div class="box-popup2">
					<a class="popup-close">X </a>
					<h3 class="bp-title">Add an activity or resource</h3>
					<div class="bpc-row">
						<div class="add-source-left" id="style-source">
							<div class="bpc-row">
								<a class="choose-style active" name="BaiTap"><span>Bài
										tập</span></a>
							</div>
							<div class="bpc-row">
								<a class="choose-style" name="File"><span>File</span></a>
							</div>

							<div class="bpc-row">
								<a class="choose-style" name="URL"><span>URL</span></a>
							</div>
							<div class="bpc-row">
								<a class="choose-style" name="TracNghiem"><span>Thi
										trắc nghiệm</span></a>
							</div>
						</div>
						<div class="add-source-right" id="BaiTap" style="display: block">
							<div class="bpc-row">
								<span class="sp-text">Thêm bài tập</span>
							</div>
							<div class="bpc-row">
								<span class="sp-text"></span>
							</div>
							<div class="add-footer">

								<a href="edit-assignment.jsp"><input type="button" name="" value="Add"
									 id=""
									class="bpt-lnk-save btn-add"></a>
								
							</div>
						</div>

						<div class="add-source-right" id="File">
							<div class="bpc-row">
								<span class="sp-text">Chọn file đính kèm</span>
							</div>
							<div class="bpc-row">
								<span class="sp-text"><input name="ctl14$ThongTinHocVien$UserImage1" type="file"
									id="ctl14_ThongTinHocVien_UserImage1" class="file"
									style="width: 210px">
								<p class="bpt-note-img">
									<span id="ctl14_ThongTinHocVien_lblErrImage"></span>
								</p>
							</div>
							<div class="add-footer">

								<input type="submit" name="login$btnDangNhap" value="Add"
									onclick="btnDangNhap_OnClientClick();" id="login_btnDangNhap"
									class="bpt-lnk-save btn-add">
								<!--<script type="text/javascript">
                           function btnDangNhap_OnClientClick() {
                                document.getElementById('login_btnDangNhap').style.visibility = 'hidden';
                                return true;
                            }
                        </script>-->

							</div>
						</div>

						<div class="add-source-right" id="URL">
							<div class="bpc-row">
								<span class="sp-text">Thêm URL</span>
							</div>
							
							<div class="bpt-row">
							
				                <div class="bpt-item-right">
				                    <input name="ctl14$ThongTinHocVien$txtLop" type="text" maxlength="200" id="ctl14_ThongTinHocVien_txtLop" class="bpt-txt" style="margin-left:15px">
				               	</div>
				            </div>
							
							<div class="add-footer">
								<input type="submit" name="login$btnDangNhap" value="Add"
									onclick="btnDangNhap_OnClientClick();" id="login_btnDangNhap"
									class="bpt-lnk-save btn-add">
								<!--<script type="text/javascript">
                           function btnDangNhap_OnClientClick() {
                                document.getElementById('login_btnDangNhap').style.visibility = 'hidden';
                                return true;
                            }
                        </script>-->

							</div>
						</div>

						<div class="add-source-right" id="TracNghiem">
							<div class="bpc-row">
								<span class="sp-text">Thêm Thi trắc nghiệm</span>
							</div>
							<div class="bpc-row">
								<span class="sp-text"></span>
							</div>
							<div class="add-footer">

								<a href="edit-quiz.jsp"><input type="button" name="" value="Add"
									 id=""
									class="bpt-lnk-save btn-add"></a>
								
							</div>
						</div>
					</div>

				</div>


				<script>
					$(document).ready(function() {
						$('.choose-style').click(function() {
							try {
								var id_tab = $(this).attr('name');
								if ($(this).hasClass('active')) {
								} else {
									$('.choose-style').removeClass('active');
									$('.add-source-right').hide();
									$(this).addClass('active');
									$('#' + id_tab).fadeIn("slow");
								}
							} catch (err) {
							}
						});
					});
				</script>
			</div>


			<div
				style="width: 392px; position: fixed; z-index: 0; top: 66.2px; left: 478.5px; display: none;"
				id="overlay-chitiet-hocvien">
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
					<h3 class="bp-title">Thông tin chi tiết</h3>
					<div class="bp-content">
						<div id="login_pnLogin">
							<div class="bpc-row">
								<span class="sp-left">Tên:</span> <span class="sp-right">Nguyễn
									Tuấn Anh</span>
							</div>
							<div class="bpc-row">
								<span class="sp-left">SĐT:</span> <span class="sp-right">0986127612</span>
							</div>
							<div class="bpc-row">
								<span class="sp-left">Giới tính:</span> <span class="sp-right">Nam</span>
							</div>
							<div class="bpc-row">
								<span class="sp-left">Ngày sinh:</span> <span class="sp-right">
									09/04/1994</span>
							</div>
							<div class="bpc-row">
								<span class="sp-left">Email:</span> <span class="sp-right">nguyentuananh@gmail.com</span>
							</div>
							<div class="bpc-row">
								<span class="sp-left">Ảnh đại diện:</span>
								<div class="bpt-img-avarta">
									<img src="media.studyfunny.vn" alt="" height="48px">
								</div>
							</div>
							<div class="bpc-row">
								<span class="sp-left">Địa chỉ:</span> <span class="sp-right">TPHCM</span>
							</div>

							<div class="bpc-row" style="margin-top: 20px;">
								<span class="sp-left"></span> <span class="sp-right"> <a
									class="close"><input type="submit" value="Ok"
										" id="btnforget" class="bpt-lnk-save btn-login"></a>
								</span>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div
				style="width: 392px; position: fixed; z-index: 0; top: 66.2px; left: 478.5px; display: none;"
				id="overlay-chitiet-btnop">
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
					<h3 class="bp-title">Thông tin chi tiết</h3>
					<div class="bp-content">
						<div id="login_pnLogin">
							<div class="bpc-row">
								<span class="sp-left">Topic</span> <span class="sp-right">Chương
									3. JQUERY</span>
							</div>
							<div class="bpc-row">
								<span class="sp-left">Tên bài tập</span> <span class="sp-right">Các
									chức năng chứa jquery trong BTL</span>
							</div>
							<div class="bpc-row">
								<span class="sp-left">File bài tập</span> <span class="sp-right"><a
									class="under instance-color">jquery.docx</a></span>
							</div>
							<div class="bpc-row">
								<span class="sp-left">Mã học viên:</span> <span class="sp-right">14110002</span>
							</div>
							<div class="bpc-row">
								<span class="sp-left">Tên học viên:</span> <span
									class="sp-right"> Nguyễn Tuấn Anh</span>
							</div>
							<div class="bpc-row">
								<span class="sp-left">Thời Điểm Nộp:</span> <span
									class="sp-right">10/10/2016, 9:45 </span>
							</div>
							<div class="bpc-row">
								<span class="sp-left">Điểm:</span> <span class="sp-right">
									<input name="ctl14$ThongTinHocVien$txtTenDayDu" type="text"
									value="" maxlength="100" id="ctl14_ThongTinHocVien_txtTenDayDu"
									class="bpt-txt">
								</span>
							</div>
							<div class="bpc-row">
								<span class="sp-left">Đánh giá:</span>
								<textarea class="txt-input" name="txtAddedContent"
									style="height: 80px; width: 200px;" id="txtAddedContent"
									placeholder="Nội dung"></textarea>
							</div>

							<div class="bpc-row" style="margin-top: 20px;">
								<span class="sp-left"></span> <span class="sp-right"> <a
									class="close"><input type="submit" value="Ok"
										" id="btnforget" class="bpt-lnk-save btn-login"></a>
								</span>
							</div>
						</div>
					</div>
				</div>
			</div>


		</div>
		<!--end-body-->

		<a id="to_top" href="#"
			style="bottom: 20px; position: fixed; right: 20px; z-index: 9999; display: none;"
			rel="nofollow"> <img alt="Go to top!"
			src="Images/gototop.png"></a>
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

				<!--<a class="logo_Study-Funny" rel="nofollow"></a>-->

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

		<!--end-footer-->
		<div id="overlay-footer">
			<div id="overlay-footer-left"></div>
			<div id="overlay-footer-right"></div>
		</div>
		<!--end-overlay-footer-->

		</div>
		<!--end-wrapper-->
		<div style="width: 392px; display: none;" id="overlay-test">
			<a class="close"></a>
			<div class="box-popup" id="box_popup"></div>
		</div>


		<div style="width: 392px; display: none" id="overlay-login">
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
				<h3 class="bp-title">Đăng nhập</h3>
			</div>
		</div>

		<script type="text/javascript">
			function refreshCaptcha(capchaid, capchlength) {

				$('.capcha').attr(
						'src',
						'./uControls/Capcha/capchaImage.aspx' + '?id='
								+ capchaid + '&len=' + capchlength + '&r='
								+ Math.random());
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
			function setCookie(name, value, expires, path, domain, secure) {
				var curCookie = name
						+ "="
						+ encodeURI(value)
						+ ((expires) ? "; expires=" + expires.toGMTString()
								: "") + ((path) ? "; path=" + path : "")
						+ ((domain) ? "; domain=" + domain : "")
						+ ((secure) ? "; secure" : "");
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
				$create(Sys.UI._UpdateProgress, {
					"associatedUpdatePanelId" : "Header_Widget_GopY_pnGopY",
					"displayAfter" : 500,
					"dynamicLayout" : true
				}, null, null, $get("Header_Widget_GopY_UpdateProgress1"));
			});
			Sys.Application.add_init(function() {
				$create(Sys.UI._UpdateProgress, {
					"associatedUpdatePanelId" : "ctl14_TienTrinhThi_upThi",
					"displayAfter" : 500,
					"dynamicLayout" : true
				}, null, null, $get("ctl14_TienTrinhThi_UpdateProgress1"));
			});
			Sys.Application.add_init(function() {
				$create(Sys.UI._UpdateProgress, {
					"associatedUpdatePanelId" : "ctl14_DoiMatKhau_upDoiMK",
					"displayAfter" : 500,
					"dynamicLayout" : true
				}, null, null, $get("ctl14_DoiMatKhau_UpdateProgress1"));
			});
			Sys.Application.add_init(function() {
				$create(Sys.UI._UpdateProgress, {
					"associatedUpdatePanelId" : "login_pnLogin",
					"displayAfter" : 500,
					"dynamicLayout" : true
				}, null, null, $get("login_UpdateProgress1"));
			});
			//]]>
		</script>
	<!-- </form> -->






	<script type="text/javascript">
		function EnterKeyPress(id, e) {
			if (window.event) {
				e = window.event;
			}
			if (e.keyCode == 13 || e.keyCode == 121) {
				document.getElementById(id).click();
			}
		}
	</script>







</body>
</html>