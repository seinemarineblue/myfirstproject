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
    
    <style type="text/css">
    </style>
</head>
<body>
<%@include file="../include/header.jsp" %>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="loginAll-wrap">
                        <div class="login-wrap">
                            <form action="loginForm" id="loginForm" method="post">
                                <div class="login">
                                    <input type="text" class="login" id="id" name="id" placeholder="아이디">
                                    <input type="password" class="password" id="pw" name="pw" placeholder="비밀번호">
                                </div>
                                <div class="loginBtnWrap">
                                    <button type="button" class="btn btn-defaul loginBtn" id="loginBtn">로그인</button>
                                </div>
                                <div class="loginCheck">
                                    <div class="loginCheckleft">
                                        <input type="checkbox" id="idSession" name="idSession">
                                        <span>자동로그인</span>
                                        <div class="loginCheckright">
                                            <input type="checkbox" id="idSession" name="idSession">
                                            <span>아이디저장</span>
                                        </div>
                                    </div>
                                </div>
                            </form>
                            <div class="sns-login">
                                <div class="naverLog">
                                    <button type="button" class="btn btn-default snsBtn">네이버로그인</button>
                                </div>
                                <div class="kakaoLog"  class="snsBtn">
                                    <button type="button" class="btn btn-default snsBtn">카카오로그인</button>
                                </div>
                                <div class="loginInfo">
                                    <p>개인정보 보호를 위해 공용PC에서 사용 후 SNS계정의 로그아웃 상태를 반드시 확인해주세요.</p>
                                </div>
                            </div>
                            <div class="findInfo">
                                <a href=""><span>아이디찾기</span></a>
                                <a href=""><span>비밀번호찾기</span></a>
                                <a href="join_main" id="joinBtn"><span>회원가입</span></a>
                            </div>
                        </div>
						</div>

                    </div>
                </div>
            </div>
    </section>
<%@include file="../include/footer.jsp" %>

<script>
	$(document).ready(function() {
		(function() {
			var msg= '${msg}';
			if(msg != '') {
				alert(msg);
			}
		})();
		
		//로그인 처리 
		$("#loginBtn").click(function() {
			if( $("#id").val() == '' ) {
				alert("아이디를 입력하세요.");
			} else if( $("#pw").val() == '' ) {
				alert("비밀번호를 입력하세요.");
			} else {
				$("#loginForm").submit();
			}
		})
	})
</script>

</body>
</html>