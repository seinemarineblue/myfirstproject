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
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="../js/jquery-3.4.1.min.js"></script>

    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <script src="../js/bootstrap.min.js"></script>

    <!--개인디자인-->
    <link href="../css/sej_style.css" rel="stylesheet">
</head>
<body>

<%@include file="../include/header.jsp" %>
   <!--RankTotal Main-->
    <section>
        <div class="container-fluid">
            <div class="row">
                <div class="rankTotal-wrap col-sm-12 col-md-12 col-lg-12">
                    <div class="toggle-wrap">
                        <div class="rankLogo-wrap">
                           <div class="rankLogo">
                             <a href="rankMain"><img src="../resources/img/rankImg/ranking_logo.png"></a>
                            </div>
                        </div>
                        <div class="rankMenuTab">
                          <div class="toggleDetail">
                              <ul>
                                  <li class="genre1"><a href="#">공연</a></li>
                                  <li class="genre2"><a href="#">뮤지컬</a></li>
                                  <li class="genre3"><a href="#">콘서트</a></li>
                                  <li class="genre4"><a href="#">연극</a></li>
                                  <li class="genre5"><a href="#">클래식/무용</a></li>
                                  <li class="genre6"><a href="#">스포츠</a></li>
                                  <li class="genre7"><a href="#">레저</a></li>
                                  <li class="genre8"><a href="#">전시/행사</a></li>
                                  <li class="genre9"><a href="#">아동/가족</a></li>
                              </ul>
                          </div>  
                        </div>
                        <div class="rankDateChoice">
                            <div class="choiceWrap">
                                <div class="choiceLeft">
                                    <select class="genreSelector">
                                        <option>전체</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="rankBody-wrap">
                        <div class="rankBodyHeader">
                            <table class="rankTable">
                                <tbody>
                                <tr>
                                    <td class="rnum">랭킹</td>
                                    <td class="rplay">공연</td>
                                    <td class="rdate">기간</td>
                                </tr>
                            </tbody>
                            </table>
                        </div>
                        <div class="rankBody top3">
                            <table class="rContentTable">
                                <tr>
                                    <td class="rContentNum">1</td>
                                    <td class="rContentPlay">
                                        <img src="../resources/img/rankImg/musical4.jpg">
                                        <div class="playInfo">
                                            <a href="##">
                                            <b class="playTitle">뮤지컬 〈오페라의 유령〉 월드투어 - 부산(The Phantom of the Opera)</b>
                                            <span class="playPlace">부산 드림씨어터</span>
                                            </a>
                                        </div>
                                    </td>
                                    <td class="rContentDate">2019.12.13 ~ 2020.02.09</td>
                                </tr>
                            </table>
                        </div>
                        <div class="rankBody top3">
                            <table class="rContentTable">
                                <tr>
                                    <td class="rContentNum">2</td>
                                     <td class="rContentPlay">
                                        <img src="../resources/img/rankImg/musical2.jpg">
                                        <div class="playInfo">
                                            <a href="##">
                                            <b class="playTitle">뮤지컬 [아이다]</b>
                                            <span class="playPlace">블루스퀘어 인터파크홀</span>
                                            </a>
                                        </div>
                                    </td>
                                    <td class="rContentDate">2019.11.13 ~ 2020.02.23</td>
                                </tr>
                            </table>
                        </div>
                        <div class="rankBody top3">
                            <table class="rContentTable">
                                <tr>
                                    <td class="rContentNum">3</td>
                                     <td class="rContentPlay">
                                        <img src="../resources/img/rankImg/musical1.jpg">
                                        <div class="playInfo">
                                            <a href="##">
                                            <b class="playTitle">뮤지컬 드라큘라 (Dracula:The Musical)</b>
                                            <span class="playPlace">샤롯데씨어터</span>
                                            </a>
                                        </div>
                                    </td>
                                    <td class="rContentDate">2020.02.11 ~ 2020.06.07</td>
                                </tr>
                            </table>
                        </div>
                        <div class="rankBody">
                            <table class="rContentTable">
                                <tr>
                                    <td class="rContentNum">4</td>
                                     <td class="rContentPlay">
                                        <img src="../resources/img/rankImg/musical-cre1.jpg">
                                        <div class="playInfo">
                                            <a href="##">
                                            <b class="playTitle">뮤지컬 〈웃는 남자〉</b>
                                            <span class="playPlace">예술의전당 오페라극장</span>
                                            </a>
                                        </div>
                                    </td>
                                    <td class="rContentDate">2020.02.11 ~ 2020.06.07</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <%@include file="../include/footer.jsp" %>
    
    <script>
        $(function(){
            var rTab = $('.toggleDetail > ul > li');
            rTab.find('a').click(function(){
                rTab.removeClass('selected');
                $(this).parent().addClass('selected')
            });
        })
    </script>
    
</body>
</html>