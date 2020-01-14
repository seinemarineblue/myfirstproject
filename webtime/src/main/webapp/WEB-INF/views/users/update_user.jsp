<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>싸니까 믿으니까 인터파크 티켓</title>

<!-- 부트스트랩 -->
<link
	href="${pageContext.request.contextPath }/resources/css/bootstrap.css"
	rel="stylesheet">

<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script
	src="${pageContext.request.contextPath }/resources/js/jquery-3.4.1.min.js"></script>

<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
<script
	src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>

<!--개인디자인-->
<link
	href="${pageContext.request.contextPath }/resources/css/sej_style.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/resources/css/ksm_css/join/join_style.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/resources/css/ksm_css/join/default.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/resources/css/ksm_css/join/sub.css"
	rel="stylesheet">

<style type="text/css">
	.btn_type2,
	.btn_type2:hover,
	.btn_type2:focus {
		display:inline-block;
		height:36px;
		color:#fff;
		text-decoration:none;
	}
</style>
</head>
<body>
	<%@include file="../include/header.jsp"%>
	<section>
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-lg-10 join-form">

					<div class="cover">

						<div class="title">
							<h2 class="h2">회원정보</h2>
						</div>
						<h3 class="h3">
							<span>체크</span> 정보수정 
						</h3>

						<form action="update" id="regForm" name="regForm" method="post">
						<table class="type1">
							<caption></caption>
							<colgroup>
								<col style="width: :170px;">
								<col>
							</colgroup>
							<tbody>
								<tr>
									<th><span>*</span>아이디</th>
									<td>
										<input type="text" style="width: 360px" id="id" name="id" value="${userInfo.id }" readonly> 							
									</td>
								</tr>
								<tr>
									<th>
										<span>*</span>비밀번호
									</th>	
									<td>
										<input type="password" style="width: 360px" id="pw" name="pw" placeholder="영문,숫자,특수문자 조합  8~12자리">
										<span id="msgPw"></span>
									</td>
								</tr>
								<tr>
									<th>
										<span>*</span>비밀번호 확인
									</th>
									<td>
										<input type="password" style="width: 360px" id="pw_check" name="pw_check" placeholder="영문,숫자,특수문자 조합  8~12자리">
										<span id="msgPw-c"></span>
									</td>
								</tr>
								<tr>
									<th>
										<span>*</span>이름
									</th>
									<td>
										<input type="text" style="width: 360px" id="name" name="name" value="${userInfo.name}">
									</td>
								</tr>														
								<tr>
									<th>
										<span>*</span>가입일자
									</th>
									<td>
										<div class="icheckbox">
											<fmt:formatDate value="${userInfo.regdate }" pattern="yyyy년 MM월 dd일"/>										
										</div>
									</td>
								</tr>
							</tbody>
						</table>
				     </form>											

						<div class="btn_center">	
							<button class="btn_type1" id="joinBtn">수정하기</button>
						</div>

					</div>
				</div>
			</div>
		</div>
	</section>
	
	<!--Script Section-->
    <script>     
        /* 비밀번호 형식 검사 스크립트 */
        var pw = document.getElementById("pw");
        pw.onkeyup = function() {
        	var regex = /^[A-Za-z0-9+]{8,12}$/;
        	if(regex.test(document.getElementById("pw").value )) {
        		document.getElementById("pw").style.borderColor= "green";
        		document.getElementById("msgPw").innerHTML = "사용가능합니다.";
        	} else {
        		document.getElementById("pw").style.borderColo = "red";
        		document.getElementById("msgPw").innerHTML = "";
        	}
        }
        /* 비밀번호 확인검사 */
        var pw_check = document.getElementById("pw_check");
        pw_check.onkeyup = function() {
        	var regex = /^[A-Za-z0-9+]{8,12}$/;
        	if(document.getElementById("pw_check").value == document.getElementById("pw").value ) {
        		document.getElementById("pw_check").style.borderColor = "green";
        		document.getElementById("msgPw-c").innerHTML = "비밀번호가 일치합니다.";
        	} else {
        		document.getElementById("pw_check").style.borderColor = "red";
        		document.getElementById("msgPw-c").innerHTML = "비밀번호 확인란을 확인하세요.";
        	}
        }

		
		//정보수정
		$("#joinBtn").click(function() {
			if( $("#pw").val()=='' || $("#pw_check").val()=='' ) {
				alert("비밀번호란이 공백입니다.");
				return false;
			} else if( $("#pw").val() != $("#pw_check").val() ) {
				alert("비밀번호 확인란을 확인하세요.");
				return false;
			} else if( $("#name").val() =='') {
				alert("이름을 입력하세요.");
				return false;
			} else if( confirm("정보를 수정하시겠습니까?") ) {
				$("#regForm").submit();
			}
		})
		
    </script>
	
	<%@include file="../include/footer.jsp"%>
</body>
</html>