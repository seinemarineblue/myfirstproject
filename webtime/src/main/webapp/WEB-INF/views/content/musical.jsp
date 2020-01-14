<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
          
</head>
<body>
 <%@include file="../include/header.jsp" %>
  <section class="musical">
    <div class="container">
        <div class="row">
            <div class="main-show">
                <img src="../resources/img/mu-con/bg_musical.jpg">
                   <div class="img-wrap">
                    <dl class="main-img1">
                        <dt><a href="contentDetail?num=6"><img src="../resources/img/mu-con/mucon_list6.gif"></a></dt>
                        <dd>
                                <span class="txt1">아이다</span>
                                <span class="txt2">블루스퀘어 인터파크홀</span>
                                <span class="txt3">19-11-13 ~ 20-02-23</span>
                        </dd>
                    </dl>
                    <dl class="main-img2">
                        <dt><a href="contentDetail?num=7"><img src="../resources/img/mu-con/mucon_list7.gif"></a></dt>
                        <dd>
                               <span class="txt1">여명의 눈동자</span>
                                <span class="txt2">세종문화회관 대극장</span>
                                <span class="txt3">20-01-23 ~ 20-02-27</span>
                        </dd>
                    </dl>                    
                    <dl class="main-img3">
                        <dt><a href="contentDetail?num=8"><img src="../resources/img/mu-con/mucon_list8.gif"></a></dt>
                        <dd>
                                <span class="txt1">영웅본색</span>
                                <span class="txt2">한전아트센터</span>
                                <span class="txt3">19-12-17 ~ 20-03-22</span>
                        </dd>
                    </dl>                    
                    <dl class="main-img4">
                        <dt><a href="contentDetail?num=9"><img src="../resources/img/mu-con/mucon_list9.gif"></a></dt>
                        <dd>
                                <span class="txt1">드라큘라</span>
                                <span class="txt2">샤롯데씨어터</span>
                                <span class="txt3">20-02-11 ~ 20-06-07</span>
                        </dd>
                    </dl>                    
                    <dl class="main-img5">
                        <dt><a href="contentDetail?num=10"><img src="../resources/img/mu-con/mucon_list10.gif"></a></dt>
                        <dd>
                                <span class="txt1">블루맨그룹 월드투어</span>
                                <span class="txt2">LG아트센터</span>
                                <span class="txt3">20-04-14 ~ 20-05-10</span>
                        </dd>
                    </dl>                    
                    <dl class="main-img6">
                        <dt><a href="contentDetail?num=11"><img src="../resources/img/mu-con/mucon_list11.gif"></a></dt>
                        <dd>
                                <span class="txt1">오페라의 유령</span>
                                <span class="txt2">서울,부산</span>
                                <span class="txt3">19-12-13 ~ 20-02-09</span>
                        </dd>
                    </dl>
                </div>
            </div>
             
            <div class="content">
               <div class="menu-musical">
                   <dl>
                       <dt class="menu-title">
                           <span class="tit">뮤지컬</span>
                            <span class="num">${sessionScope.muTotal }</span>
                            <span>개 뮤지컬판매중</span>
                        </dt>
                       <dd><a href="">오리지널/내한공연</a></dd>
                       <dd><a href="">창작뮤지컬</a></dd>
                       <dd><a href="">내한공연</a></dd>
                   </dl>
               </div>
               
               <div class="center">
                   <div class="banner-wrap">
                      <div class="banner">
                          <a href=""><img id="TopBannerSel" src="../resources/img/mu-con/b_musical1.gif" style="cursor:pointer" onclick="javascript:MuTopBannerAction.Click(-1); return false;" alt="빅배너"></a>
                      </div>
                      <ul>
                         <li id="banner0">
                             <a href="" onclick="javascript:MuTopBannerAction.Click(0);return false;" onMouseOver="javascript:MuTopBannerAction.Change(0);MuTopBannerAction.RollStop();return false;" onMouseOut="javascript:MuTopBannerAction.RollStart();return false;"><span>웃는남자</span></a>
                         </li>
                         <li id="banner1">
                             <a href="" onclick="javascript:MuTopBannerAction.Click(1);return false;" onMouseOver="javascript:MuTopBannerAction.Change(1);MuTopBannerAction.RollStop();return false;" onMouseOut="javascript:MuTopBannerAction.RollStart();return false;"><span>보디가드</span></a>
                         </li>
                         <li id="banner2">
                             <a href="" onclick="javascript:MuTopBannerAction.Click(2);return false;" onMouseOver="javascript:MuTopBannerAction.Change(2);MuTopBannerAction.RollStop();return false;" onMouseOut="javascript:MuTopBannerAction.RollStart();return false;"><span>스웨그에이지</span></a>
                         </li>
                         <li id="banner3">
                             <a href="" onclick="javascript:MuTopBannerAction.Click(3);return false;" onMouseOver="javascript:MuTopBannerAction.Change(3);MuTopBannerAction.RollStop();return false;" onMouseOut="javascript:MuTopBannerAction.RollStart();return false;"><span>경종수정실록</span></a>
                         </li>
                         <li id="banner4">
                             <a href="" onclick="javascript:MuTopBannerAction.Click(4);return false;" onMouseOver="javascript:MuTopBannerAction.Change(4);MuTopBannerAction.RollStop();return false;" onMouseOut="javascript:MuTopBannerAction.RollStart();return false;"><span>뮤지컬스타 빅4</span></a>
                         </li>
                         <li id="banner5">
                             <a href="" onclick="javascript:MuTopBannerAction.Click(5);return false;" onMouseOver="javascript:MuTopBannerAction.Change(5);MuTopBannerAction.RollStop();return false;" onMouseOut="javascript:MuTopBannerAction.RollStart();return false;"><span>레베카</span></a>
                         </li>
                     </ul>
                   </div>      
               </div>
            
                <div class="rank-musical">
                    <dl><strong>랭킹</strong> 전체 | 라이선스/내한 | 창작</dl>
                    <ol>
                     <c:forEach var="rank_list" items="${rankMu }" varStatus="status">
                        <li>
                            <span><a href="contentDetail?num=${rank_list.num }">${status.count} ${rank_list.title }</a></span>
                        </li>
                      </c:forEach>  
                    </ol>
                </div>

            <div class="wrap-issue">
                <div class="issue">
                    <p class="tit"><img src="../resources/img/mu-con/tit_focus_musical.gif"></p>
                    <dl class="list">
                      <c:forEach var="t_list" items="${ticketList }" end="4">
                        <dt class ="obj">
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
          var muInterval_banner;
          var MuTopBanners = [
            ['../resources/img/mu-con/b_musical1.gif', 'http://localhost:8181/webtime/content/contentDetail?num=12', '웃는남자'],
            ['../resources/img/mu-con/b_musical2.gif', 'http://localhost:8181/webtime/content/contentDetail?num=13', '보디가드'],
            ['../resources/img/mu-con/b_musical3.gif', 'http://localhost:8181/webtime/content/contentDetail?num=14', '스웨그에이지'],
            ['../resources/img/mu-con/b_musical4.gif', 'http://localhost:8181/webtime/content/contentDetail?num=15', '경종수정실록'],
            ['../resources/img/mu-con/b_musical5.gif', 'http://localhost:8181/webtime/content/contentDetail?num=3', '뮤지컬스타 빅4'],
            ['../resources/img/mu-con/b_musical6.gif', 'http://localhost:8181/webtime/content/contentDetail?num=16', '레베카']
          ];

    
          var MuTopBannerAction = {
            BannerRollTime : 3000,
            BannerSelect : -1,
            NextBanner : 0,
              
            Init:function()
            {
                var nRandom;
                nRandom = Math.floor(Math.random() * MuTopBanners.length);
            
                MuTopBannerAction.Change(nRandom);
                MuTopBannerAction.RollStart();
                
            },
              
            Change: function (no)
            {
                if(MuTopBannerAction.BannerSelect != no &&  MuTopBanners.length > 0) {
                    document.getElementById("TopBannerSel").src = MuTopBanners[no][0];
                    document.getElementById("TopBannerSel").alt = MuTopBanners[no][2] + "상품페이지 본창이동";
                    
                    for(i=0; i < MuTopBanners.length; i++) {
                        document.getElementById("banner" + i).className = "";
                        document.getElementById("banner" + i).style.backgroundColor = "#f5f5f5cc";
                        document.querySelector("#banner" +i+ " span").style.color="black";
                    }
                    document.getElementById("banner" + no).className = "on";
                    document.getElementById("banner" + no).style.backgroundColor = "#4f4f4f";
                    document.querySelector("#banner" +no+ " span").style.color="white";
                    MuTopBannerAction.BannerSelect = no;
                } 
        
            },
            
            Click: function(no) {
                if(no == -1) no=MuTopBannerAction.BannerSelect;
                
                document.getElementById("banner" +no).style.backgroundColor = "#4f4f4f";
                
                document.location.href = MuTopBanners[no][1];    
            },
              
            Next: function() {
                MuTopBannerAction.NextBanner = MuTopBannerAction.BannerSelect + 1;
                if (MuTopBannerAction.NextBanner >= MuTopBanners.length) MuTopBannerAction.NextBanner = 0;
                MuTopBannerAction.Change(MuTopBannerAction.NextBanner);
            },
            
            RollStart: function() {
                muInterval_banner = window.setInterval("MuTopBannerAction.Next();", MuTopBannerAction.BannerRollTime);
            },
              
            RollStop: function() {
                clearInterval(muInterval_banner);
            }
        
          };

      
        	 
        
    </script>

</body>
</html>