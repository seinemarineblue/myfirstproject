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
    <link href="${pageContext.request.contextPath }/resources/css/jyl_css/jyl-Leisure01.css" rel="stylesheet">
    
    <style type="text/css">

    </style>
</head>
<body>
<%@include file="../include/header.jsp" %>
	<section class="Leisuremid">
		<div class="LeisureTopWrap">
			<div class="topvisualwrap">
				<div class="topvisualFilter">
					<div class="container-fluid"></div>
				</div>
				<div class="visualContainer">



					<div class="mainVisualtype1">
						<img src="../resources/img/leisure/ms2.gif">
					</div>
					<!-- 214,340 -->
					<div class="slideVisualWrap">
						<div class="slideVisual">

							<div class="container">

								<div id="sportsCarousel" class="carousel slide"
									data-ride="carousel">
									<!-- Indicators -->
									<ol class="carousel-indicators">
										<li data-target="#sportsCarousel" data-slide-to="0"
											class="active"></li>
										<li data-target="#sportsCarousel" data-slide-to="1"></li>
										<li data-target="#sportsCarousel" data-slide-to="2"></li>
									</ol>

									<!-- Wrapper for slides -->
									<div class="carousel-inner">

										<div class="item active">
											<img src="../resources/img/leisure/m1.gif" alt="Los Angeles"
												style="width: 100%;">
											<div class="carousel-caption"></div>
										</div>

										<div class="item">
											<img src="../resources/img/leisure/m3.gif" alt="Chicago"
												style="width: 100%;">
											<div class="carousel-caption"></div>
										</div>

										<div class="item">
											<img src="../resources/img/leisure/m5.gif" alt="New York"
												style="width: 100%;">
											<div class="carousel-caption"></div>
										</div>
									</div>
								</div>

							</div>
							<button type="button" class="btn btn-danger sportsbutton">빠른
								예매</button>
						</div>

					</div>


					<!--상단 메뉴 끝-->


					<!-- 본 메뉴 시작 -->

					<div class="leisureMainWrap">

						<!--가운데  -->
						<div class="leisureSidemenu">
							<img src="../resources/img/leisure/s1.gif" href=""> <img
								src="../resources/img/leisure/s2.gif"> <img src="../resources/img/leisure/s3.gif">
							<img src="../resources/img/leisure/s4.gif"> <img
								src="../resources/img/leisure/s5.gif">
						</div>
						<!-- 사이드 메뉴 끝 -->
						<!-- 오른쪽 본 메뉴 -->
						<div class="leisureMainContents">
							<div class="leisureWrap">
								<div class="jeju">
									<div class="leisureTitle">
										<img src="../resources/img/leisure/jtitle.png">
									</div>
									<div class="leisureMainSelect">
										<img src="../resources/img/leisure/j1.gif"> <img
											src="../resources/img/leisure/j2.gif"> <img src="../resources/img/leisure/j3.gif">

										<img src="../resources/img/leisure/j4.gif">

									</div>
									<div class="jejubtn">
										<button type="button" class="btn btn-danger btn1">예약하기</button>
										<button type="button" class="btn btn-danger btn1">예약하기</button>
										<button type="button" class="btn btn-danger btn1">예약하기</button>
										<button type="button" class="btn btn-danger btn1">예약하기</button>
									</div>
								</div>

								<div class="camp">
									<div class="leisureTitle">
										<img src="../resources/img/leisure/ctitle.png">
									</div>
									<div class="leisureMainSelect">
										<img src="../resources/img/leisure/c1.gif"> <img
											src="../resources/img/leisure/c2.gif"> <img src="../resources/img/leisure/c3.gif">



									</div>
									<div class="campbtn">
										<button type="button" class="btn btn-danger btn1">예약하기</button>
										<button type="button" class="btn btn-danger btn1">예약하기</button>
										<button type="button" class="btn btn-danger btn1">예약하기</button>

									</div>
								</div>

							</div>


			</div>
		<!-- 오른쪽메뉴 끝 -->

		</div>
		<!-- 가운데  본 메뉴 끝 -->
	</section>
	
	<%@include file="../include/footer.jsp" %>
</body>
</html>