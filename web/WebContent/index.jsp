<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="model.Users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" href="css/support_face.css" type="text/css">
<link rel="stylesheet" href="css/home.css" type="text/css">
<link rel="stylesheet" href="css/common.css" type="text/css">
<link rel="stylesheet" href="css/comment.css" type="text/css">
<!--<link rel="stylesheet" href="public/bootstrap/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="public/bootstrap/js/bootstrap.min.js" type="text/css">-->
<link rel="stylesheet" href="js/jquery-1.10.2.min.js" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Hỗ trợ học trực tuyến</title>

<link rel="icon" href="Images/favicon.ico">
<link rel="publisher"
	href="https://plus.google.com/112426293146006228836">
<link href="index.jsp" rel="canonical">


<script async="" src="//connect.facebook.net/en_US/fbevents.js"></script>
<script type="text/javascript" async=""
	src="http://www.google-analytics.com/ga.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.bxSlider.min.js"></script>
<script type="text/javascript" src="js/overlay2.js"></script>
<script type="text/javascript" src="js/home.js"></script>


</head>
<body>

	<div></div>



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
		<%@ include file="//includes/overlaylogin.jsp" %>
		<script type="text/javascript">

		<script type="text/javascript">
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


		<!--end-header-->
		<div id="body">
			<!--Alert-->
			<div class="banner-news">
				<div class="box-banner">

					<div class="bx-wrapper" style="width: 960px; position: relative;">
						<div class="bx-window"
							style="height: 160px; width: 960px; position: relative; overflow: hidden;">
							<ul class="bxslider-banner">

								<li
									style="list-style: none; position: absolute; top: 0px; left: 0px; z-index: 99;">
									<a
									href="http://viettelstudy.vn/vnu/bai-thi-tong-hop-danh-gia-nang-luc-chung.html"
									target="_self"> <img
										src="http://media.viettelstudy.vn:8080/archive/imageslead/Banner/201609/20160926/thumb11_178893563.png"
										alt="viettelstudy.vn">
								</a>
								</li>

								<li
									style="list-style: none; position: absolute; top: 0px; left: 0px; z-index: 98; opacity: 0;">
									<a
									href="http://tienganh1.viettelstudy.vn/viettel/public/khoa-hoc/luyen-thi-toeic"
									target="_self"> <img
										src="http://media.viettelstudy.vn:8080/archive/imageslead/Banner/201609/20160926/thumb11_27705346.jpg"
										alt="viettelstudy.vn">
								</a>
								</li>

							</ul>
						</div>
						<div class="bx-pager">
							<a href="" class="pager-link pager-1 pager-active">1</a><a
								href="" class="pager-link pager-2">2</a>
						</div>
					</div>


				</div>

			</div>
			<!--end-banner-news-->


			<div class="vt_dn">
				<div class="bx-wrapper" style="width: 960px; position: relative;">
					<div class="bx-window"
						style="height: 71px; width: 960px; position: relative; overflow: hidden;">
						<div class="wrap-chamngon">

							<div class="chamngon"
								style="list-style: none; position: absolute; top: 0px; left: 0px; z-index: 99;">
								<span class="sp-dot">“&nbsp;&nbsp;</span>
								<div style="display: inline">
									<p>Giáo dục là vũ khí mạnh nhất mà người ta có thể sử dụng
										để thay đổi cả thế giới.</p>
								</div>
								<span class="sp-dot">&nbsp;&nbsp;”</span>
								<div class="article">N.Mandela</div>
							</div>


						</div>
					</div>
					<div class="bx-pager">
						<a href="" class="pager-link pager-1 pager-active">1</a>
					</div>
				</div>
			</div>

			<h1 style="display: none">Mạng xã hội giáo dục, học ôn và luyện
				thi - ViettelStudy.vn</h1>
			<div class="home-news home-news-top">
				<h2 class="home-news-tab">
					<a href="http://tintuc.viettelstudy.vn/tin-tuc/giao-duc.html">TIN
						TỨC GIÁO DỤC</a>
				</h2>
				<div class="wrap-home-news">

					<div class="home-news-left">
						<div class="news-left-item">
							<a class="item-lnk-img"
								href="http://tintuc.viettelstudy.vn/tin-tuc/giao-duc/Phai-giam-sat-chat-cum-thi-dia-phuong-i4808c3.html">
								<img
								src="http://media.viettelstudy.vn:8080/archive/imageslead/182/201610/20161003/thumb00_03261692457621.jpg"
								alt="Phải giám sát chặt cụm thi địa phương"
								title="Phải giám sát chặt cụm thi địa phương">
							</a>
							<h3 class="news-item-h3">
								<a class="item-h3-lnk"
									href="http://tintuc.viettelstudy.vn/tin-tuc/giao-duc/Phai-giam-sat-chat-cum-thi-dia-phuong-i4808c3.html"
									title="Phải giám sát chặt cụm thi địa phương"> Phải giám
									sát chặt cụm thi địa phương </a>
							</h3>
						</div>


						<div class="box-news-other" style="display: none">
							<ul class="ul-news">

								<li><a
									href="http://tintuc.viettelstudy.vn/tin-tuc/giao-duc/Hoc-sinh-gioi-co-the-gap-kho-khan-voi-de-thi-Ngu-van-2017-i4803c3.html"
									title="Học sinh giỏi có thể gặp khó khăn với đề thi Ngữ văn 2017">
										Học sinh giỏi có thể gặp khó khăn với đề thi Ngữ văn 2017</a></li>

								<li><a
									href="http://tintuc.viettelstudy.vn/tin-tuc/giao-duc/Thi-THPT-quoc-gia-2017-Lo-xoay-xo-on-trac-nghiem-to-hop-i4797c3.html"
									title="Thi THPT quốc gia 2017: Lo xoay xở ôn trắc nghiệm, tổ hợp">
										Thi THPT quốc gia 2017: Lo xoay xở ôn trắc nghiệm, tổ hợp</a></li>

							</ul>
						</div>
					</div>
					<div class="home-news-right">
						<div class="home-news-right">

							<div class="news-right-item">
								<a class="right-item-lnk-img"
									href="http://tintuc.viettelstudy.vn/tin-tuc/goc-chia-se/Tai-sao-danh-hieu-hoc-sinh-truong-Ams-lai-la-niem-tu-hao-i4807c8.html">
									<img
									src="http://media.viettelstudy.vn:8080/archive/imageslead/182/201610/20161003/thumb00_11470441605573_150x84.jpg"
									alt="Tại sao danh hiệu học sinh trường Ams lại là niềm tự hào?"
									title="Tại sao danh hiệu học sinh trường Ams lại là niềm tự hào?">
								</a>
								<h3 class="right-item-title">
									<a class="item-title-lnk"
										href="http://tintuc.viettelstudy.vn/tin-tuc/goc-chia-se/Tai-sao-danh-hieu-hoc-sinh-truong-Ams-lai-la-niem-tu-hao-i4807c8.html"
										title="Tại sao danh hiệu học sinh trường Ams lại là niềm tự hào?">
										Tại sao danh hiệu học sinh trường Ams lại là niềm tự hào?</a>
								</h3>

							</div>

							<div class="news-right-item">
								<a class="right-item-lnk-img"
									href="http://tintuc.viettelstudy.vn/tin-tuc/giao-duc/Phai-giam-sat-chat-cum-thi-dia-phuong-i4808c3.html">
									<img
									src="http://media.viettelstudy.vn:8080/archive/imageslead/182/201610/20161003/thumb00_03261692457621_150x84.jpg"
									alt="Phải giám sát chặt cụm thi địa phương"
									title="Phải giám sát chặt cụm thi địa phương">
								</a>
								<h3 class="right-item-title">
									<a class="item-title-lnk"
										href="http://tintuc.viettelstudy.vn/tin-tuc/giao-duc/Phai-giam-sat-chat-cum-thi-dia-phuong-i4808c3.html"
										title="Phải giám sát chặt cụm thi địa phương"> Phải giám
										sát chặt cụm thi địa phương</a>
								</h3>

							</div> 

							<div class="news-right-item">
								<a class="right-item-lnk-img"
									href="http://tintuc.viettelstudy.vn/tin-tuc/giao-duc/Thi-THPT-quoc-gia-2017-Khong-cong-bo-de-thi-va-dap-an-mon-trac-nghiem-sau-thi-i4798c3.html">
									<img
									src="http://media.viettelstudy.vn:8080/archive/imageslead/182/201609/20160930/thumb00_082541850367601_150x84.jpg"
									alt="Thi THPT quốc gia 2017: Không công bố đề thi và đáp án môn trắc nghiệm sau thi"
									title="Thi THPT quốc gia 2017: Không công bố đề thi và đáp án môn trắc nghiệm sau thi">
								</a>
								<h3 class="right-item-title">
									<a class="item-title-lnk"
										href="http://tintuc.viettelstudy.vn/tin-tuc/giao-duc/Thi-THPT-quoc-gia-2017-Khong-cong-bo-de-thi-va-dap-an-mon-trac-nghiem-sau-thi-i4798c3.html"
										title="Thi THPT quốc gia 2017: Không công bố đề thi và đáp án môn trắc nghiệm sau thi">
										Thi THPT quốc gia 2017: Không công bố đề thi và đáp án môn
										trắc nghiệm sau thi</a>
								</h3>

							</div>


						</div>
					</div>
				</div>
			</div>

			<div id="ctl13_topbanner" style="float: left; margin-top: 3px">
				<a target="_blank" class="link-adv"
					href="http://viettelstudy.vn/luyen-de/160/Cong-pha-diem-8--9-mon-Toan"><img
					src="http://media.viettelstudy.vn:8080/archive/imageslead/Banner/201609/20160908/thumb11_705036412.png"
					alt="Viettelstudy.vn"></a>
			</div>

			<div class="vts-highlight vts-highlight-home">
				<h2 class="vts-highlight-header">
					<a class="vts-highlight-header">HỌC &amp; THI </a>
				</h2>
				<div class="vts-highlight-wrap">

					<div class="vts-highlight-item">
						<a class="vts-highlight-lnk-img"
							title="Bí kíp luyện đề thi THPT Quốc gia môn Toán"
							href="http://viettelstudy.vn/luyen-de/159/Bi-kip-luyen-de-thi-THPT-Quoc-gia-mon-Toan">
							<img
							src="http://media.viettelstudy.vn:8080/archive/imageslead/BoxNoibat/201607/20160708/thumb11_415658654.png"
							alt="Bí kíp luyện đề thi THPT Quốc gia môn Toán">
						</a>
						<h3 class="vts-highlight-h3">
							<a class="vts-highlight-lnk"
								title="Bí kíp luyện đề thi THPT Quốc gia môn Toán"
								href="http://viettelstudy.vn/luyen-de/159/Bi-kip-luyen-de-thi-THPT-Quoc-gia-mon-Toan">
								Bí kíp luyện đề thi THPT Quốc gia môn Toán </a>
						</h3>
						<p class="vts-highlight-statistic" style="display: none">15268
							Lượt xem</p>
					</div>

					<div class="vts-highlight-item">
						<a class="vts-highlight-lnk-img"
							title="Học Tiếng Anh chuyên ngành theo chuẩn quốc tế"
							href="http://viettelstudy.vn/tieng-anh/iig/tieng-anh-chuyen-nganh-esp-i11u0.html">
							<img
							src="http://media.viettelstudy.vn:8080/archive/imageslead/BoxNoibat/201607/20160718/thumb11_305983931.png"
							alt="Học Tiếng Anh chuyên ngành theo chuẩn quốc tế">
						</a>
						<h3 class="vts-highlight-h3">
							<a class="vts-highlight-lnk"
								title="Học Tiếng Anh chuyên ngành theo chuẩn quốc tế"
								href="http://viettelstudy.vn/tieng-anh/iig/tieng-anh-chuyen-nganh-esp-i11u0.html">
								Học Tiếng Anh chuyên ngành theo chuẩn quốc tế </a>
						</h3>
						<p class="vts-highlight-statistic" style="display: none">15268
							Lượt xem</p>
					</div>

					<div class="vts-highlight-item">
						<a class="vts-highlight-lnk-img"
							title="Luyện thi THPT Quốc gia môn Hóa"
							href="http://viettelstudy.vn/luyen-thi/128/Luyen-thi-THPT-Quoc-gia-mon-Hoa-Hoc">
							<img
							src="http://media.viettelstudy.vn:8080/archive/imageslead/BoxNoibat/201606/20160621/thumb11_116304587.png"
							alt="Luyện thi THPT Quốc gia môn Hóa">
						</a>
						<h3 class="vts-highlight-h3">
							<a class="vts-highlight-lnk"
								title="Luyện thi THPT Quốc gia môn Hóa"
								href="http://viettelstudy.vn/luyen-thi/128/Luyen-thi-THPT-Quoc-gia-mon-Hoa-Hoc">
								Luyện thi THPT Quốc gia môn Hóa </a>
						</h3>
						<p class="vts-highlight-statistic" style="display: none">15268
							Lượt xem</p>
					</div>

					<div class="vts-highlight-item">
						<a class="vts-highlight-lnk-img"
							title="Tiếng Anh cơ bản cho người mất gốc"
							href="http://tienganh1.viettelstudy.vn/viettel/public/khoa-hoc/tieng-anh-co-ban-1.html">
							<img
							src="http://media.viettelstudy.vn:8080/archive/imageslead/BoxNoibat/201606/20160621/thumb11_595769168.png"
							alt="Tiếng Anh cơ bản cho người mất gốc">
						</a>
						<h3 class="vts-highlight-h3">
							<a class="vts-highlight-lnk"
								title="Tiếng Anh cơ bản cho người mất gốc"
								href="http://tienganh1.viettelstudy.vn/viettel/public/khoa-hoc/tieng-anh-co-ban-1.html">
								Tiếng Anh cơ bản cho người mất gốc </a>
						</h3>
						<p class="vts-highlight-statistic" style="display: none">15268
							Lượt xem</p>
					</div>

					<div class="vts-highlight-item">
						<a class="vts-highlight-lnk-img"
							title="Luyện thi Toeic theo chuẩn quốc tế"
							href="http://viettelstudy.vn/tieng-anh/iig/luyen-thi-toeic-toeic-olpc-i19u0.html">
							<img
							src="http://media.viettelstudy.vn:8080/archive/imageslead/BoxNoibat/201607/20160708/thumb11_208190179.png"
							alt="Luyện thi Toeic theo chuẩn quốc tế">
						</a>
						<h3 class="vts-highlight-h3">
							<a class="vts-highlight-lnk"
								title="Luyện thi Toeic theo chuẩn quốc tế"
								href="http://viettelstudy.vn/tieng-anh/iig/luyen-thi-toeic-toeic-olpc-i19u0.html">
								Luyện thi Toeic theo chuẩn quốc tế </a>
						</h3>
						<p class="vts-highlight-statistic" style="display: none">15268
							Lượt xem</p>
					</div>

					<div class="vts-highlight-item">
						<a class="vts-highlight-lnk-img"
							title="Luyện thi THPT Quốc gia môn Vật lý"
							href="http://viettelstudy.vn/luyen-thi/127/Luyen-thi-THPT-Quoc-gia-mon-Vat-Ly">
							<img
							src="http://media.viettelstudy.vn:8080/archive/imageslead/BoxNoibat/201606/20160621/thumb11_220852665.png"
							alt="Luyện thi THPT Quốc gia môn Vật lý">
						</a>
						<h3 class="vts-highlight-h3">
							<a class="vts-highlight-lnk"
								title="Luyện thi THPT Quốc gia môn Vật lý"
								href="http://viettelstudy.vn/luyen-thi/127/Luyen-thi-THPT-Quoc-gia-mon-Vat-Ly">
								Luyện thi THPT Quốc gia môn Vật lý </a>
						</h3>
						<p class="vts-highlight-statistic" style="display: none">15268
							Lượt xem</p>
					</div>

					<div class="vts-highlight-item">
						<a class="vts-highlight-lnk-img"
							title="Luyện thi THPT Quốc gia môn Văn"
							href="http://viettelstudy.vn/luyen-thi/126/Luyen-thi-mon-Van-danh-rieng-cho-khoi-Tu-nhien">
							<img
							src="http://media.viettelstudy.vn:8080/archive/imageslead/BoxNoibat/201606/20160621/thumb11_252330835.png"
							alt="Luyện thi THPT Quốc gia môn Văn">
						</a>
						<h3 class="vts-highlight-h3">
							<a class="vts-highlight-lnk"
								title="Luyện thi THPT Quốc gia môn Văn"
								href="http://viettelstudy.vn/luyen-thi/126/Luyen-thi-mon-Van-danh-rieng-cho-khoi-Tu-nhien">
								Luyện thi THPT Quốc gia môn Văn </a>
						</h3>
						<p class="vts-highlight-statistic" style="display: none">15268
							Lượt xem</p>
					</div>

					<div class="vts-highlight-item">
						<a class="vts-highlight-lnk-img"
							title="Luyện thi THPT Quốc gia môn Toán"
							href="http://viettelstudy.vn/luyen-thi/133/Luyen-thi-THPT-Quoc-gia-mon-Toan-hoc">
							<img
							src="http://media.viettelstudy.vn:8080/archive/imageslead/BoxNoibat/201606/20160621/thumb11_868097539.png"
							alt="Luyện thi THPT Quốc gia môn Toán">
						</a>
						<h3 class="vts-highlight-h3">
							<a class="vts-highlight-lnk"
								title="Luyện thi THPT Quốc gia môn Toán"
								href="http://viettelstudy.vn/luyen-thi/133/Luyen-thi-THPT-Quoc-gia-mon-Toan-hoc">
								Luyện thi THPT Quốc gia môn Toán </a>
						</h3>
						<p class="vts-highlight-statistic" style="display: none">15268
							Lượt xem</p>
					</div>

					<div class="vts-highlight-item">
						<a class="vts-highlight-lnk-img"
							title="Luyện thi THPT Quốc gia môn Sinh"
							href="http://viettelstudy.vn/luyen-thi/158/Luyen-thi-THPT-Quoc-gia-mon-Sinh">
							<img
							src="http://media.viettelstudy.vn:8080/archive/imageslead/BoxNoibat/201606/20160621/thumb11_960829805.png"
							alt="Luyện thi THPT Quốc gia môn Sinh">
						</a>
						<h3 class="vts-highlight-h3">
							<a class="vts-highlight-lnk"
								title="Luyện thi THPT Quốc gia môn Sinh"
								href="http://viettelstudy.vn/luyen-thi/158/Luyen-thi-THPT-Quoc-gia-mon-Sinh">
								Luyện thi THPT Quốc gia môn Sinh </a>
						</h3>
						<p class="vts-highlight-statistic" style="display: none">15268
							Lượt xem</p>
					</div>

				</div>
			</div>

			<div id="ctl14_BannerHomeQC11_topbanner"
				style="float: left; position: relative; top: -15px; margin-bottom: 5px;">
				<a target="_blank" class="link-adv"
					href="http://viettelstudy.vn/luyen-thi/126/Luyen-thi-mon-Van-danh-rieng-cho-khoi-Tu-nhien"><img
					src="http://media.viettelstudy.vn:8080/archive/imageslead/Banner/201610/20161003/thumb11_38072799.png"
					alt="Viettelstudy.vn"></a>
			</div>



			<script type="text/javascript">
    function show_hide(id) {
        var e = document.getElementById(id);
        var e2 = document.getElementById("btn_show");

        if (e.style.display == 'none') {
            e.style.display = 'block';
            e2.innerHTML = "Rút gọn";
        }
        else {
            e.style.display = 'none';
            e2.innerHTML = "Xem thêm";
        }
    }
