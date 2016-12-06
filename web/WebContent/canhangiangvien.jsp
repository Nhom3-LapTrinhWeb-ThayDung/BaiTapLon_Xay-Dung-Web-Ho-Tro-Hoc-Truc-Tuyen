<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="model.Users"%>
<%@page import="model.User_info"%>
<%@page import="model.Course"%>
<%@page import="dao.CourseDAO"%>
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
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.bxSlider.min.js"></script>
<script type="text/javascript" src="js/overlay2.js"></script>
<script type="text/javascript" src="js/home.js"></script>
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>

</head>
<body>

	<!-- <form name="form1" method="post" action="canhangiangvien.jsp"
		id="form1" enctype="multipart/form-data"> -->
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
								
								<div class="vt-gadget-p">
									
										
										 <input type="submit" name="Header1$Widget$GopY$btnGui"
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
									src="Images/ajax-loader.gif" alt="StudyFunny">
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
								window.location.href = '/index.html'; //will redirect to your blog page (an ex: blog.html)
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
					<span class="vt-gadget-more"> </span>
					<h3 class="vt-gadget-title">
						<span class="vt-gadget-sp"> LIÊN HỆ </span> <a
							class="vt-gadget-close"> X </a>
					</h3>
					<div class="wrap-vt-gadget">
						<h2 class="vt-gadget-h1-hotline">
							Hotline 0962126964 <br> <span style="font-size: 15px">(miễn
								phí)</span>
						</h2>
						<p>
							Email: <a href="mailto:congtuhot9.9@gmail.com"
								style="color: #14928E">StudyFunny@gmail.com</a>
						</p>
						<p class="vt-gadget-p-content">Hỗ trợ giải đáp tất cả thắc mắc
							về các khóa học cách học và cách thức học tập trên StudyFunny</p>
						<a rel="nofollow" class="vt-gadget-lnk-fb"
							href="https://www.facebook.com/StudyFunny">Study Funny</a>
					</div>
				</div>
				<a class="vts-gadget-lnk show-popup" title="Liên hệ"> </a>
			</div>
		</div>


		<%@ include file="//includes/header.jsp"%>
		<%CourseDAO courseDAO= new CourseDAO();	 %>

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



		<script type="text/javascript" src="js/search.js"></script>

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
						n.callMethod ? n.callMethod.apply(n, arguments)
								: n.queue.push(arguments)
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

								<img src="<%=user_info.getAnhdaidien() %>" alt="" class="persion-avatar-img">
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
						style="display: none;">
						<h3 class="learn-process-h3">
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
			                        <%	int i=0;
			                        	for (Course course : courseDAO.getListCourse(user_info.getId())) 
			                        	{
			                        		i++;
			                        %>
	                                <div class="row" name ="1">
	                                    <a  href ="khoahoc2.jsp?course_id=<%=course.getCourse_id()%>" name ="1">
	                                        <p class="to-l-p-img">
	                                            <span class="sp-text"> KHÓA HỌC </span><span class="sp-number">
	                                                <%=i %>
	                                            </span>
	                                        </p>
	                                    </a>
	                                    <a  href ="khoahoc2.jsp?course_id=<%=course.getCourse_id()%>" name = "1">
	                                        <p class="to-l-p-name">
	                                            <span class="bold">
	                                               <%=course.getCourse_name()%></span>
	                                        </p>
	                                    </a>
	                                </div>
	                                <%
	                        			}
	                                %>
	                    </div>
                    <!-- <div class="bv-pagging">
                        <style>
                            .bv-pagging
                            {
                                float: left;
                                margin-top: 5px;
                                margin-bottom: 10px; ;padding-right:15px;text-align:right;width:612px;}
                            .bv-pagging a
                            {
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
                            .bv-pagging a:hover, .bv-pagging a.active
                            {
                                background-color: #00918D;
                                color: #FFFFFF;
                            }
                        </style>
                        <a href="CacKhoaHocDaDangKy.jsp">
                            &lt;</a>
                        
                        <a class="active" href="CacKhoaHocDaDangKy.jsp">
                            1</a>
                        
                        <a href="DanhSachKhoaHocpage2.jsp">
                            2</a>
                        
                        <a href="DanhSachKhoaHocpage2.jsp">
                            &gt;</a>
                        
                    </div> -->
                    <script type="text/javascript">
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
					<div class="persion-right persion-detail" id="QuanLyCommentNew"
						style="display: none;"></div>
					<div class="persion-right persion-detail" id="LichSuGiaoDichNew"
						style="display: none;"></div>

					<!--list khoa hoc dang day-->

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



														</select> <select name="endlession" id="endlession"
															class="bpt-sl-sex">
															<option selected="selected" value="0">Tiết kết
																thúc</option>
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
											<div class="bpt-row">
												<div class="bpt-item-left">Mã bảo mật</div>
												<div class="bpt-item-right">
													<input name="ctl14$ThongTinHocVien$txtCapcha" type="text"
														maxlength="10" id="ctl14_ThongTinHocVien_txtCapcha"
														class="bpt-txt" autocomplete="off" style="width: 120px;">
													<a onclick="refreshCaptcha('ThongTinHocVien','5')"
														style="float: left; width: 100px;">


														<div
															style="float: left; padding-left: 8px; padding-right: 20px">
															<img class="capcha"
																src="http://viettelstudy.vn/uControls/Capcha/capchaImage.aspx?len=5&amp;id=StepLogin"
																title="Lấy mã khác" alt="ViettelStudy">

														</div>

													</a>
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
												<!-- 								
					<span class="sp-right" style="text-align: center"> <input
						style="margin-left: 170px;" type="submit" name="login$btnDangNhap"
						value="Chấp Nhận" id="" class="bpt-lnk-save btn-login" />
						</span> -->
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
						 
						//alert($('#schedulingday').val());
					}
				</script>
											</div>
											<input type="hidden" name="TokenCSRF_Canhan"
												value="2BAA3CD3A4585B655BAF137E975E7DFB1113F7F1A3EC1EBA215CD641911491FF4531083F7B50F51CAD86663991A3CB54FD6410C064C61EF30C232ABAAA2A73B6">
										</div>
										<!--end-edit-user---->
									</div>
								</div>


								<div id="ctl14_TienTrinhThi_UpdateProgress1"
									style="display: none;"></div>


							</div>



							<script type="text/javascript">
								$(document)
										.ready(
												function() {

													$('.pln-lnk-share')
															.live(
																	'click',
																	function(e) {
																		e
																				.preventDefault();
																		var path = $(
																				this)
																				.attr(
																						'exam-url');
																		var url = "https://www.facebook.com/sharer/sharer.php?u=http://viettelstudy.vn/"
																				+ path
																				+ "&amp;t=ViettelStudy";
																		window
																				.open(
																						url,
																						'_blank');
																		return false;
																	});

												});
							</script>
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
									username = "<%=users.getUserName()%>"
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
						<div id="ctl14_DoiMatKhau_UpdateProgress1" style="display: none;">

							<div class="bpt-row">
								<div class="bpt-item-left"></div>
								<div class="bpt-item-right">
									<img src="images/ajax-loader.gif" alt="StudyFunny">
								</div>
							</div>

						</div>

						<script type="text/javascript">
								function refreshCaptcha(capchaid, capchlength) {

									$('.capcha').attr(
											'src',
											'./uControls/Capcha/capchaImage.aspx'
													+ '?id=' + capchaid
													+ '&len=' + capchlength
													+ '&r=' + Math.random());
								}
							</script>
					</div>
					
					<div class="persion-right" id="DetailUser" style="display: block;">
						<form id = "formuserinfo" action="UploadServlet" method="post" enctype="multipart/form-data">
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
													id="ctl14_ThongTinHocVien_lblErrTenDayDu"></span> 
													<input
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
														$(document).ready(function() {
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
																		})
													</script>



											</div>
										</div>
										<div class="bpt-row">
											<div class="bpt-item-left">Ngày/tháng/năm sinh:</div>
											<div class="bpt-item-right">
												<select name="ngaysinh" id="ngaysinh" class="bpt-sl-date">
													<option value="0">Ngày</option>
													<option value="25">25</option>
												</select> <select name="thangsinh" id="thangsinh"
													class="bpt-sl-month">
													<option value="0">Tháng</option>
												</select> <select name="namsinh" id="namsinh" class="bpt-sl-date">
													<option value="0">Năm</option>

												</select>
												<script type="text/javascript">
														$(document).ready(function() {
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
																		});
														
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
												<img src="<%=user_info.getAnhdaidien()%>" id="anhdaidien" alt=""
													height="48px">

											</div>
											<input name="uploadFile" type="file"
												accept="image/*" id="uploadFile" class="file" style="width: 210px">
												<input name="" type="submit"
												value="cập nhật ảnh đại diện" style=" width: 150; height: 30;">
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
										<a id="btnupdateuser" class="bpt-lnk-save" onclick="btnupdateuserclick()">
											Chấp nhận </a>
											
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
											'namsinh':$('#namsinh').val(),'ten':$('#ten').val(),'sodienthoai':$('#sodienthoai').val()}, function (data) {
											if(data=="update success!")
												{
												 	location.reload();
												}
											else
												$('#errorupdateuser').html(data);
											},'text');
									}
						}
						</script>
						<script type="text/javascript">
								function refreshCaptcha(capchaid, capchlength) {
									$('#capcha').attr(
											'src',
											'./uControls/Capcha/capchaImage.aspx'
													+ '?id=' + capchaid
													+ '&len=' + capchlength
													+ '&r=' + Math.random());
								}
							</script>
					</div>
				</div>
			</div>

			<script type="text/javascript">
					function loadUserControl(id_load) {
						$('#' + id_load).show();
						var a1 = document.getElementById(id_load)
						a1.innerHTML = '';
						if (a1.innerHTML == '') {
							$.ajax({
								type : "get",
								url : './Ajax/CaNhan/' + id_load.toString()
										+ '.aspx',
								success : function(msg) {
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
	<div style="width: 392px; display: none;" id="overlay-test">
		<a class="close"></a>
		<div class="box-popup" id="box_popup"></div>
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