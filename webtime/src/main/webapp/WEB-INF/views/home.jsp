<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>TICKET</title>

    <!-- 부트스트랩 -->
    <link href="${pageContext.request.contextPath }/resources/css/bootstrap.css" rel="stylesheet">

    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="${pageContext.request.contextPath }/resources/js/jquery-3.4.1.min.js"></script>

    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <script src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>
    
    <!--개인디자인-->
    <link href="${pageContext.request.contextPath }/resources/css/sej_style.css" rel="stylesheet">
    
    <style type="text/css">
	
    </style>
</head>
<body>
<%@include file="include/header.jsp" %>

     <!--main section1-->
    <section class="section1">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <div class="item active">
                    <img src="${pageContext.request.contextPath }/resources/img/main/main_carousel4.jpg" alt="main_banner1" style="width:100%;">
                </div>
                <div class="item">
                    <img src="${pageContext.request.contextPath }/resources/img/main/main_carousel2.jpg" alt="main_banner2" style="width:100%;">
                </div>
                <div class="item">
                    <img src="${pageContext.request.contextPath }/resources/img/main/main_carousel3.jpg" alt="main_banner3" style="width:100%;">
                </div>
            </div>
        </div>
    </section>
    <!--main section2-->
    <section class="section2">
        <div class="container">
            <div class="row section2-row">
                <div class="section2-wrap">
                    <!--ㅡMain Banner1-->
                    <div class="mainBanner-wrap">
                        <div class="mainBanner1">
                            <img src="${pageContext.request.contextPath }/resources/img/main/MainBarBanner_MainBarBanner1.jpg">
                        </div>
                        <div class="mainBanner2">
                            <img src="${pageContext.request.contextPath }/resources/img/main/CoverStory_CoverStoryBtn.jpg">
                        </div>
                    </div>
                    <!--ㅡMain Banner2-->
                    <div class="ticketOpenBanner-wrap">
                        <div class="ticketBanner1">
                            <a class="t-Banner1Link" href=""><img class="t-Banner1" src="${pageContext.request.contextPath }/resources/img/main/TicketOpenBanner.png"></a>
                        </div>
                        <div class="ticketBanner2">
                            <div class="t-Banner2Img">
                                <img src="${pageContext.request.contextPath }/resources/img/main/t_Banner2_Img1.jpg" id="bImg">
                            </div>
                            <ol class="t-Banner2List" id="bMenu">
                                <li class="firstChild" id="bMenu1"><a href="##">카운트다운서울 2020</a></li>
                                <li id="bMenu2"><a href="##">환상동화</a></li>
                                <li id="bMenu3"><a href="##">프랑스 뮤지컬 스타 Big4</a></li>
                                <li id="bMenu4"><a href="##">소란콘서트</a></li>
                                <li id="bMenu5"><a href="##">위대한개츠비</a></li>
                                <li id="bMenu6"><a href="##">슈퍼밴드 TOP콘서트</a></li>
                                <li id="bMenu7"><a href="##">빛과벙커:빈센트 반 고흐전</a></li>
                            </ol>
                        </div>
                    </div>
                    <!--Main Ranking-->
                    <div class="mainRankings">
                        <div class="mRankTitle">
                            <a href="rankBoard/rankMain"><img src="resources/img/main/rankingMainImg.PNG"></a>
                            <ul class="mRankMenu" id="mRank">
                                <li class><a href="##" class="rankFirst">뮤지컬</a></li>
                                <li class><a href="##">콘서트</a></li>
                                <li class><a href="##">연극</a></li>
                                <li class><a href="##">클래식/무용</a></li>
                                <li class><a href="##">스포츠</a></li>
                                <li class><a href="##">레저</a></li>
                                <li class><a href="##">전시/행사</a></li>
                                <li class><a href="##">아동/가족</a></li>
                            </ul>
                            <a href="##" class="rankBtn"><img src="${pageContext.request.contextPath }/resources/img/main/rankingMore.png"></a>
                        </div>
                        <div class="mRankBody">
                            <div class="mRankContentWrap">
                                <div class="rContentLeft">
                                    <div class="rContentTitle">
                                        <span>라이선스/내한뮤지컬</span>
                                        <a href="rankBoard/rankTotal">더보기</a>
                                    </div>
                                    <ul class="rContent">
                                        <li class="rFirst">
                                            <a href="content/contentDetail?num=9"><img src="${pageContext.request.contextPath }/resources/img/rankImg/musical1.jpg"></a>
                                          
                                                <div class="preTex">드라큘라</div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="content/contentDetail?num=6"><img src="${pageContext.request.contextPath }/resources/img/rankImg/musical2.jpg"></a>
                                            <a href="##">
                                                <div class="preTex">아이다</div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="content/contentDetail?num=3"><img src="${pageContext.request.contextPath }/resources/img/rankImg/musical3.jpg"></a>
                                            <a href="##">
                                                <div class="preTex">스위니토드</div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="content/contentDetail?num=11"><img src="${pageContext.request.contextPath }/resources/img/rankImg/musical4.jpg"></a>
                                            <a href="##">
                                                <div class="preTex">오페라의유령</div>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="rContentRight">
                                    <div class="rContentTitle">
                                        <span>창작뮤지컬</span>
                                        <a href="">더보기</a>
                                    </div>
                                    <ul class="rContent">
                                        <li class="rFirst">
                                            <a href="content/contentDetail?num=12"><img src="${pageContext.request.contextPath }/resources/img/rankImg/musical-cre1.jpg"></a>
                                            <a href="##">
                                                <div class="preTex">웃는남자</div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="content/contentDetail?num"><img src="${pageContext.request.contextPath }/resources/img/rankImg/musical-cre2.jpg"></a>
                                            <a href="##">
                                                <div class="preTex">Mr.SHOW</div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="##"><img src="${pageContext.request.contextPath }/resources/img/rankImg/musical-cre3.jpg"></a>
                                            <a href="##">
                                                <div class="preTex">여신님이보고계셔</div>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--Main Ticket Info-->
                    <div class="ticketWrap">
                        <!--뮤지컬-->
                        <div class="tImg">
                            <img src="${pageContext.request.contextPath }/resources/img/main/logo_musical.PNG">
                        </div>
                        <div class="tWrap">
                            <div class="ticketCube">
                                <div class="ticketContent">
                                    <img src="${pageContext.request.contextPath }/resources/img/main/main_musical1.jpg">
                                </div>
                            </div>
                            <div class="ticketCube">
                                <div class="ticketContent">
                                    <img src="${pageContext.request.contextPath }/resources/img/main/main_musical2.jpg">
                                </div>
                            </div>
                            <div class="ticketCube">
                                <div class="ticketContent">
                                    <img src="${pageContext.request.contextPath }/resources/img/main/main_musical3.jpg">
                                </div>
                            </div>
                            <div class="ticketCube">
                                <div class="ticketContent">
                                    <img src="${pageContext.request.contextPath }/resources/img/main/main_musical4.jpg">
                                </div>
                            </div>
                        </div>
                        <!--concert-->
                        <div class="tImg">
                            <img src="${pageContext.request.contextPath }/resources/img/main/logo_concert.PNG">
                        </div>
                        <div class="tWrap">
                            <div class="ticketCube">
                                <div class="ticketContent">
                                    <img src="${pageContext.request.contextPath }/resources/img/main/main_concert1.jpg">
                                </div>
                            </div>
                            <div class="ticketCube">
                                <div class="ticketContent">
                                    <img src="${pageContext.request.contextPath }/resources/img/main/main_concert2.jpg">
                                </div>
                            </div>
                            <div class="ticketCube">
                                <div class="ticketContent">
                                    <img src="${pageContext.request.contextPath }/resources/img/main/main_concert3.jpg">
                                </div>
                            </div>
                            <div class="ticketCube">
                                <div class="ticketContent">
                                    <img src="${pageContext.request.contextPath }/resources/img/main/main_concert4.jpg">
                                </div>
                            </div>
                        </div>
                        <!--classic-->
                        <div class="tImg">
                            <img src="${pageContext.request.contextPath }/resources/img/main/logo_classic.PNG">
                        </div>
                        <div class="tWrap">
                            <div class="ticketCube">
                                <div class="ticketContent">
                                    <img src="${pageContext.request.contextPath }/resources/img/main/main_classic1.jpg">
                                </div>
                            </div>
                            <div class="ticketCube">
                                <div class="ticketContent">
                                    <img src="${pageContext.request.contextPath }/resources/img/main/main_classic2.jpg">
                                </div>
                            </div>
                            <div class="ticketCube">
                                <div class="ticketContent">
                                    <img src="${pageContext.request.contextPath }/resources/img/main/main_classic3.jpg">
                                </div>
                            </div>
                            <div class="ticketCube">
                                <div class="ticketContent">
                                    <img src="${pageContext.request.contextPath }/resources/img/main/main_classic4.jpg">
                                </div>
                            </div>
                        </div>
                        <!--sports&exhibition&theater-->
                        <div class="tImg">
                            <img src="${pageContext.request.contextPath }/resources/img/main/logo_sports.PNG">
                        </div>
                        <div class="tWrap">
                            <div class="ticketCube">
                                <div class="ticketContent">
                                    <img src="${pageContext.request.contextPath }/resources/img/main/main_sports1.jpg">
                                </div>
                            </div>
                            <div class="ticketCube">
                                <div class="ticketContent">
                                    <img src="${pageContext.request.contextPath }/resources/img/main/main_sports2.jpg">
                                </div>
                            </div>
                            <div class="ticketCube">
                                <div class="ticketContent">
                                    <img src="${pageContext.request.contextPath }/resources/img/main/main_sports3.jpg">
                                </div>
                            </div>
                            <div class="ticketCube">
                                <div class="ticketContent">
                                    <img src="${pageContext.request.contextPath }/resources/img/main/main_sports4.jpg">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

