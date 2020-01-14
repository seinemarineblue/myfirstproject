<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>FAQ Board</title>
<link
	href="${pageContext.request.contextPath }/resources/css/bootstrap.css"
	rel="stylesheet">
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.4.1.min.js"></script>
<!--개인 디자인 추가-->
<link href="${pageContext.request.contextPath }/resources/css/sej_style.css"
	rel="stylesheet">
<script
	src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>
<style>
body {
	min-width: 40%;
}

p {
	margin: 0;
    width: 100%;
}

.main, .upDiv, .middleDiv {
	text-align: center;
}

.upDiv, .middleDiv {
	overflow: hidden;
	width: 90%;
	text-align: center;
	margin: 0 auto;
}

.upDiv {
	margin-bottom: 30px;
}

.typeDiv {
	float: left;
	margin: 0 auto;
	border-top: 1px solid;
    border-right: 1px solid;
    border-bottom: 1px solid;
	width: 40%;
	height: 100%;
}

.questionDiv {
	float: right;
	margin: 0 auto;
	border-top: 1px solid;
    border-bottom: 1px solid;
	width: 60%;
	height: 100%;
}

.search {
	margin: 5px;
	width: 70%;
	border: 1px solid #777;
}

.btn {
	margin: 1px;
	border: 1px solid;
}

.head {
	overflow: hidden;
	height: 10%;
	text-align: center;
	margin: 0 auto;
	width: 100%;
}

.typeDiv, .questionDiv {
	margin: 0 auto;
	min-height: 20%;
}

.inside {
	overflow: hidden;
	width: 100%;
	text-align: center;
	margin: 0 auto;
}

.inside-type {
	float: left;
	width: 40%;
	min-height: 20%;
	border-right: 1px solid;
	border-bottom: 1px solid;
}

.inside-question {
	float: right;
	width: 60%;
	min-height: 20%;
	border-bottom: 1px solid;
}

.text {
	min-width: 100%;
	max-width: 100%;
	height: 300px;
	border-bottom: 1px solid;
	margin: 0 0 0px;
}

.modal {
	overflow: hidden;
	border: 1px solid;
}

.adviserName {
	float: left;
}

.modalDelBtn, .chat {
	float: right;
}

.chat {
	overflow: scroll;
	height: 80%;
	width: 100%;
}

.chat-text {
	float: left;
	border: 1px solid;
	min-width: 50%;
	max-width: 80%;
	min-height: 10%;
	left: 20%;
}

.chat-btn {
	float: right;
	border: 1px solid;
	width: 10%;
}

.chat .chat-left {
	float: left;
	width: 51%;
	border: 1px solid;
	border-radius: 10px;
	height: 10%;
	margin-bottom: 2%;
}
    
.chat .chat-left p, .chat .chat-left .time-left {
	padding-left: 5px;
}

.chat .chat-right {
	float: right;
	text-align: right;
	width: 51%;
	border: 1px solid;
	height: 10%;
	border-radius: 10px;
	margin-bottom: 2%;
}

.chat .chat-right p, .chat .chat-right .time-right {
	padding-right: 5px;
}
    .chat-left, .chat-right{
        overflow: hidden;
    }
    
    .chat-right p{
        float: left;
    }
    .chat-right span{
        float: right;
    }

@import
	url('https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap')
	;
font-family
:
'NanumGothic'
,
sans-serif
;
</style>
</head>

