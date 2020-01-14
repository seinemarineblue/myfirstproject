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
    <link href="${pageContext.request.contextPath }/resources/css/jyl_css/jyl-SportsView01.css" rel="stylesheet">
    
    <style type="text/css">

    </style>
</head>
<body>
<%@include file="../../include/header.jsp" %>
	<section class="sportsmid">
		<div class="sportsTopWrap">
			<div class="topvisualwrap">
				<div class="topvisualFilter">
					<div class="container-fluid"></div>
				</div>
				<div class="visualContainer">
					<div class="mainVisualtype1">
						<img src="../../resourcess/img/sportsview01/leftbannerski.gif">
					</div>

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
											<img src="../../resources/img/sportsview01/Suwon.gif" alt="Los Angeles"
												style="width: 100%;">
											<div class="carousel-caption"></div>
										</div>

										<div class="item">
											<img src="../../resources/img/sportsview01/Sungnam.gif" alt="Chicago"
												style="width: 100%;">
											<div class="carousel-caption"></div>
										</div>

										<div class="item">
											<img src="../../resources/img/sportsview01/figure.gif" alt="New York"
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

					<div class="sportsMainWrap">

						<!--왼쪽 사이드 메뉴  -->
						<div class="sportsSidemenu">
							<button type="button" class="btn btn-warning baseballbtn">야구
								예매하기</button>
							<button type="button" class="btn btn-warning soccerbtn">
								축구 예매하기</button>
							<button type="button" class="btn btn-warning basketballbtn">농구
								예매하기</button>
						</div>
						<!-- 사이드 메뉴 끝 -->
						<!-- 오른쪽 본 메뉴 -->
						<div class="sporstMainContents">
							<div class="sportsWrapBasket">
								<div class="sportsTitle"></div>
								<div class="sportMainSelect">
									<div class="items">

										<ul>

											<li>
												<div class="matchMore" style="display: none;">

													<a href="#" onclick="#"></a>
												</div>
												<div class="matchContent">
													<div class="teamMatch">
														<div class="team1">
															<img src="../../resources/img/sportsview01/PK03.png"
																style="width: 70px; height: 70px;">

														</div>

														<div class="team2">
															<img src="../../resources/img/sportsview01/PK02.png"
																style="width: 70px; heigth: 70px;">
														</div>
														<div class=vs></div>
														<div class="matchDate">2019.12.19 19:00</div>
														<div class="matchLocation">창원실내체육관</div>
														<div class="mathTeam"></div>
														창원 LG세이커스 vs 서울 SK 나이츠
														<p></p>
														<button class="btn btn-warning">예매하기</button>



													</div>

												</div>
											</li>
											<li>
												<div class="matchContent2">
													<div class="teamMatch">
														<div class="team1">
															<img src="../../resources/img/sportsview01/PK01.png"
																style="width: 70px; height: 70px;">

														</div>

														<div class="team2">

															<img src="../../resources/img/sportsview01/pk04.png"
																style="width: 70px; heigth: 70px;">
														</div>
														<div class=vs></div>
														<div class="matchDate">2019.12.22 17:00</div>
														<div class="matchLocation">안양종합체육관</div>
														<div class="mathTeam"></div>
														안양KGC인삼공사 vs 인천 전자랜드
														<p></p>
														<button class="btn btn-warning">예매하기</button>
													</div>
												</div>

											</li>
											<li>
												<div class="matchContent2">
													<div class="teamMatch">
														<div class="team1">
															<img src="../../resources/img/sportsview01/pk02.png"
																style="width: 70px; height: 70px;">

														</div>

														<div class="team2">
															<img src="../../resources/img/sportsview01/pk05.png"
																style="width: 70px; he: 70px;">
														</div>
														<div class=vs></div>
														<div class="matchDate">2020.01.02 20:00</div>
														<div class="matchLocation">인천 싱하형체육관</div>
														<div class="mathTeam"></div>
														안양KGC인삼공사 vs 인천 전자랜드
														<p></p>
														<button class="btn btn-warning">예매하기</button>
													</div>

												</div>

											</li>
										</ul>
									</div>
								</div>

							</div>

							<div class="sportsWrapSoccer">
								<div class="sportsTitle"></div>
								<div class="sportMainSelect">
									<div class="items">

										<ul>

											<li>
												<div class="matchMore" style="display: none;">

													<a href="#" onclick="#"></a>
												</div>
												<div class="matchContent">
													<div class="teamMatch">
														<div class="team1">
															<img src="../../resources/img/sportsview01/tot.png"
																style="width: 70px; height: 70px;">

														</div>

														<div class="team2">
															<img src="../../resources/img/sportsview01/sungnam.png"
																style="width: 70px; height: 70px;">
														</div>
														<div class=vs></div>
														<div class="matchDate">2019.12.19 19:00</div>
														<div class="matchLocation">창원실내체육관</div>
														<div class="mathTeam"></div>
														영국 RV리버풀즈 vs 성남 FC 킹덤즈
														<p></p>
														<button class="btn btn-warning">예매하기</button>



													</div>

												</div>
											</li>
											<li>
												<div class="matchContent2">
													<div class="teamMatch">
														<div class="team1">
															<img src="../../resources/img/sportsview01/juven.png"
																style="width: 70px; height: 70px;">

														</div>

														<div class="team2">

															<img src="../../resources/img/sportsview01/FCsuwon.png"
																style="width: 70px; height: 70px;">
														</div>
														<div class=vs></div>
														<div class="matchDate">2019.12.22 17:00</div>
														<div class="matchLocation">JuvenTus경기장</div>
														<div class="mathTeam"></div>
														유벤JUV월드챔프 vs 수원 드림팀즈
														<p></p>
														<button class="btn btn-warning">예매하기</button>
													</div>
												</div>

											</li>
											<li>
												<div class="matchContent2">
													<div class="teamMatch">
														<div class="team1">
															<img src="../../resources/img/sportsview01/river.png"
																style="width: 70px; height: 70px;">

														</div>

														<div class="team2">
															<img src="../../resources/img/sportsview01/barcel.png"
																style="width: 70px; height: 70px;">
														</div>
														<div class=vs></div>
														<div class="matchDate">2020.01.02 20:00</div>
														<div class="matchLocation">잉글 슈튜 경기장</div>
														<div class="mathTeam"></div>
														리버풀River잉글랜드 vs 바르셀로나
														<p></p>
														<button class="btn btn-warning">예매하기</button>
													</div>

												</div>

											</li>
										</ul>
									</div>
								</div>

							</div>
							<div class="sportsWrapBasket">
								<div class="sportsTitle"></div>
								<div class="sportMainSelect">
									<div class="items">

										<ul>

											<li>
												<div class="matchMore" style="display: none;">

													<a href="#" onclick="#"></a>
												</div>
												<div class="matchContent">
													<div class="teamMatch">
														<div class="team1">
															<img src="../../resources/img/sportsview01/PK03.png"
																style="width: 70px; height: 70px;">

														</div>

														<div class="team2">
															<img src="../../resources/img/sportsview01/PK02.png"
																style="width: 70px; heigth: 70px;">
														</div>
														<div class=vs></div>
														<div class="matchDate">2019.12.19 19:00</div>
														<div class="matchLocation">창원실내체육관</div>
														<div class="mathTeam"></div>
														창원 LG세이커스 vs 서울 SK 나이츠
														<p></p>
														<button class="btn btn-warning">예매하기</button>



													</div>

												</div>
											</li>
											<li>
												<div class="matchContent2">
													<div class="teamMatch">
														<div class="team1">
															<img src="../../resources/img/sportsview01/PK01.png"
																style="width: 70px; height: 70px;">

														</div>

														<div class="team2">

															<img src="../../resources/img/sportsview01/pk04.png"
																style="width: 70px; heigth: 70px;">
														</div>
														<div class=vs></div>
														<div class="matchDate">2019.12.22 17:00</div>
														<div class="matchLocation">안양종합체육관</div>
														<div class="mathTeam"></div>
														안양KGC인삼공사 vs 인천 전자랜드
														<p></p>
														<button class="btn btn-warning">예매하기</button>
													</div>
												</div>

											</li>
											<li>
												<div class="matchContent2">
													<div class="teamMatch">
														<div class="team1">
															<img src="../../resources/img/sportsview01/pk02.png"
																style="width: 70px; height: 70px;">

														</div>

														<div class="team2">
															<img src="../../resources/img/sportsview01/pk05.png"
																style="width: 70px; he: 70px;">
														</div>
														<div class=vs></div>
														<div class="matchDate">2020.01.02 20:00</div>
														<div class="matchLocation">인천 싱하형체육관</div>
														<div class="mathTeam"></div>
														안양KGC인삼공사 vs 인천 전자랜드
														<p></p>
														<button class="btn btn-warning">예매하기</button>
													</div>

												</div>

											</li>
										</ul>
									</div>
								</div>

							</div>

						</div>
						<!-- 오른쪽메뉴 끝 -->

					</div>
					<!-- 가운데  본 메뉴 끝 -->
					
    </section>					
<%@include file="../../include/footer.jsp" %>
</body>
</html>