<%@include file="include/footer.jsp" %>


    <!--Script Section-->
    <script>
        /*banner2 이미지 선택 스크립트*/
        $('#bMenu li').click(function() {
            if ($(this).children('a').html() == '카운트다운서울 2020') {
                $('#bImg').attr("src", "${pageContext.request.contextPath }/resources/img/main/t_Banner2_Img1.jpg");
            } else if ($(this).children('a').html() == '환상동화') {
                $('#bImg').attr("src", "${pageContext.request.contextPath }/resources/img/main/t_Banner2_Img2.jpg");
            } else if ($(this).children('a').html() == '프랑스 뮤지컬 스타 Big4') {
                $('#bImg').attr("src", "${pageContext.request.contextPath }/resources/img/main/t_Banner2_Img3.jpg");
            } else if ($(this).children('a').html() == '소란콘서트') {
                $('#bImg').attr("src", "${pageContext.request.contextPath }/resources/img/main/t_Banner2_Img4.jpg");
            } else if ($(this).children('a').html() == '위대한개츠비') {
                $('#bImg').attr("src", "${pageContext.request.contextPath }/resources/img/main/t_Banner2_Img5.jpg");
            } else if ($(this).children('a').html() == '슈퍼밴드 TOP콘서트') {
                $('#bImg').attr("src", "${pageContext.request.contextPath }/resources/img/main/t_Banner2_Img6.jpg");
            } else if ($(this).children('a').html() == '빛과벙커:빈센트 반 고흐전') {
                $('#bImg').attr("src", "${pageContext.request.contextPath }/resources/img/main/t_Banner2_Img7.jpg");
            }
        })

        /*Ranking Menu Select Option*/
        $(function() {
            var rBtn = $('#mRank li');
            rBtn.find('a').click(function() {
                rBtn.removeClass('selected');
                $(this).parent().addClass('selected');
            })
            
        })

    </script>
</body>
</html>