</script>


			<div id="ctl14_BannerHomeQC21_topbanner"
				style="float: left; position: relative; top: -12px; margin-bottom: 0px;">
				<a target="_blank" class="link-adv"
					href="http://viettelstudy.vn/luyen-thi/127/Luyen-thi-THPT-Quoc-gia-mon-Vat-Ly"><img
					src="http://media.viettelstudy.vn:8080/archive/imageslead/Banner/201605/20160505/thumb11_358941776.png"
					alt="Viettelstudy.vn"></a>
			</div>


			<div class="test-course box-teacher">
				<div class="tab-test-course">
					<h3 class="title-test">DANH SÁCH GIÁO VIÊN</h3>

					<a class="ttc-next teacher-next"> </a> <a
						class="ttc-pre teacher-pre"> </a>

				</div>

				<div class="wrap-bxslider">
					<div class="bx-wrapper" style="width: 984px; position: relative;">
						<div class="bx-window"
							style="position: relative; overflow: hidden; width: 984px;">
							<div class="content-test teacher-slider"
								style="width: 999999px; position: relative; left: -984px;">
								<div class="w-column-class"
									style="width: 246px; float: left; list-style: none;">
									<div class="column-class">
										<a class="lnk-img-teacher"
											href="giao-vien/Thay-Nguyen-Hong-Khanh-i105.html"> <img
											alt="Thầy Nguyễn Hồng Khánh"
											src="http://media.viettelstudy.vn:8080/archive/imageslead/Giaovien/201507/20150716/thumb11_483676602.jpg">
										</a>
										<h3 class="info-teacher">
											<a class="clhover"
												href="giao-vien/Thay-Nguyen-Hong-Khanh-i105.html"> Thầy
												Nguyễn Hồng Khánh</a> <span> Môn: Vật Lý </span> <span>
												Trung tâm Luyện thi Uschool Phú Thọ </span>
										</h3>
									</div>
								</div>
								<div class="w-column-class"
									style="width: 246px; float: left; list-style: none;">
									<div class="column-class">
										<a class="lnk-img-teacher"
											href="giao-vien/Thay-Chu-Van-Bien-i104.html"> <img
											alt="Thầy Chu Văn Biên"
											src="http://media.viettelstudy.vn:8080/archive/imageslead/Giaovien/201507/20150716/thumb11_945307465.jpg">
										</a>
										<h3 class="info-teacher">
											<a class="clhover"
												href="giao-vien/Thay-Chu-Van-Bien-i104.html"> Thầy Chu
												Văn Biên</a> <span> Môn: Vật Lý </span> <span> ĐH Hồng
												Đức </span>
										</h3>
									</div>
								</div>
								<div class="w-column-class"
									style="width: 246px; float: left; list-style: none;">
									<div class="column-class">
										<a class="lnk-img-teacher"
											href="giao-vien/Co-Dinh-Thi-Hai-i79.html"> <img
											alt="Cô Đinh Thị Hải"
											src="http://media.viettelstudy.vn:8080/archive/imageslead/Giaovien/201407/20140716/thumb11_477280330.jpg">
										</a>
										<h3 class="info-teacher">
											<a class="clhover" href="giao-vien/Co-Dinh-Thi-Hai-i79.html">
												Cô Đinh Thị Hải</a> <span> Môn: Toán học </span> <span>
												Trường Tiểu học Nguyễn Siêu </span>
										</h3>
									</div>
								</div>
								<div class="w-column-class"
									style="width: 246px; float: left; list-style: none;">
									<div class="column-class">
										<a class="lnk-img-teacher"
											href="giao-vien/Thay-Le-Dinh-Nam-i93.html"> <img
											alt="Thầy Lê Đình Nam"
											src="http://media.viettelstudy.vn:8080/archive/imageslead/Giaovien/201506/20150616/thumb11_237613780.jpg">
										</a>
										<h3 class="info-teacher">
											<a class="clhover" href="giao-vien/Thay-Le-Dinh-Nam-i93.html">
												Thầy Lê Đình Nam</a> <span> Môn: Môn Toán cho học sinh
												khối Xã hội </span> <span> Trung tâm Hocmai Đống Đa </span>
										</h3>
									</div>
								</div>

								<div class="w-column-class pager"
									style="width: 246px; float: left; list-style: none;">
									<div class="column-class">
										<a class="lnk-img-teacher"
											href="giao-vien/Co-Nguyen-Thi-Mai-Huong-i99.html"> <img
											alt="Cô Nguyễn Thị Mai Hương"
											src="http://media.viettelstudy.vn:8080/archive/imageslead/Giaovien/201507/20150708/thumb11_296108934.jpg">
										</a>
										<h3 class="info-teacher">
											<a class="clhover"
												href="giao-vien/Co-Nguyen-Thi-Mai-Huong-i99.html"> Cô
												Nguyễn Thị Mai Hương</a> <span> Môn: Sinh học </span> <span>
												Trường THCS Lê Quý Đôn, Hà Nội </span>
										</h3>
									</div>
								</div>

								<div class="w-column-class pager"
									style="width: 246px; float: left; list-style: none;">
									<div class="column-class">
										<a class="lnk-img-teacher"
											href="giao-vien/Co-TS.-Tran-Thi-Van-Anh-i55.html"> <img
											alt="Cô TS. Trần Thị Vân Anh"
											src="http://media.viettelstudy.vn:8080/archive/imageslead/Giaovien/201406/20140613/thumb11_835101957.jpg">
										</a>
										<h3 class="info-teacher">
											<a class="clhover"
												href="giao-vien/Co-TS.-Tran-Thi-Van-Anh-i55.html"> Cô
												TS. Trần Thị Vân Anh</a> <span> Môn: Ngữ văn </span> <span>
												Học viện Báo chí và Tuyên truyền </span>
										</h3>
									</div>
								</div>

								<div class="w-column-class pager"
									style="width: 246px; float: left; list-style: none;">
									<div class="column-class">
										<a class="lnk-img-teacher"
											href="giao-vien/Thay-Nguyen-Hong-Khanh-i105.html"> <img
											alt="Thầy Nguyễn Hồng Khánh"
											src="http://media.viettelstudy.vn:8080/archive/imageslead/Giaovien/201507/20150716/thumb11_483676602.jpg">
										</a>
										<h3 class="info-teacher">
											<a class="clhover"
												href="giao-vien/Thay-Nguyen-Hong-Khanh-i105.html"> Thầy
												Nguyễn Hồng Khánh</a> <span> Môn: Vật Lý </span> <span>
												Trung tâm Luyện thi Uschool Phú Thọ </span>
										</h3>
									</div>
								</div>

								<div class="w-column-class pager"
									style="width: 246px; float: left; list-style: none;">
									<div class="column-class">
										<a class="lnk-img-teacher"
											href="giao-vien/Thay-Chu-Van-Bien-i104.html"> <img
											alt="Thầy Chu Văn Biên"
											src="http://media.viettelstudy.vn:8080/archive/imageslead/Giaovien/201507/20150716/thumb11_945307465.jpg">
										</a>
										<h3 class="info-teacher">
											<a class="clhover"
												href="giao-vien/Thay-Chu-Van-Bien-i104.html"> Thầy Chu
												Văn Biên</a> <span> Môn: Vật Lý </span> <span> ĐH Hồng
												Đức </span>
										</h3>
									</div>
								</div>

								<div class="w-column-class pager"
									style="width: 246px; float: left; list-style: none;">
									<div class="column-class">
										<a class="lnk-img-teacher"
											href="giao-vien/Co-Dinh-Thi-Hai-i79.html"> <img
											alt="Cô Đinh Thị Hải"
											src="http://media.viettelstudy.vn:8080/archive/imageslead/Giaovien/201407/20140716/thumb11_477280330.jpg">
										</a>
										<h3 class="info-teacher">
											<a class="clhover" href="giao-vien/Co-Dinh-Thi-Hai-i79.html">
												Cô Đinh Thị Hải</a> <span> Môn: Toán học </span> <span>
												Trường Tiểu học Nguyễn Siêu </span>
										</h3>
									</div>
								</div>

								<div class="w-column-class pager"
									style="width: 246px; float: left; list-style: none;">
									<div class="column-class">
										<a class="lnk-img-teacher"
											href="giao-vien/Thay-Le-Dinh-Nam-i93.html"> <img
											alt="Thầy Lê Đình Nam"
											src="http://media.viettelstudy.vn:8080/archive/imageslead/Giaovien/201506/20150616/thumb11_237613780.jpg">
										</a>
										<h3 class="info-teacher">
											<a class="clhover" href="giao-vien/Thay-Le-Dinh-Nam-i93.html">
												Thầy Lê Đình Nam</a> <span> Môn: Môn Toán cho học sinh
												khối Xã hội </span> <span> Trung tâm Hocmai Đống Đa </span>
										</h3>
									</div>
								</div>

								<div class="w-column-class"
									style="width: 246px; float: left; list-style: none;">
									<div class="column-class">
										<a class="lnk-img-teacher"
											href="giao-vien/Co-Nguyen-Thi-Mai-Huong-i99.html"> <img
											alt="Cô Nguyễn Thị Mai Hương"
											src="http://media.viettelstudy.vn:8080/archive/imageslead/Giaovien/201507/20150708/thumb11_296108934.jpg">
										</a>
										<h3 class="info-teacher">
											<a class="clhover"
												href="giao-vien/Co-Nguyen-Thi-Mai-Huong-i99.html"> Cô
												Nguyễn Thị Mai Hương</a> <span> Môn: Sinh học </span> <span>
												Trường THCS Lê Quý Đôn, Hà Nội </span>
										</h3>
									</div>
								</div>
								<div class="w-column-class"
									style="width: 246px; float: left; list-style: none;">
									<div class="column-class">
										<a class="lnk-img-teacher"
											href="giao-vien/Co-TS.-Tran-Thi-Van-Anh-i55.html"> <img
											alt="Cô TS. Trần Thị Vân Anh"
											src="http://media.viettelstudy.vn:8080/archive/imageslead/Giaovien/201406/20140613/thumb11_835101957.jpg">
										</a>
										<h3 class="info-teacher">
											<a class="clhover"
												href="giao-vien/Co-TS.-Tran-Thi-Van-Anh-i55.html"> Cô
												TS. Trần Thị Vân Anh</a> <span> Môn: Ngữ văn </span> <span>
												Học viện Báo chí và Tuyên truyền </span>
										</h3>
									</div>
								</div>
								<div class="w-column-class"
									style="width: 246px; float: left; list-style: none;">
									<div class="column-class">
										<a class="lnk-img-teacher"
											href="giao-vien/Thay-Nguyen-Hong-Khanh-i105.html"> <img
											alt="Thầy Nguyễn Hồng Khánh"
											src="http://media.viettelstudy.vn:8080/archive/imageslead/Giaovien/201507/20150716/thumb11_483676602.jpg">
										</a>
										<h3 class="info-teacher">
											<a class="clhover"
												href="giao-vien/Thay-Nguyen-Hong-Khanh-i105.html"> Thầy
												Nguyễn Hồng Khánh</a> <span> Môn: Vật Lý </span> <span>
												Trung tâm Luyện thi Uschool Phú Thọ </span>
										</h3>
									</div>
								</div>
								<div class="w-column-class"
									style="width: 246px; float: left; list-style: none;">
									<div class="column-class">
										<a class="lnk-img-teacher"
											href="giao-vien/Thay-Chu-Van-Bien-i104.html"> <img
											alt="Thầy Chu Văn Biên"
											src="http://media.viettelstudy.vn:8080/archive/imageslead/Giaovien/201507/20150716/thumb11_945307465.jpg">
										</a>
										<h3 class="info-teacher">
											<a class="clhover"
												href="giao-vien/Thay-Chu-Van-Bien-i104.html"> Thầy Chu
												Văn Biên</a> <span> Môn: Vật Lý </span> <span> ĐH Hồng
												Đức </span>
										</h3>
									</div>
								</div>
								<div class="w-column-class"
									style="width: 246px; float: left; list-style: none;">
									<div class="column-class">
										<a class="lnk-img-teacher"
											href="giao-vien/Co-Dinh-Thi-Hai-i79.html"> <img
											alt="Cô Đinh Thị Hải"
											src="http://media.viettelstudy.vn:8080/archive/imageslead/Giaovien/201407/20140716/thumb11_477280330.jpg">
										</a>
										<h3 class="info-teacher">
											<a class="clhover" href="giao-vien/Co-Dinh-Thi-Hai-i79.html">
												Cô Đinh Thị Hải</a> <span> Môn: Toán học </span> <span>
												Trường Tiểu học Nguyễn Siêu </span>
										</h3>
									</div>
								</div>
								<div class="w-column-class"
									style="width: 246px; float: left; list-style: none;">
									<div class="column-class">
										<a class="lnk-img-teacher"
											href="giao-vien/Thay-Le-Dinh-Nam-i93.html"> <img
											alt="Thầy Lê Đình Nam"
											src="http://media.viettelstudy.vn:8080/archive/imageslead/Giaovien/201506/20150616/thumb11_237613780.jpg">
										</a>
										<h3 class="info-teacher">
											<a class="clhover" href="giao-vien/Thay-Le-Dinh-Nam-i93.html">
												Thầy Lê Đình Nam</a> <span> Môn: Môn Toán cho học sinh
												khối Xã hội </span> <span> Trung tâm Hocmai Đống Đa </span>
										</h3>
									</div>
								</div>
								<div class="w-column-class"
									style="width: 246px; float: left; list-style: none;">
									<div class="column-class">
										<a class="lnk-img-teacher"
											href="giao-vien/Co-Nguyen-Thi-Mai-Huong-i99.html"> <img
											alt="Cô Nguyễn Thị Mai Hương"
											src="http://media.viettelstudy.vn:8080/archive/imageslead/Giaovien/201507/20150708/thumb11_296108934.jpg">
										</a>
										<h3 class="info-teacher">
											<a class="clhover"
												href="giao-vien/Co-Nguyen-Thi-Mai-Huong-i99.html"> Cô
												Nguyễn Thị Mai Hương</a> <span> Môn: Sinh học </span> <span>
												Trường THCS Lê Quý Đôn, Hà Nội </span>
										</h3>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>


				<div class="div-more-test">
					<a class="lnk-view-test" href="giao-vien.html"> Xem thêm </a>
				</div>
			</div>



			<div
				style="background-color: #FFFFFF; clear: both; margin-top: 15px; overflow: hidden; padding: 10px 0 10px 10px; position: relative; width: 950px; display: none">
				<div class="box-fanpage">

					<iframe
						src="//www.facebook.com/plugins/like.php?href= https://www.facebook.com/ViettelStudy.vn&amp;width=950&amp;height=258&amp;colorscheme=light&amp;show_faces=true&amp;header=false&amp;stream=false&amp;show_border=false&amp;appId=467433786636616"
						scrolling="no" frameborder="0"
						style="border: none; overflow: hidden; width: 950px; height: 100px; margin-left: 10px"
						allowtransparency="true"></iframe>
				</div>


			</div>
			<div id="support_online" class="" style="display: none;"></div>
			<div id="support_facebook" class="" style="display: none;">
				<div id="support_facebook_close" class="support_close">
					<a class="viewallsupport">Xem tất cả</a> <img
						src="http://mshoa.hanoicdc.net/theme/frontend/default/images/close-lb.gif">
				</div>
				<div data-num-posts="3"
					data-href="http://www.viettelstudy.vn/tu-van.html"
					data-width="510px" data-height="auto"
					class="fb-comments fb_iframe_widget" fb-xfbml-state="rendered">
					<span style="height: 911px; width: 510px;"><iframe
							id="fee91498c57af4" name="f339b1e9895788e" scrolling="no"
							style="border: medium none; overflow: hidden; height: 911px; width: 510px;"
							title="Facebook Social Plugin" class="fb_ltr"
							src="https://www.facebook.com/plugins/comments.php?api_key=&amp;channel_url=http%3A%2F%2Fstaticxx.facebook.com%2Fconnect%2Fxd_arbiter.php%3Fversion%3D42%23cb%3Dff37f246622ae%26domain%3Dwww.mshoatoeic.com%26origin%3Dhttp%253A%252F%252Fwww.mshoatoeic.com%252Ff32a10814a3415%26relation%3Dparent.parent&amp;href=http%3A%2F%2Fwww.viettelstudy.vn%2Ftu-van.html&amp;locale=en_US&amp;numposts=3&amp;sdk=joey&amp;version=v2.0&amp;width=510"></iframe></span>
				</div>
			</div>


			<script>
    $(document).ready(function() {
        $('#support_online').click(function() {
            $('#support_online').hide();
            $('#support_facebook').show();
        });

        $('#support_facebook_close').click(function() {
        $('#support_online').show();
        $('#support_facebook').hide();
        
        });

    });

</script>
			<!--end- box-teacher-->

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

		
		<!--end-footer-->
		<div id="overlay-footer">
			<div id="overlay-footer-left"></div>
			<div id="overlay-footer-right"></div>
		</div>
		<!--end-overlay-footer-->
	</div>
	<!--end-wrapper-->

</body>
</html>