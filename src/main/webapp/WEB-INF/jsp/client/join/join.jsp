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
<!-- 	<script type="text/javascript" src="/js/jquery-1.9.0.min.js"></script> -->
	<link rel="stylesheet" href="/css/style.css" />
	<link rel="stylesheet" href="/css/jquery.bxslider.css" />
	<link rel="shortcut icon" href="/images/icon.png">
	
<script>
</script>	
	
</head>

<body>
	<div id="header">
		<ul class="visual-banner">
			<li bc="#cbcbcb"><img src="/images/visual_banner_1.jpg" alt=""></li>
			<li bc="#bfb8b0"><img src="/images/visual_banner_2.jpg" alt=""></li>
		</ul>
	</div>
	<div id="content" class="register">
	<form name="form1" id="form1" method="post" action="/join/reg.do">
		<input type="hidden" id="birthday" name="birthday" value="" />
		<input type="hidden" id="ownNameYn" name="ownNameYn" value="Y" /><!-- 실명인증여부 -->
		<input type="hidden" id="confirmYn" name="confirmYn" value="Y" /><!-- 핸드폰인증여부 -->
		
		<div class="page-title">
			<h2>안녕하세요!<br><b>비즈오몰</b> 방문을 환영합니다.</h2>
			<span>비즈오몰 회원가입을 진행합니다. 각 항목을 꼼꼼히 체크하시고 입력해 주세요.</span>
		</div>
		<div class="register-block" style="display:none;">
			<h3>본인인증</h3>
			<ul class="list-disc">
				<!-- 기본적으로 노출되는 버튼 -->
				<li class="style-none"><div class="mb20"><a href="#" class="btn">휴대폰으로 본인인증하기</a></div></li>
				<!-- 본인인증 정상처리 -->
				<li class="style-none"><div class="mb20"><span class="notice notice-green">본인인증이 정상적으로  완료되었습니다</span></div></li>
				<!-- 본인인증 실패 -->
				<li class="style-none"><div class="mb20"><span class="notice">본인인증이 실패하였습니다. 다시 시도해 주세요</span></div></li>
				<li>비즈오몰은 개정 정보통신망법 제23조에 따라 회원 가입시에는 <b>주민등록번호를 수집하지 않습니다.</b></li>
				<li>휴대폰 인증은 <b>가입하시는 분 명의의 휴대폰으로만 인증이 가능</b>합니다. (14세 미만 가입 불가)</li>
				<li>인증이 되지 않을 경우, 비즈오몰 고객센터(1599-7151) 혹은 나이스신용평가정보(1588-2486)로 문의하시기 바랍니다.</li>
			</ul>
		</div>
		<div class="register-block">
			<h3>정보입력</h3>
			<ul class="form-list">
				<li>
					<label class="register-title">이름</label>
					<input type="text" maxlength="12" name="memberName" id="memberName">
				</li>
				<li>
					<label class="register-title">별명</label>
					<input type="text" maxlength="20" name="nickname" id="nickname">
				</li>
				<li>
					<label class="register-title">아이디</label>
					<input type="text" maxlength="12" name="memberId" id="memberId"><a href="javascript:;" class="btn-form" id="btnConfirmDuplication">중복확인</a>
				</li>
				<li class="alert" id="layer-idNo" style="display:none;">중복된 아이디가 있습니다.</li>
				<li class="alert alert-green" id="layer-idOk" style="display:none;">아이디를 사용하셔도 좋습니다.</li>
				<li>
					<label class="register-title">비밀번호</label>
					<input type="password" maxlength="12" name="password" id="password">
				</li>
				<li class="alert" style="display:none;" id="layerPwdLenErr">비밀번호는 8자 이상 설정해 주시기 바랍니다.</li>
				<li>
					<label class="register-title">비밀번호 재확인</label>
					<input type="password" maxlength="12" name="password2" id="password2">
				</li>
				<li class="alert" style="display:none;">비밀번호를 다시 확인해 주세요.</li>
				<li>
					<label class="register-title">이메일</label>
					<input type="text" maxlength="100" name="email"> <!-- <span class="sep">@</span><input type="text" maxlength="12"> -->
				</li>
				<li class="alert" style="display:none;">이메일 형식이 올바르지 않습니다.</li>
				<li>
					<label class="register-title">핸드폰</label>
					<select name="mobile1" id="mobile1" class="basic phone">
						<option value="010">010</option>
						<option value="010">011</option>
						<option value="010">017</option>
						<option value="010">019</option>
					</select><span class="sep">-</span>
					<input type="text" maxlength="4" class="phone" name="mobile2" id="mobile2"><span class="sep">-</span><input type="text" maxlength="4" class="phone" name="mobile3" id="mobile3">
				</li>
				<li class="alert" style="display:none;">핸드폰 번호 형식이 올바르지 않습니다.</li>
				<li>
					<label class="register-title">생년월일</label>
					<select name="birthday1" id="birthday1" class="basic">
						<c:forEach var="i" begin="0" end="80" step="1">
						    <option value="${2014-i }">${2014-i }</option>
						</c:forEach>
					</select><span class="sep">년</span>
					<select name="birthday2" id="birthday2" class="basic birth">
						<c:forEach var="i" begin="1" end="12" step="1">
						    <option value="<c:if test='${i<10}'>0</c:if>${i}"><c:if test='${i<10}'>0</c:if>${i}</option>
						</c:forEach>
					</select><span class="sep">월</span>
					<select name="birthday3" id="birthday3" class="basic birth">
						<c:forEach var="i" begin="1" end="31" step="1">
						    <option value="<c:if test='${i<10}'>0</c:if>${i}"><c:if test='${i<10}'>0</c:if>${i}</option>
						</c:forEach>
					</select><span class="sep">일</span>
				</li>
				<li class="alert" style="display:none;" id="layerAgeErr">14세 미만은 가입이 불가능 합니다.</li>
			</ul>
			<ul class="agreement">
				<li><input type="checkbox" id="sms-yn" name="smsServiceYn" value="Y"><label for="sms-yn">이벤트/쇼핑정보 SMS 수신에 동의합니다.</label></li>
				<li><input type="checkbox" id="email-yn" name="emailYn" value="Y"><label for="email-yn">이벤트/쇼핑정보 이메일 수신에 동의합니다.</label></li>
			</ul>
		</div>
		<div class="register-block">
			<h3>약관동의</h3>
			<ul class="agreement-box">
				<li>
					<div class="agreement-title"><label for="agreement-1"><input id="agreement-1" type="checkbox">비즈오몰 이용약관 동의 (필수)</label><a class="agreement-right-btn btn-a">약관보기</a></div>
					<div class="agreement-cont">
						<iframe src="https://memberssl.auction.co.kr/membership/signup/provision1.html" frameborder="0"></iframe>
					</div>
				</li>
				<li>
					<div class="agreement-title"><label for="agreement-2"><input id="agreement-2" type="checkbox">전자금융거래 이용약관 동의 (필수)</label><a class="agreement-right-btn btn-a">약관보기</a></div>
					<div class="agreement-cont">
						<iframe src="https://memberssl.auction.co.kr/membership/signup/provision1.html" frameborder="0"></iframe>
					</div>
				</li>
				<li>
					<div class="agreement-title"><label for="agreement-3"><input id="agreement-3" type="checkbox">개인정보 수집 및 이용 동의 (필수)</label><a class="agreement-right-btn btn-a">약관보기</a></div>
					<div class="agreement-cont agreement-cont-last">
						<iframe src="https://memberssl.auction.co.kr/membership/signup/provision1.html" frameborder="0"></iframe>
					</div>
				</li>
			</ul>
			<div class="agreement-y-all"><label for="agreement-all"><input id="agreement-all" type="checkbox">비즈오몰 회원가입 약관에 모두 동의합니다.</label></div>
		</div>
		<div class="register-info">
			<ul class="list-disc">  
				<li>비즈오몰은 폐쇄몰로써 모든 사용자에게 개방되어 있지 않습니다.</li>
				<li>회원가입은 최종적으로 관리자의 승락이 있어야 정상적으로 가입이 완료됩니다.</li>
				<li>가입처리 결과는 입력하신 핸드폰으로 SMS메시지가 전송됩니다.</li>
			</ul>
		</div>
		<div class="submit-btn-block">
			<a href="javascript:;" id="btnJoin">회원가입을 신청합니다</a>
		</div>
		</form>
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
	});

	$(".agreement-right-btn").each(function() {
		$(this).click(function() {
			$(this).parent().next().slideToggle();

		});
	});

	/* 약관동의 버튼 */
	$("#agreement-all").click(function() {
		$(".agreement-box input").prop("checked", this.checked);
	});
    
    /* 년도 선택시 나이 오류 메세지는 숨긴다. */
    $("#birthday1").change(function() {
    	$("#layerAgeErr").css("display", "none");
	});
	 
    /* 회원 가입 버튼 클릭 시 */
    $('#btnJoin').click(function(){
    	 var yyyy = new Date().getFullYear();
    	if(!validation()){
    		return;
    	}
    	if(!idcheck){
    		alert("ID 중복 체크를 해주세요!");
    		return;
    	}else if((yyyy-$("#birthday1 option:selected").val())<14){
    		$("#layerAgeErr").css("display", "block");
    		$("#birthday1").focus();
    		return;
    	}else if($("#password").val()!=$("#password2").val()){
    		$("#password2").focus();
	    	alert("재 확인 비밀번호가 일치 하지 않습니다.");
	    	return;
    	}else if($("#password").val().length<8){
    		$("#password").focus();
	    	alert("비밀번호를 다시 확인해 주세요.");
	    	return;
    	}else if (!$("#agreement-1").is(":checked")) { 
	    	alert("비즈오몰 이용약관에 동의해 주세요");
	    	return;
	    }else  if (!$("#agreement-2").is(":checked")) { 
	    	alert("전자금융거래 이용약관 동의에 동의해 주세요");
	    	return;
	    }else  if (!$("#agreement-3").is(":checked")) { 
	    	alert("개인정보 수집 및 이용에 동의해 주세요");
	    	return;
	    }
	    
	    $("#birthday").val($("#birthday1").val()+$("#birthday2").val()+$("#birthday3").val());
// 	    $('#form1').attr('action','/join/reg.do').attr('method', 'post').submit();
	    $('#form1').submit();
    });
    
    function validation(){
    	if($("#memberName").val()==""){
    		alert("이름을 입력해 주세요!");
    		$("#memberName").focus();
    		return false;
     	}else if($("#nickname").val()==""){
    		alert("별명을 입력해 주세요!");
    		$("#nickname").focus();
    		return false;
     	}else if($("#memberId").val()==""){
    		alert("ID를 입력해 주세요!");
    		$("#memberId").focus();
    		return false;
     	}else if($("#password").val()==""){
    		alert("비밀번호를 입력해 주세요!");
    		$("#password").focus();
    		return false;
     	}else if($("#mobile2").val()==""){
    		alert("핸드폰 번호를 입력해 주세요!");
    		$("#mobile2").focus();
    		return false;
     	}else if($("#mobile3").val()==""){
    		alert("핸드폰 번호를 입력해 주세요!");
    		$("#mobile3").focus();
    		return false;
     	}
    	
    	return true;
    }
    
    /* id 중복 체크 여부 */
    var idcheck = false;
    /* id 입력시 중복 체크 여부 false로 설정 */
    $("#memberId").keyup(function(){
    	idcheck = false;
    });
    /* id 중복 체크 */
    $('#btnConfirmDuplication').click(function(){
        $.get("/join/selectIsExistMemberCnt.do?memberId="+$("#memberId").val(),function(data,status){
    	      if(parseInt(data.cnt) > 0){//ID 중복
    	    	  $("#memberId").val("");
    	    	  $("#layer-idNo").css("display", "block");
    	    	  $("#layer-idOk").css("display", "none");
    	    	  idcheck = false;
    	      }else{//ID사용 가능
    	    	  idcheck = true;
    	    	  $("#layer-idNo").css("display", "none");
    	    	  $("#layer-idOk").css("display", "block");
    	      }
    	});    	
    });

});
</script>
</body>
</html>