<body>
	<%@include file="../include/header.jsp"%>
	<h2 class="main">FAQ 게시판입니다</h2>
	<div class="container">
		<div class="upDiv .col-xs-6 .col-md-4">
			FAQ <input type="text" class="search" placeholder="키워드를 입력해주세요">
			<button class="btn btn-info" id="searchBtn">검색</button>
			<p style="border: 0">
				찾으시는 답변이 있다면<a id="modalBtn">1:1상담하기</a>를 이용해주세요
			</p>
		</div>
		<div class="middleDiv .col-xs-8 .col-md-6">
			<div class="head">
				<div class="typeDiv .col-md-1">유형</div>
				<div class="questionDiv .col-md-3">질문</div>
			</div>
			<div class="inside"></div>
		</div>
	</div>

	<div class="modal"
		style="display: none; width: 80%; height: 80%; background-color: #FFFFFF; position: absolute; top: 10%; left: 10%; padding: 10px; z-Index: 9999">
		<div class="adviserName">
			<h2>상담원과 대화하기</h2>
		</div>
		<button type="button" class="modalDelBtn btn btn-info"
			id="modalDelBtn">상담 창 닫기</button>
		<div class="chat"></div>
		<textarea class="chat-text" id="chatText"></textarea>
		<button type="button" class="chat-btn btn btn-info" id="sendBtn">전송</button>
	</div>
	<script>
		

		$(document)
				.ready(
						function() {
                            var timeId = null;
							getChat(false);
							$("#sendBtn").click(function() {
								if ($("#chatText").val() != "") {
									$.getJSON("sendText", {
										userId : "test",
										text : $("#chatText").val()
									}, function(result) {
										getChat(true);
										$("#chatText").val("");
									})
								}
							})
							$("#modalBtn").click(function() {
								if ($(".modal").css("display") == 'none') {
									$(".modal").show();
                                    timerId = setInterval(getList(true), 1000);
								} else {
									$(".modal").hide();
								}
							})
                            
                            $("#modalDelBtn").click(function() {
                                $(".modal").hide();
                                if(timerId != null) {
                                    clearInterval(timerId);
                                }
                            })
                            
							getList(false);
							$("#searchBtn").click(function() {
								$(".search").val("");
								getList(true);
							})

							function getList(reset) {
								var str = "";
								if (reset == true) {
									str = ""; //리셋여부 true라면 str초기화
								}
								$
										.getJSON(
												"getList",
												function(list) {
													for (var i = 0; i < list.length; i++) {
														str += "<div class='inside-all'>";
														str += "<div class='inside-type  .col-md-1'><span class='glyphicon glyphicon-question-sign'>"
																+ list[i].type
																+ "</span></div>";
														str += "<div class='inside-question  .col-md-3'><a onclick='modalDisplay("
																+ list[i].fno
																+ ")'>"
																+ list[i].title
																+ "</a></div>";
														str += "<div class='.col-xs-6 .col-md-4'>";
														str += "<p id='" + list[i].fno + "title' style='margin: 0 0 0px;display: none;'><textarea class='text'  readonly>"
																+ list[i].content
																+ "</textarea></p>";
														str += "</div>";
														str += "</div>";
													}
													$(".inside").html(str);
												})

							} //getList 끝
							function getChat(reset) {
								//1:1 문의 기록 호출
								var str = "";
								if (reset == true) {
									str = "";
								}
								$
										.getJSON(
												"getChat",
												{
													userId : "test"
												},
												function(data) {
													if (data == null) {
													} else {
														for (var i = 0; i < data.length; i++) {
															var map = data[i];
															for ( var key in map) {
																if (key == "test") {
																	str += "<div class='chat-right'>";
																	str += "<p>"
																			+ map[key]
																			+ "</p>";
																	str += "<span class='time-right'>11:00</span>";
																	str += "</div>";
																} else {
																	str += "<div class='chat-left'>";
																	str += "<p>"
																			+ map[key]
																			+ "</p>";
																	str += "<span class='time-left'>11:00</span>";
																	str += "</div>";
																}
															}
														}
														$(".chat").html(str);
													}
												})
							}//getChat끝
						});

		function modalDisplay(num) {
			if ($("#" + num + "title").css("display") == "none") {
				$("#" + num + "title").show();
			} else {
				$("#" + num + "title").hide();
			}

		}
	</script>

</body>

</html>
