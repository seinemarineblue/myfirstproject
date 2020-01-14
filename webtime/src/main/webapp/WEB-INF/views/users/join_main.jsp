<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>부트스트랩 101 템플릿</title>

    <!-- 부트스트랩 -->
    <link href="${pageContext.request.contextPath }/resources/css/bootstrap.css" rel="stylesheet">

    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="${pageContext.request.contextPath }/resources/js/jquery-3.4.1.min.js"></script>

    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <script src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>
    
    <!--개인디자인-->
    <link href="${pageContext.request.contextPath }/resources/css/sej_style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/ksm_css/join/join1.css" rel="stylesheet">
    
    <style type="text/css">
    </style>
</head>
<body>
<%@include file="../include/header.jsp" %>
	<!--  회원종류 선택 폼 -->
	<section>
		<div id="openIdJoinWrap">
			<div class="contentsWrap">
				<div class="interSignup">
					<div class="leftBox">
						<img src="../resources/img/joinImg/join_img.png">
						<p>일반 회원가입</p>
					</div>
					<div class="joinBtnBox">
						<p class="inparkBtn">
							<a href="join_form" class="btnRed"> 간편 회원가입 </a>
						</p>
						<div class="snsBtn">
							<p class="snsTxt">SNS 회원가입</p>
							<span class="notiTxt">만 14세 이상만 가입이 가능합니다.</span>
							<ul>
								<li><a href="" class="naver"> <span>네이버로 회원가입</span>
								</a></li>
								<li><a href="" class="kakao"> <span>카카오로 회원가입</span>
								</a></li>
							</ul>
						</div>
						<p class="caution">개인정보 보호를 위해 공용 PC에서 사용 후 SNS계정의 로그아웃 상태를
							반드시 확인해주세요.</p>
					</div>
				</div>


				<div class="customerNoti">
					<img src="../resource/img/join_noti_img%20(2).png">
					<h5>인터파크 고객정보 보호정책</h5>
					<span>인터파크는 고객님의 소중한 정보를 보호하기 위해 최선의 노력을 다하고 있습니다.</span>
					<ul>
						<li>주요 개인정보는 암호화하여 보관하고 있으며, 필수 담당자 이외에는 접근을 제한하고 있습니다.</li>
						<li>인터파크는 국내 우수 보안전문업체와 함께 보안관련 팀을 운영하는 등 고객정보 보호에 만전을 가하고
							있습니다.</li>
						<li>고객님의 개인정보 보호를 위해 전화번호, 휴대폰번호를 부여하여 실제 전화번호 대신 사용할 수 있는
							무료‘ 안심번호 서비스’를 제공합니다.</li>
					</ul>
				</div>
			</div>
		</div>
	</section>
<%@include file="../include/footer.jsp" %>
</body>
</html>