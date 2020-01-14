<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
    <link href="${pageContext.request.contextPath }/resources/css/lhy_style.css" rel="stylesheet">
    
    <style type="text/css">

    </style>
</head>
<body>
<%@include file="../include/header.jsp" %>

 <section class="concert">
    <div class="container">
        <div class="row">
            <div class="main-show">
                <img src="../resources/img/mu-con/bg_concert.jpg">
                   <div class="img-wrap">
                    <dl class="main-img1">
                        <dt><a href="contentDetail?num=29"><img src="../resources/img/mu-con/mucon_list29.gif"></a></dt>
                        <dd>
                            <span class="txt1">싸이</span>
                            <span class="txt2">올림픽공원 체조경기장</span>
                            <span class="txt3">19-20-20 ~ 19-12-25</span>
                        </dd>
                    </dl>
                    <dl class="main-img2">
                        <dt><a href="contentDetail?num=21"><img src="../resources/img/mu-con/mucon_list21.gif"></a></dt>
                        <dd>
                            <span class="txt1">내일은 미스트롯</span>
                            <span class="txt2">전국 공연장</span>
                            <span class="txt3">19-11-29 ~ 20-03-07</span>
                        </dd>
                    </dl>                    
                    <dl class="main-img3">
                        <dt><a href="contentDetail?num=22"><img src="../resources/img/mu-con/mucon_list22.gif"></a></dt>
                        <dd>
                            <span class="txt1">백지영</span>
                            <span class="txt2">전국 공연장</span>
                            <span class="txt3">19-12-21 ~ 20-03-21</span>
                        </dd>
                    </dl>                    
                    <dl class="main-img4">
                        <dt><a href="contentDetail?num=23"><img src="../resources/img/mu-con/mucon_list23.gif"></a></dt>
                        <dd>
                            <span class="txt1">박진영</span>
                            <span class="txt2">서울 부산 대구</span>
                            <span class="txt3">19-12-25 ~ 19-12-31</span>
                        </dd>
                    </dl>                    
                    <dl class="main-img5">
                        <dt><a href="contentDetail?num=19"><img src="../resources/img/mu-con/mucon_list19.gif"></a></dt>
                        <dd>
                            <span class="txt1">김연우</span>
                            <span class="txt2">경희대학교 평화의 전당</span>
                            <span class="txt3">19-12-21 ~ 19-12-24</span>
                        </dd>
                    </dl>                    
                    <dl class="main-img6">
                        <dt><a href="contentDetail?num=20"><img src="../resources/img/mu-con/mucon_list20.gif"></a></dt>
                        <dd>
                            <span class="txt1">김장훈</span>
                            <span class="txt2">구름아래소극장</span>
                            <span class="txt3">20-01-10 ~ 20-03-22</span>
                        </dd>
                    </dl>
                </div>
            </div>
             
            <div class="content">
               <div class="menu-concert">
                   <dl>
                       <dt class="menu-title">
                           <span class="tit">콘서트</span>
                            <span class="num">${sessionScope.conTotal }</span>
                            <span>개 뮤지컬판매중</span>
                       </dt>
                       <dd><a href="">발라드</a></dd>
                       <dd><a href="">락/메탈</a></dd>
                       <dd><a href="">랩/힙합</a></dd>
                   </dl>
               </div>
               
               <div class="center">                         
               
                   <div class="banner-wrap">
                      <div class="banner">
                          <img id="TopBannerSel" src="../resources/img/mu-con/b_concert1.gif" style="cursor:pointer" onclick="javascript:ConTopBannerAction.Click(-1); return false;" alt="빅배너">
                      </div>
                      <ul>
                         <li id="banner0">
                             <a href="" onclick="javascript:ConTopBannerAction.Click(0);return false;" onMouseOver="javascript:ConTopBannerAction.Change(0);ConTopBannerAction.RollStop();return false;" onMouseOut="javascript:ConTopBannerAction.RollStart();return false;"><span>2019 김범수 콘서트</span></a>
                         </li>
                         <li id="banner1">
                             <a href="" onclick="javascript:ConTopBannerAction.Click(1);return false;" onMouseOver="javascript:ConTopBannerAction.Change(1);ConTopBannerAction.RollStop();return false;" onMouseOut="javascript:ConTopBannerAction.RollStart();return false;"><span>2019 김종국 콘서트</span></a>
                         </li>
                         <li id="banner2">
                             <a href="" onclick="javascript:ConTopBannerAction.Click(2);return false;" onMouseOver="javascript:ConTopBannerAction.Change(2);ConTopBannerAction.RollStop();return false;" onMouseOut="javascript:ConTopBannerAction.RollStart();return false;"><span>2019 힙합페스티벌</span></a>
                         </li>
                         <li id="banner3">
                             <a href="" onclick="javascript:ConTopBannerAction.Click(3);return false;" onMouseOver="javascript:ConTopBannerAction.Change(3);ConTopBannerAction.RollStop();return false;" onMouseOut="javascript:ConTopBannerAction.RollStart();return false;"><span>2019 이승철 콘서트</span></a>
                         </li>
                         <li id="banner4">
                             <a href="" onclick="javascript:ConTopBannerAction.Click(4);return false;" onMouseOver="javascript:ConTopBannerAction.Change(4);ConTopBannerAction.RollStop();return false;" onMouseOut="javascript:ConTopBannerAction.RollStart();return false;"><span>프랑스 뮤지컬 갈라</span></a>
                         </li>
                         <li id="banner5">
                             <a href="" onclick="javascript:ConTopBannerAction.Click(5);return false;" onMouseOver="javascript:ConTopBannerAction.Change(5);ConTopBannerAction.RollStop();return false;" onMouseOut="javascript:ConTopBannerAction.RollStart();return false;"><span>QUEEN</span></a>
                         </li>
                     </ul>
                   </div>            
               </div>
            
                <div class="rank-concert">
                    <dl><strong>랭킹</strong> 전체 | 라이선스/내한 | 창작</dl>
                    <ol>
                     <c:forEach var="rank_list" items="${rankCon }" varStatus="status">
                        <li>
                            <span><a href="contentDetail?num=${rank_list.num }">${status.count} ${rank_list.title }</a></span>
                        </li>
                      </c:forEach>                  
                    </ol>
                </div>

            <div class="wrap-issue">
                <div class="issue">
                    <p class="tit"><img src="../resources/img/mu-con/tit_focus_concert.gif"></p>
                    <dl class="list">
                      <c:forEach var="t_list" items="${ticketList }" begin="17" end="21">
                        <dt class="obj">
                            <a href="contentDetail?num=${t_list.num }">
                                <img src="../resources/img/mu-con/mucon_list${t_list.num }.gif">
                            </a>
                            <p class="info">
                                <span class="txt1">${t_list.title }</span>
                                <span class="txt2">${t_list.place }</span>            
                            </p>
                        </dt>
                      </c:forEach>                     
                    </dl>
                 
                </div>
            </div>
            </div>
        </div>
    </div>
 </section>
 
