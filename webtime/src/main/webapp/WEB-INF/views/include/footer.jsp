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
	    <!--footer-->
    <footer>
        <div class="container-fluid footer-wrap">
            <div class="row">
                <div class="col-sm-12 col-lg-12 content-wrap">
                    <div class="footer-links">
                        <ul class="footer-btn">
                            <li><span><strong>개인정보처리방침</strong></span></li>
                            <li><span>청소년보호정책</span></li>
                            <li><span>이용약관</span></li>
                            <li><span>티켓판매안내</span></li>
                            <li><span>회사소개</span></li>
                        </ul>
                    </div>
                    <div class="footer-info">
                        <dt>
                            <img src="${pageContext.request.contextPath }/resources/img/headerfooter/footer_logo.jpg">
                        </dt>
                        <dd>
                            <span class="name">인터파크</span>
                        </dd>
                        <dd>
                            <span>06168 서울시 강남구 삼성로 512 삼성동빌딩 10층 (삼성동)</span>
                        </dd>
                        <dd>
                            <span>통신판매업신고 강남 02549호</span>
                        </dd>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</body>
</html>