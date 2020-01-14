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
    
    <style type="text/css">
		
    </style>
</head>
<body>
   <!--header-->
    <header>
        <div class="container-fluid">
            <div class="row">
                <div class="header-top-wrap">
                    <div class="header-top">
                        <div class="header-top-left">
                        </div>
                        <div class="header-top-right">
                            <ul class="header-top-btn">
                   			  <c:choose>
                   			   <c:when test="${sessionScope.id eq null }">
                                <li><a href="${pageContext.request.contextPath }/users/login"><span>로그인</span></a></li>                   
           						<li><a href="${pageContext.request.contextPath}/users/join_main"><span>회원가입</span></a></li>          
                     		   </c:when>
                     		   <c:otherwise>                   		   
                                <li><a href="${pageContext.request.contextPath }/users/logout"><span>로그아웃</span></a></li>                                                                                              
                                <li><a href="${pageContext.request.contextPath}/users/update_user"><span>회원정보</span></a></li>                                                               
                                <li><a href="${pageContext.request.contextPath }/users/mybooking"><span>예매확인</span></a></li>
                                <li><a href="${pageContext.request.contextPath }/users/mypage"><span>마이페이지</span></a></li>
                                <li><a href="${pageContext.request.contextPath }/FAQ/faqList"><span>고객센터</span></a></li>
                               </c:otherwise>
                              </c:choose>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="header-middle">
                    <div class="main-wrap">
                        <div class="main-logo">
                        	<a href="/webtime">
                            	<img src="${pageContext.request.contextPath }/resources/img/headerfooter/inter_logo.PNG">
                            </a>
                        </div>
                        <div class="mobile-logo">
                            <img src="${pageContext.request.contextPath }/resources/img/headerfooter/m-logo.PNG">
                        </div>
                        <div class="search-wrap">
                            <form>
                                <input type="text" id="search">
                                <a href="##"><img src="${pageContext.request.contextPath }/resources/img/headerfooter/btn_search.jpg"></a>
                            </form>
                        </div>
                        <div class="main-ad">
                            <img src="${pageContext.request.contextPath }/resources/img/headerfooter/header_banner.png">
                        </div>
                    </div>
                </div>
                <div class="header-bottom">
                    <nav class="navbar navbar-inverse">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                        </div>
                        <div class="collapse navbar-collapse" id="myNavbar">
                            <ul class="nav navbar-nav">
                                <li class="dropdown">
                                    <a class="dropdown-toggle header-btn" data-toggle="dropdown" href="${pageContext.request.contextPath }/content/musical">뮤지컬</a>
                                    <ul class="dropdown-menu menu-drop">
                                        <li class="theme-btn"><a href="${pageContext.request.contextPath }/content/musical">뮤지컬</a></li>
                                        <li><a href="#">오리지널/내한공연</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a class="dropdown-toggle header-btn" data-toggle="dropdown" href="${pageContext.request.contextPath }/content/concert">콘서트</a>
                                    <ul class="dropdown-menu menu-drop">
                                        <li class="theme-btn"><a href="${pageContext.request.contextPath }/content/concert">콘서트</a></li>
                                        <li class="con-li"><a href="#">발라드</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a class="dropdown-toggle header-btn" data-toggle="dropdown" href="#">연극</a>
                                    <ul class="dropdown-menu menu-drop">
                                        <li class="theme-btn"><a href="##">연극</a></li>
                                        <li><a href="#">드라마</a></li>
                                    </ul>
                                </li>
                                <li>
                                	<a href="faq/faqList"></a>
                                </li>
                                <li class="dropdown drop-header-btn">
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">로그인</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">로그인</a></li>
                                        <li><a href="#">회원가입</a></li>
                                        <li><a href="#">예매확인</a></li>
                                        <li><a href="#">마이페이지</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>

    </header>

</body>
</html>