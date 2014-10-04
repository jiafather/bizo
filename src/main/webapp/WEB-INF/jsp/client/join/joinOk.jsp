<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
	<title>BIZOmall</title>
	<link rel="stylesheet" href="/css/style.css" />
	<link rel="stylesheet" href="/css/jquery.bxslider.css" />
	<link rel="shortcut icon" href="/images/icon.png">
</head>

<body>
	<div id="header">
		<ul class="visual-banner">
			<li bc="#cbcbcb"><img src="/images/visual_banner_1.jpg" alt=""></li>
			<li bc="#bfb8b0"><img src="/images/visual_banner_2.jpg" alt=""></li>
		</ul>
	</div>
	<div id="content" class="register">
		<div class="page-title mt30">
			<h2>감사합니다!<br><b>회원가입</b>이 완료되었습니다.</h2>
			<span>비즈오몰은 특별한 분들에게만 다양한 혜택이 제공되는 폐쇄몰입니다.</span>
			<span>승인과정을 거쳐 결과를 SMS로 전송해 드립니다.</span>
		</div>		
	</div>
	<div id="footer">
		<div class="footer-block footer-block-menu">
			<div class="footer-container">
				<ul>
					<li><a href="#">비즈오몰 소개</a></li>
					<li><a href="#">비즈오몰 이용약관</a></li>
					<li><a href="#">전자금융거래약관</a></li>
					<li><a href="#">개인정보 취급방침</a></li>
					<li><a href="#">브랜드 광고센터</a></li>
					<li><a href="#">문의사항</a></li>
				</ul>
			</div>
		</div>
		<div class="footer-block footer-block-info">
			<div class="footer-container">
				<div class="first">
					<dl>
						<dt>고객센터</dt>
						<dd>상담가능시간 : 오전 9시 ~ 오후 6시 (토요일/공휴일 휴무)</dd>
						<dd>경기도 안산시 단원구 초지동 688-2 2층</dd>
						<dd>Tel : <em>1599-7151</em> / Fax : 031-411-0983</dd>
						<dd>Contact : information@bizomall.com</dd>
					</dl>
				</div>
				<div class="second">
					<dl>
						<dt>(주)비즈오</dt>
						<dd>경기도 안산시 단원구 초지동 688-2 2층</dd>
						<dd>대표이사 : 이충훈</dd>
						<dd>사업자등록번호 : 220-81-77895</dd>
						<dd>통신판매업신고 : 경기 102054호<a href="" class="btn-a">사업자정보확인</a></dd>
					</dl>
				</div>
				<div class="third">
					<ul>
						<li><b>(주)비즈오</b>의 사전 서면 동의 없이 비즈오몰의 일체의 정보, 컨텐츠, 및 UI등을 상업적 목적으로 전재, 전송, 스크래핑 등 무단 사용할 수 없습니다. 이를 어길시에는 법률상 불이익이 생길 수 있으니 이점 유의해 주시기 바랍니다.</li>
						<li>Copyright © <b>BIZO Co., LTD.</b> All rights reserved.</li>
					</ul>
				</div>
			</div>
		</div>
	</div>

<script src="/js/jquery-1.9.0.min.js"></script>
<script src="/js/jquery.bxslider.min.js"></script>
<script>
$(function() {
	$(".visual-banner").bxSlider({
		mode: 'horizontal',
		speed: 800,
		auto: true,
		pause: 5000
	});

	$(".visual-banner > li").each(function() {
		var bgColor = $(this).attr("bc");
		$(this).css("background-color", bgColor);
	})

	$(".agreement-right-btn").each(function() {
		$(this).click(function() {
			$(this).parent().next().slideToggle();

		})
	})

	$("#agreement-all").click(function() {
		$(".agreement-box input").prop("checked", this.checked);
	})
})
</script>
</body>
</html>