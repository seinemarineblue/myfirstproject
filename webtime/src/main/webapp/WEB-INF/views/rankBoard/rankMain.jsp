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
</head>
<body>
<%@include file="../include/header.jsp" %>
    <!--랭킹 메인-->
    <section>
        <div class="container-fluid">
            <div class="row">
                <div class="Rwrap col-xs-12 col-lg-12">
                    <div class="ranking-wrap">
                        <div class="rankingTitle-wrap">
                            <div class="rankingTitle">
                                <a href="rankMain"><img src="../resources/img/rankImg/rankingMain.gif"></a>
                                <span>월간랭킹</span>
                            </div>
                        </div>
                        <div class="rankingContent-main">
                            <div class="rankingContent">
                                <div class="rGenreListWrap">
                                    <div class="rGenreList">
                                        <div class="rGenreTitle">
                                            <span>뮤지컬</span>
                                        </div>
                                        <ul class="rGenreLink">
                                            <li><a href="#" class="rGenreTotal">전체</a></li>
                                            <li><a href="#" class="rGenreBtn">-라이선스/창작</a></li>
                                            <li><a href="#" class="rGenreBtn">-창작</a></li>
                                        </ul>
                                    </div>
                                    <div class="rGenreItemsWrap">
                                        <a href="##">더보기</a>
                                    <div class="rGenreItems">
                                        <ul>
                                            <li>
                                                <a href="##">
                                                    <img src="../resources/img/rankImg/musical-rank1.png">
                                                </a>
                                                <span class="prName">뮤지컬 [아이다]</span>
                                                <span class="prDate">11.13~02.23</span>
                                            </li>
                                            <li>
                                                <a href="##">
                                                    <img src="../resources/img/rankImg/musical-rank2.png">
                                                </a>
                                                <span class="prName">뮤지컬 [레베카]</span>
                                                <span class="prDate">11.16~03.15</span>
                                            </li>
                                            <li>
                                                <a href="##">
                                                    <img src="../resources/img/rankImg/musical-rank3.png">
                                                </a>
                                                <span class="prName">뮤지컬 [스위니토드]</span>
                                                <span class="prDate">10.02~01.27</span>
                                            </li>
                                            <li>
                                                <a href="##">
                                                    <img src="../resources/img/rankImg/musical-rank4.png">
                                                </a>
                                                <span class="prName">뮤지컬 [보디가드]</span>
                                                <span class="prDate">11.28~02.23</span>
                                            </li>
                                            <li>
                                                <a href="##">
                                                    <img src="../resources/img/rankImg/musical-rank5.png">
                                                </a>
                                                <span class="prName">뮤지컬 [미스터쇼]</span>
                                                <span class="prDate">09.20~02.16</span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                </div>
                            </div>
                            <div class="rankingContent">
                                <div class="rGenreListWrap">
                                    <div class="rGenreList">
                                        <div class="rGenreTitle">
                                            <span>콘서트</span>
                                        </div>
                                        <ul class="rGenreLink">
                                            <li><a href="#" class="rGenreTotal">전체</a></li>
                                            <li><a href="#" class="rGenreBtn">-국내/내한</a></li>
                                            <li><a href="#" class="rGenreBtn">-인디</a></li>
                                            <li><a href="#" class="rGenreBtn">-토크/강연</a></li>
                                        </ul>
                                    </div>
                                    <div class="rGenreItemsWrap">
                                        <a href="##">더보기</a>
                                    <div class="rGenreItems">
                                        <ul>
                                            <li>
                                                <a href="##">
                                                    <img src="../resources/img/rankImg/concert-rank1.png">
                                                </a>
                                                <span class="prName">싸이 올나잇스탠드</span>
                                                <span class="prDate">12.20~12.24</span>
                                            </li>
                                            <li>
                                                <a href="##">
                                                    <img src="../resources/img/rankImg/concert-rank2.png">
                                                </a>
                                                <span class="prName">Returned Fullmoon</span>
                                                <span class="prDate">12.24~12.25</span>
                                            </li>
                                            <li>
                                                <a href="##">
                                                    <img src="../resources/img/rankImg/concert-rank3.png">
                                                </a>
                                                <span class="prName">2019임창정the</span>
                                                <span class="prDate">12.24~12.25</span>
                                            </li>
                                            <li>
                                                <a href="##">
                                                    <img src="../resources/img/rankImg/concert-rank4.png">
                                                </a>
                                                <span class="prName">옹성우 국내 팬미팅</span>
                                                <span class="prDate">01.11~01.11</span>
                                            </li>
                                            <li>
                                                <a href="##">
                                                    <img src="../resources/img/rankImg/concert-rank5.png">
                                                </a>
                                                <span class="prName">나몰라패밀리 핫쇼</span>
                                                <span class="prDate">10.04~01.31</span>
                                            </li>
                                        </ul>
                                    </div>
                                    </div>
                                </div>
                            </div>
                            <div class="rankingContent">
                                <div class="rGenreListWrap">
                                    <div class="rGenreList">
                                        <div class="rGenreTitle">
                                            <span>연극</span>
                                        </div>
                                        <ul class="rGenreLink">
                                            <li><a href="#" class="rGenreTotal">전체</a></li>
                                            <li><a href="#" class="rGenreBtn">-리미티드런</a></li>
                                            <li><a href="#" class="rGenreBtn">-스테디셀러</a></li>
                                        </ul>
                                    </div>
                                    <div class="rGenreItemsWrap">
                                        <a href="##">더보기</a>
                                    <div class="rGenreItems">
                                        <ul>
                                            <li>
                                                <a href="##">
                                                    <img src="../resources/img/rankImg/play-rank1.png">
                                                </a>
                                                <span class="prName">연극 옥탑방 고양이</span>
                                                <span class="prDate">04.06~01.31</span>
                                            </li>
                                            <li>
                                                <a href="##">
                                                    <img src="../resources/img/rankImg/play-rank2.png">
                                                </a>
                                                <span class="prName">국민 코믹 연극 [오백에 삼십]</span>
                                                <span class="prDate">11.16~03.15</span>
                                            </li>
                                            <li>
                                                <a href="##">
                                                    <img src="../resources/img/rankImg/play-rank3.png">
                                                </a>
                                                <span class="prName">연극[환상동화]</span>
                                                <span class="prDate">12.21~03.01</span>
                                            </li>
                                            <li>
                                                <a href="##">
                                                    <img src="../resources/img/rankImg/play-rank4.png">
                                                </a>
                                                <span class="prName">연극[작업의 정석]</span>
                                                <span class="prDate">06.29~01.31</span>
                                            </li>
                                            <li>
                                                <a href="##">
                                                    <img src="../resources/img/rankImg/play-rank5.png">
                                                </a>
                                                <span class="prName">연극[엘리펀트송]</span>
                                                <span class="prDate">11.22~02.02</span>
                                            </li>
                                        </ul>
                                    </div>
                                    </div>
                                </div>
                            </div>
                            <div class="rankingContent">
                                <div class="rGenreListWrap">
                                    <div class="rGenreList">
                                        <div class="rGenreTitle">
                                            <span>클래식/무용</span>
                                        </div>
                                        <ul class="rGenreLink">
                                            <li><a href="#" class="rGenreTotal">전체</a></li>
                                            <li><a href="#" class="rGenreBtn">-클래식/오페라</a></li>
                                            <li><a href="#" class="rGenreBtn">-무용</a></li>
                                            <li><a href="#" class="rGenreBtn">-국악</a></li>
                                        </ul>
                                    </div>
                                    <div class="rGenreItemsWrap">
                                        <a href="##">더보기</a>
                                    <div class="rGenreItems">
                                        <ul>
                                            <li>
                                                <a href="##">
                                                    <img src="../resources/img/rankImg/classic-rank1.png">
                                                </a>
                                                <span class="prName">2019 예술의전당 and 국립발레단[호두까기인형]</span>
                                                <span class="prDate">12.14~12.25</span>
                                            </li>
                                            <li>
                                                <a href="##">
                                                    <img src="../resources/img/rankImg/classic-rank2.png">
                                                </a>
                                                <span class="prName">유니버설발레단[호두까기인형]</span>
                                                <span class="prDate">12.21~12.31</span>
                                            </li>
                                            <li>
                                                <a href="##">
                                                    <img src="../resources/img/rankImg/classic-rank3.png">
                                                </a>
                                                <span class="prName">2019 팬텀 오브 클래식</span>
                                                <span class="prDate">12.31~12.31</span>
                                            </li>
                                            <li>
                                                <a href="##">
                                                    <img src="../resources/img/rankImg/classic-rank4.png">
                                                </a>
                                                <span class="prName">국립오페라단[헨젤과그레텔]</span>
                                                <span class="prDate">12.05~12.08</span>
                                            </li>
                                            <li>
                                                <a href="##">
                                                    <img src="../resources/img/rankImg/classic-rank5.png">
                                                </a>
                                                <span class="prName">세종문화회관과 서울시향이 함꼐하는 [2020 신녕음악회]</span>
                                                <span class="prDate">01.04~01.04</span>
                                            </li>
                                        </ul>
                                    </div>
                                    </div>
                                </div>
                            </div>
                            <div class="rankingContent">
                                <div class="rGenreListWrap">
                                    <div class="rGenreList">
                                        <div class="rGenreTitle">
                                            <span>스포츠</span>
                                        </div>
                                        <ul class="rGenreLink">
                                            <li><a href="#" class="rGenreTotal">전체</a></li>
                                        </ul>
                                    </div>
                                    <div class="rGenreItemsWrap">
                                        <a href="##">더보기</a>
                                    <div class="rGenreItems">
                                        <ul>
                                            <li>
                                                <a href="##">
                                                    <img src="../resources/img/rankImg/sports-rank1.png">
                                                </a>
                                                <span class="prName">창원LG vs 인천전자</span>
                                                <span class="prDate">12.22~12.22</span>
                                            </li>
                                            <li>
                                                <a href="##">
                                                    <img src="../resources/img/rankImg/sports-rank2.png">
                                                </a>
                                                <span class="prName">2020 ISU 사대륙 피겨스케이팅 선수권 대회</span>
                                                <span class="prDate">02.04~02.09</span>
                                            </li>
                                            <li>
                                                <a href="##">
                                                    <img src="../resources/img/rankImg/sports-rank3.png">
                                                </a>
                                                <span class="prName">창원LG vs 현대모비스</span>
                                                <span class="prDate">12.28~12.28</span>
                                            </li>
                                            <li>
                                                <a href="##">
                                                    <img src="../resources/img/rankImg/sports-rank4.png">
                                                </a>
                                                <span class="prName">대한항공 vs 한국전력</span>
                                                <span class="prDate">12.22~12.22</span>
                                            </li>
                                            <li>
                                                <a href="##">
                                                    <img src="../resources/img/rankImg/sports-rank5.png">
                                                </a>
                                                <span class="prName">창원LG vs KGC</span>
                                                <span class="prDate">09.20~02.16</span>
                                            </li>
                                        </ul>
                                    </div>
                                    </div>
                                </div>
                            </div>
                            <div class="rankingContent">
                                <div class="rGenreListWrap">
                                    <div class="rGenreList">
                                        <div class="rGenreTitle">
                                            <span>레저</span>
                                        </div>
                                        <ul class="rGenreLink">
                                            <li><a href="#" class="rGenreTotal">전체</a></li>
                                        </ul>
                                    </div>
                                    <div class="rGenreItemsWrap">
                                        <a href="##">더보기</a>
                                    <div class="rGenreItems">
                                        <ul>
                                            <li>
                                                <a href="##">
                                                    <img src="../resources/img/rankImg/leisure-rank1.png">
                                                </a>
                                                <span class="prName">2019-2020 서울광장스케이트장과 함께</span>
                                                <span class="prDate">12.20~02.09</span>
                                            </li>
                                            <li>
                                                <a href="##">
                                                    <img src="../resources/img/rankImg/leisure-rank2.png">
                                                </a>
                                                <span class="prName">고양시 킨텍스 캠핑장</span>
                                                <span class="prDate">12.01~01.31</span>
                                            </li>
                                            <li>
                                                <a href="##">
                                                    <img src="../resources/img/rankImg/leisure-rank3.png">
                                                </a>
                                                <span class="prName">2019 안산 화랑 오토캠핑장</span>
                                                <span class="prDate">07.01~01.31</span>
                                            </li>
                                            <li>
                                                <a href="##">
                                                    <img src="../resources/img/rankImg/leisure-rank4.png">
                                                </a>
                                                <span class="prName">거제 관광 모노레일</span>
                                                <span class="prDate">12.01~01.31</span>
                                            </li>
                                            <li>
                                                <a href="##">
                                                    <img src="../resources/img/rankImg/leisure-rank5.png">
                                                </a>
                                                <span class="prName">(문자발송)미들시즌2</span>
                                                <span class="prDate">11.02~12.22</span>
                                            </li>
                                        </ul>
                                    </div>
                                    </div>
                                </div>
                            </div>
                            <div class="rankingContent">
                                <div class="rGenreListWrap">
                                    <div class="rGenreList">
                                        <div class="rGenreTitle">
                                            <span>전시/행사</span>
                                        </div>
                                        <ul class="rGenreLink">
                                            <li><a href="#" class="rGenreTotal">전체</a></li>
                                            <li><a href="#" class="rGenreBtn">-전시</a></li>
                                            <li><a href="#" class="rGenreBtn">-행사</a></li>
                                        </ul>
                                    </div>
                                    <div class="rGenreItemsWrap">
                                        <a href="##">더보기</a>
                                    <div class="rGenreItems">
                                        <ul>
                                            <li>
                                                <a href="##">
                                                    <img src="../resources/img/rankImg/exhibit-rank1.png">
                                                </a>
                                                <span class="prName">알폰스 무하</span>
                                                <span class="prDate">10.24~03.01</span>
                                            </li>
                                            <li>
                                                <a href="##">
                                                    <img src="../resources/img/rankImg/exhibit-rank2.png">
                                                </a>
                                                <span class="prName">[To the moon Snoopy]</span>
                                                <span class="prDate">10.17~03.01</span>
                                            </li>
                                            <li>
                                                <a href="##">
                                                    <img src="../resources/img/rankImg/exhibit-rank3.png">
                                                </a>
                                                <span class="prName">[얼리버드]툴루즈 로트렉展</span>
                                                <span class="prDate">10.02~01.27</span>
                                            </li>
                                            <li>
                                                <a href="##">
                                                    <img src="../resources/img/rankImg/exhibit-rank4.png">
                                                </a>
                                                <span class="prName">미니언즈 특별전</span>
                                                <span class="prDate">10.22~03.15</span>
                                            </li>
                                            <li>
                                                <a href="##">
                                                    <img src="../resources/img/rankImg/exhibit-rank5.png">
                                                </a>
                                                <span class="prName">[북촌] DIALOGUE IN THE DARK</span>
                                                <span class="prDate">10.01~12.31</span>
                                            </li>
                                        </ul>
                                    </div>
                                    </div>
                                </div>
                            </div>
                            <div class="rankingContent">
                                <div class="rGenreListWrap">
                                    <div class="rGenreList">
                                        <div class="rGenreTitle">
                                            <span>아동/가족</span>
                                        </div>
                                        <ul class="rGenreLink">
                                            <li><a href="#" class="rGenreTotal">전체</a></li>
                                            <li><a href="#" class="rGenreBtn">-공연/뮤지컬</a></li>
                                            <li><a href="#" class="rGenreBtn">-체험</a></li>
                                        </ul>
                                    </div>
                                    <div class="rGenreItemsWrap">
                                        <a href="##">더보기</a>    
                                    <div class="rGenreItems">
                                        <ul>
                                            <li>
                                                <a href="##">
                                                    <img src="../resources/img/rankImg/kids-rank1.png">
                                                </a>
                                                <span class="prName">가족뮤지컬 [장화신은고양이]</span>
                                                <span class="prDate">12.14~02.09</span>
                                            </li>
                                            <li>
                                                <a href="##">
                                                    <img src="../resources/img/rankImg/kids-rank2.png">
                                                </a>
                                                <span class="prName">EBS미디어 가족뮤지컬 베이비버스</span>
                                                <span class="prDate">12.21~02.02</span>
                                            </li>
                                            <li>
                                                <a href="##">
                                                    <img src="../resources/img/rankImg/kids-rank3.png">
                                                </a>
                                                <span class="prName">뮤지컬[알사탕]-서울</span>
                                                <span class="prDate">04.09~03.01</span>
                                            </li>
                                            <li>
                                                <a href="##">
                                                    <img src="../resources/img/rankImg/kids-rank4.png">
                                                </a>
                                                <span class="prName">송년가족뮤지컬 [애니]</span>
                                                <span class="prDate">12.14~12.29</span>
                                            </li>
                                            <li>
                                                <a href="##">
                                                    <img src="../resources/img/rankImg/kids-rank5.png">
                                                </a>
                                                <span class="prName">뮤지컬 헬로카봇 시즌5</span>
                                                <span class="prDate">12.13~02.02</span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <%@include file="../include/footer.jsp" %>
</body>
</html>