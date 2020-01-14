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

 <section class="mypage"> 
   <div class="container">
       <div class="row">
           <!--좌측 사이드 메뉴-->
           <aside class="col-sm-3 mypageAside-inner">
               <div class="mypageMenu-wrap1">
                   <div class="mypageMenu1">
                       <p><img src="../resources/img/mypage/mypage_logo.gif"></p>
                       <strong>${sessionScope.id }</strong>님 반갑습니다.
                       <a href="update_user"><img src="../resources/img/mypage/btn_modify.gif"></a>     
                   </div>
                   <div class="mypageMenu2">
                       장바구니<br><a href="mycart">${sessionScope.cartCount}개</a>       
                   </div>
               </div>

               <div class="mypageMenu-wrap2">
                   <div class="mypageMenu3">
                       <strong>나의 주문/배송 내역</strong>
                       <ul>
                           <li><a href="">주문/배송조회</a></li>
                       </ul>
                   </div>
               </div>
            </aside>

           <!-- 가운데 -->
            <div class="col-xs-12 col-sm-9 mypageSection-inner">
                <div class="news-wrap">
                   <div class="news-title">                        
                        <img src="../resources/img/mypage/tit_h_myalarm.gif">
                        <span class="exp">고객님께서 등록하신 티켓캐스트의 최근 <strong>업데이트</strong> 소식입니다.</span>
                    </div>
                    <div class="news">
                        <img src="../resources/img/mypage/fm_none_scrap.gif">
                        <a href=""><img src="../resources/img/mypage/fm_btn_scrap_setup.gif"></a>
                    </div>
                </div>
                <div class="booking-wrap">
                   <div class="booking-title">
                       <span class="tit">공연/스포츠/영화 최근 예매내역</span>
                        <span class="exp">고객님께서 최근 <strong>3개월</strong>간 예매하신 내역입니다.</span>
                    </div>
                    <div class="booking">
                         <table class="table table-condensed book-table">
                            <thead>
                              <tr>
                                <th>공연명</th>
                                <th>좌석</th>
                                <th>예매자</th>
                                <th>가격</th>
                              </tr>
                            </thead>
                            <tbody>
                             <c:forEach var="list" items="${mybooking}">
                              <tr>
                                <td><a href="../content/contentDetail?num=${list.num}">${list.title }</a></td>
                                <td>${list.seat_num}</td>
                                <td>${list.user_name }</td>
                                <td>${list.price}원</td>
                              </tr>
                             </c:forEach> 
                            </tbody>
                          </table>
                    </div>
                </div>        
            </div>
            <button type="button" onclick="location.href='../FAQ/faqList'" class="ask-btn btn btn-danger">1:1문의하기</button>                  
       </div>

   </div> 

 </section>

<%@include file="../include/footer.jsp" %>
</body>
</html>