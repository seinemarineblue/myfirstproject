<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix ="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>예매 결제</title>

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
	href="${pageContext.request.contextPath }/resources/css/jyl_css/jyl-NewPayView01.css"
	rel="stylesheet">

<style type="text/css">
#paymodal {
	position: relative;
	width: 100%;
	height: 100%;
	z-index: 1;
}

#paymodal h2 {
	margin: 0;
}

#paymodal button {
	display: inline-block;
	width: 100px;
	margin-left: calc(100% - 100px - 10px);
}

#paymodal .modal_content {
	width: 300px;
	margin: 100px auto;
	padding: 20px 10px;
	background: #fff;
	border: 2px solid #666;
	position: relative;
	bottom: 200px;
	right: 400px;
}

#paymodal .modal_layer {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, 0.5);
	z-index: -1;
}

.right-content2 {
	display: inline-block;
	clear: both;
	float: right;
	margin-right: 0px;
	width: 40%;
}

.right-content2 .content2 {
	clear: both;
	float: right;
	width: 100%;
}
</style>
</head>
<body>
	<form action="payData" id="regForm" name="regForm" method="post">
		<div class="container">
			<div class="container-fluid">
				<div class="container-fluid topbox2"></div>
			</div>
			<div class="row">
				<div class="col">
					<p></p>


					<!--두번째asd-->
					<div class="top" id="pay1">
						<div class="topbox">
							<div class="ticket">
								<img src="../resources/img/newpayview01/paylogo.gif">
							</div>
							<div class="left-content2">
								<div>
									<h5 class="seatpyo">STAGE</h5>
									<div class="seat-total">


										<span> 인원 선택</span> <select id="person">
											<option value="1">1명</option>
											
										</select> <span></span>
							
										<table border="3" class="seat-a" border-radius="5"
											id="seatTable" name="seatTable">								
											
												<script>
												
									
											
												for (var i = 0; i <= 20; i++) {
													if (i === 0) {
														document
																.write("<td width='25'></td>");
													} else {
														document
																.write("<td width='25'>"
																		+ i
																		+ "</td>");
													}
												}
												for (var i = 65; i <= 74; i++) {

													document.write("<tr>");
													document
															.write("<td>"
																	+ String
																			.fromCharCode(i)
																	+ "</td>");

													for (var j = 1; j <= 20; j++) {

														document
																.write("<td width='25'><input type='checkbox' value="
																		+ String
																				.fromCharCode(i)
																		+ j
																		+ " name=seat_num"
																		+ ">");
													}
													document.write("</tr>");

												}
												console.log($("input:checkbox[id="+String.fromCharCode(i)+j+"]:checked").val());
											</script>
 
										</table>
										<script>
										
										
										</script>



									</div>
								</div>

							</div>

							<div class="right-content2">

								<div class="content2">
									<h6 class="infoticket"></h6>
									<hr class="contentline">




									<script>
										function btn1_click() {
											var btn1 = document
													.getElementById("btn1");
											var nextToggle = document
													.getElementById("nextToggle");
											if (btn1.clicked == true) {
												nextToggle.val();
											}
										}
									</script>



									<div class="left-content4">
										<div class="innerpay">
											<table class="myinfo">
												
												<th>
													<h6>결제 방법 선택</h6>
												</th>
												
												<tr>
													<th>공연 코드 번호 </th>
													<td><input type="text" id="num" name="num" value="${ticketVO.num }" readonly ></td>
												</tr>
												<tr>
												
												<c:choose>
												<c:when test ="${sessionScope.id eq null }"	>						
													<th>비회원</th>
													<td><input type="text" id="user_name" name="user_name" value="비회원" readonly></td>
											</c:when>
											<c:otherwise>
											<th>예약자 이름</th>
													<td><input type="text" id="user_name" name="user_name" value="${sessionScope.name }"></td>
													<input type="hidden" id="id" name="id" value="${sessionScope.id }">
											</c:otherwise>
											</c:choose>
												</tr>
												<tr>
													<th scope="row">작품명</th>
													<td>
														
															
															<input type="text" id="title" name="title" value="${ticketVO.title }"readonly></td>
													</td>

												</tr>
												<tr>
													<th scope="row">은행</th>
													<td><select name="bank" id="bank">
															<option value="none">===선택===</option>
															<option value="nonghyup">농협은행</option>
															<option value="shinhan">신한은행</option>
															<option value="kookmin">국민은행</option>
															<option value="hana">하나은행</option>
													</select></td>
												</tr>
												<tr>
													<th scope="row">카드번호</th>
													<td><textarea rows="1" cols="20" id="card_num"
															name="card_num" placeholder="카드번호 입력" style="resize: none"></textarea></td>
												</tr>

												
												<tr>
													<th scope="row">티켓금액</th>
													<td><input type="text" id="price" name="price" value="${ticketVO.price }"readonly>원</td>
												</tr>

											</table>
										</div>
									</div>





									<button type="button" class="btn btn-danger" id="payBtn">결제</button>

									<div id="paymodal">
										<div class="modal_content">
											<h2>결제창</h2>
											<p>결제가 완료 되었습니다.</p>
											<button type="button" id="modalclose">닫기</button>
										</div>
										<div class="modal_layer"></div>

									</div>



								</div>
							</div>
						</div>
					</div>


					<!--가격할인선택 끝-->




				</div>

			</div>
		</div>
	</form>

	<script>
		$(document).ready(function() {
			document.getElementById("paymodal").style.display = "none";

		})
	</script>

	<script>
		document.getElementById("modalclose").onclick = function() {
			window.close();
			document.getElementById("paymodal").style.display = "none";
			
		
		}
	</script>

	<script>
		var bank = document.getElementById("bank");
		bank.options[bank.selectedIndex].value;



		//payBtn	
		$("#payBtn").click(function() {
			if (!$("input[type=checkbox]").is(':checked')) {
				alert("좌석을 선택해주세요");
			} else if ((bank.options[bank.selectedIndex].value) == 'none') {
				alert("은행을 선택해주세요");
				
			} else if ($("#card_num").val() == '') {
				alert("카드번호를 입력해주세요");
			} else {
				document.getElementById("paymodal").style.display = "block";
				 $("#regForm").submit();
			}
		})
	</script>
	
	
	
	<script>
	/* 인원선택 */
	$(document).ready(function() {
			// 체크박스들이 변경됬을때
			$(":checkbox").change(function() {
				var cnt = $("#person").val();

				// 셀렉트박스의 값과 체크박스중 체크된 갯수가 같을때, 다른 체크박스들을 disable 처리
				if (cnt == $(":checkbox:checked").length) {
					$(":checkbox:not(:checked)").attr("disabled", "disabled");
				}
				// 체크된 갯수가 다르면 활성화 시킴
				else {
					$(":checkbox").removeAttr("disabled");
				}
			});

			// 셀렉트박스에서 다른 인원수를 선택하면 초기화 시킴
			$("#person").change(function() {
				$(":checkbox").removeAttr("checked");
				$(":checkbox").removeAttr("disabled");
			});
		});
	
	
	console.log($(":checkbox:checked").val());

	</script>



</body>
</html>
