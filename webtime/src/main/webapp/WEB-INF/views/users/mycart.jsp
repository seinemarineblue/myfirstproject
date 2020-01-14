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

<section class="mycart">
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                      <ul class="nav nav-tabs tabs-style">
                        <li class="active"><a data-toggle="tab" href="#cart">장바구니</a></li>
                      </ul>

                      <div class="tab-content">
                        <!-- 장바구니-->
                        <div id="cart" class="tab-pane fade in active">
                            <table class="table table-condensed cart-table">           
                                <thead>
                                  <tr class="category">
                                    <th width="30"><input type="checkbox" name="chk_all" class="chk_all"></th>
                                    <th width="140">전체선택</th>
                                    <th width="430">상품명</th>
                                    <th width="40" class="txt4">수량</th>
                                    <th width="140" class="txt5">상품금액</th>
                                  </tr>
                                </thead>
                                 <c:forEach var="cart" items="${cartList}" >
                                  <tr>
                                    <td><input type="checkbox" name="chk_obj" class="chk_obj" value="${cart.cno}" data-cartNum="${cart.num}"></td>
                                    <td></td>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
                                    <td><a href="../content/contentDetail?num=${cart.num }">${cart.title }</a></td>
                                    <td>1</td>
                                    <td>${cart.price}원</td>
                                  </tr>  
                                 </c:forEach>                                           
                            </table>
                            <div class="total">
                                <input type="checkbox" class="chk_all">전체선택
                                <div class="cal">총 주문금액: (상품금액)30,000원 x (수량)2매 = 60,000원</div>
                            </div>
                            <div class="choice">
                                <p>선택한 상품</p>
                                <button class="order btn btn-danger" id="orderBtn">주문하기</button>
                                <button class="delete btn btn-default" id="deleteBtn">삭제</button>
                            </div>
                        </div>
                    		   
                </div>			
            </div>
        </div>
    </div>
</section>

 <script>
	$(document).ready(function() {
		//체크박스 전체선택 
		$('.chk_all').click(function() {
			$('.chk_obj').prop('checked', this.checked);
		})
		
 
		//주문하기 클릭
		$("#orderBtn").click(function() { 
			var num = $("input[class='chk_obj']:checked").attr("data-cartNum");
			
			if( !$('.chk_obj').prop('checked') ) {
				alert("주문할 상품을 선택하세요.");
				return false;
			}
			
			window.open('${pageContext.request.contextPath}/content/reservation?num='+ num, "reservation", "width=1100,height=1000");
		})	
		
		//삭제 클릭
		$("#deleteBtn").click(function() {

				
			var confirm_val = confirm("정말 삭제하시겠습니까?");
			
			if(confirm_val) {
				
				var cno = $("input[class='chk_obj']:checked").val();			
				
				$.ajax({
					url: "deleteCart",
					type: "post",
					data: JSON.stringify({"cno":cno }),
					contentType: "application/json; charset=utf-8",
					success: function(result) {
						if(result ==1) {
							location.href="mycart";
						} else {
							alert("삭제 실패");
						}
					}
				});
			}
		});
		
		

		
		
	})
	
 </script>
 

<%@include file="../include/footer.jsp" %>
</body>
</html>