<%@include file="../include/footer.jsp" %>
<script>
    var conInterval_banner;
          var ConTopBanners = [
            ['../resources/img/mu-con/b_concert1.gif', 'http://localhost:8181/webtime/content/contentDetail?num=24', '2019 김범수 콘서트'],
            ['../resources/img/mu-con/b_concert2.gif', 'http://localhost:8181/webtime/content/contentDetail?num=25', '2019 김종국 콘서트'],
            ['../resources/img/mu-con/b_concert3.gif', 'http://localhost:8181/webtime/content/contentDetail?num=26', '2019 힙합페스티벌'],
            ['../resources/img/mu-con/b_concert4.gif', 'http://localhost:8181/webtime/content/contentDetail?num=27', '2019 이승철 콘서트'],
            ['../resources/img/mu-con/b_concert5.gif', 'http://localhost:8181/webtime/content/contentDetail?num=3', '프랑스 뮤지컬 갈라'],
            ['../resources/img/mu-con/b_concert6.gif', 'http://localhost:8181/webtime/content/contentDetail?num=28', 'QUEEN']
          ];

          var ConTopBannerAction = {
            BannerRollTime : 3000,
            BannerSelect : -1,
            NextBanner : 0,
              
            Init:function()
            {
                var nRandom;
                nRandom = Math.floor(Math.random() * ConTopBanners.length);
            
                ConTopBannerAction.Change(nRandom);
                ConTopBannerAction.RollStart();
                
            },
              
            Change: function (no)
            {
                if(ConTopBannerAction.BannerSelect != no &&  ConTopBanners.length > 0) {
                    document.getElementById("TopBannerSel").src = ConTopBanners[no][0];
                    document.getElementById("TopBannerSel").alt = ConTopBanners[no][2] + "상품페이지 본창이동";
                    
                    for(i=0; i < ConTopBanners.length; i++) {
                        document.getElementById("banner" + i).className = "";
                        document.getElementById("banner" + i).style.backgroundColor = "#f5f5f5cc";
                        document.querySelector("#banner" +i+ " span").style.color="black";
                    }
                    document.getElementById("banner" + no).className = "on";
                    document.getElementById("banner" + no).style.backgroundColor = "#4f4f4f";
                    document.querySelector("#banner" +no+ " span").style.color="white";
                    ConTopBannerAction.BannerSelect = no;
                }   
            },
            
            Click: function(no) {
                if(no == -1) no=ConTopBannerAction.BannerSelect;
                
                document.getElementById("banner" +no).style.backgroundColor = "#4f4f4f";
                
                document.location.href = ConTopBanners[no][1];    
            },
              
            Next: function() {
                ConTopBannerAction.NextBanner = ConTopBannerAction.BannerSelect + 1;
                if (ConTopBannerAction.NextBanner >= ConTopBanners.length) ConTopBannerAction.NextBanner = 0;
                ConTopBannerAction.Change(ConTopBannerAction.NextBanner);
            },
            
            RollStart: function() {
                conInterval_banner = window.setInterval("ConTopBannerAction.Next();", ConTopBannerAction.BannerRollTime);
            },
              
            RollStop: function() {
                clearInterval(conInterval_banner);
            }
        
          };
    </script>
 
 
     
</body>
</html>