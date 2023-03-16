<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="org.json.simple.JSONObject" %>
<%@ page import="org.json.simple.JSONArray" %>
<%@ page import="org.json.simple.parser.JSONParser" %>
<%@ page import="java.io.FileReader" %>
<%@ page import="java.io.File" %>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=\, initial-scale=1.0">
<title>Dramarket</title>

<!-- Bootstrap 및 Bootswatch 스타일시트 파일 -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.6.0/morph/bootstrap.min.css"
	integrity="sha384-8QLqx+yb7DgYaFvzV7Ku8Hq3eIYXPHfgvKfZKH4NoJ+dsSdRfR5aIWlFJTG8xV7+"
	crossorigin="anonymous">
<!-- Bootstrap 및 Bootswatch 자바스크립트 파일 -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
	integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
	crossorigin="anonymous"></script>
<!--bootstrap-->
<link rel="stylesheet" href="${cpath}/resources/css/style.css">
<script type="text/javascript" src="${cpath}/resources/js/dmk.js"></script>
<script src="js/morph/bootstrap.min.js"></script>
<!--google font-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- Bootstrap Icons library -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css"
	rel="stylesheet">

<!--amalia.js-->
<script type="text/javascript"
	src="http://localhost:8081/flask/full/bower_components/jquery/dist/jquery.js"></script>
<script type="text/javascript"
	src="http://localhost:8081/flask/full/bower_components/jquery-ui/jquery-ui.min.js"></script>
<script type="text/javascript"
	src="http://localhost:8081/flask/full/bower_components/raphael/raphael.js"></script>
<link
	href="http://localhost:8081/flask/full/build/css/amalia.js.min.css"
	type="text/css" rel="stylesheet" />
<script src="http://localhost:8081/flask/full/build/js/amalia.js.min.js"
	type="text/javascript"></script>
<script type="text/javascript"
	src="http://localhost:8081/flask/full/build/js/amalia.js-plugin-timeline.min.js"></script>
<script type="text/javascript"
	src="http://localhost:8081/flask/full/build/js/i18n/amalia.js-message-en.js"></script>
	<style>
		.ajs-row .ajs-control-bar {
			display: none !important;
		}
	</style>
</head>
<body>
<%Object ob = new JSONParser().parse(new FileReader("C:\\Users\\SMHRD\\dmkFlask\\pyscene\\result\\" + request.getAttribute("fileName") + "-array.json"));
JSONObject js = (JSONObject) ob;
JSONArray json_name = (JSONArray) js.get("name");
JSONArray json_time = (JSONArray) js.get("time");
String[] nameArr = new String[json_name.size()];
for(int i=0; i<json_name.size(); i++) {
    nameArr[i] = (String) json_name.get(i);
    }
double[] timeArr = new double[json_time.size()];
for(int i=0; i<json_time.size(); i++) {
    timeArr[i] = (double) json_time.get(i);
    }

String directory = "C:\\Users\\SMHRD\\dmkFlask\\pyscene\\" + request.getAttribute("fileName");
File dir = new File(directory);
%>
	<button onclick="topFunction()" id="myBtn" class="btn btn-info to-top"
		title="Go to top">TOP</button>
	
	<div
		style="background-color: #393E46; position: sticky; top: 0; z-index: 9999;">
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark"
			style="background-color: #393E46;">
			<div class="container-fluid" style="width: 70%;">
				<a class="navbar-brand" href="Main.do" style="color: #FFD369;">드라마켓</a>
				<div class="d-flex justify-content-end">
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarColor02"
						aria-controls="navbarColor02" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarColor02">

						<ul class="navbar-nav me-auto">
							<li class="nav-item"><a class="nav-link " href="Main.do">상품검색
									<span class="visually-hidden">(current)</span>
							</a></li>

							<c:if test="${!empty mvo}">
								<li class="nav-item"><a class="nav-link" href="#">마이페이지</a>
								</li>
								<li class="nav-item"><a class="nav-link" href="logout.do">로그아웃</a>
								</li>
							</c:if>
							<c:if test="${empty mvo}">
								<li class="nav-item"><a class="nav-link" href="login.do">로그인</a>
								</li>
							</c:if>
						</ul>
					</div>
				</div>
			</div>
		</nav>
	</div>

	<div class="container">
		<div class="header">
		</div>
		<div class="content">
				<div class="card player-card">
					<div id="player"></div>
				</div>
				<div class="card">
				<div id="timeline"></div>
				</div>
				<div id="currentTimeDisplay"></div>
				<button id="captureImageButton">캡쳐</button>
				<img id="capturedImage" style="width:100px; height:100px;"/>
				<script>
				var player = null;
					$(function() {
					     
						$("#player")
								.mediaPlayer(
										{
											autoplay : false,
											src : "http://localhost:8081/flask/upload/${fileName}.mp4",
											 callbacks: {
									                onReady: 'onReady'
									            },
											controlBar : {
												sticky : true
											},

											plugins : {
												dataServices : [

												'http://localhost:8081/flask/pyscene/result/${fileName}.json'

												],
												list : [ {
													'className' : 'fr.ina.amalia.player.plugins.TimelinePlugin',
													'container' : '#timeline',
													'parameters' : {
														timeaxis : false,
														listOfLines : [
														{
															title : '드라마 영상에 나오고 있는 상품',
															type : 'image',
															metadataId : '${fileName}',
															pointNav : true,
															showToolsbar : false
															
														} ]
													}
												} ]
											}
										});
					
					
						// Add a click event listener to the capture image button
						  $('#captureImageButton').click(captureImage);

					});
					//영상 재생 시간 받기
					
			    
					function onReady() {
				        player = $('#player').data('fr.ina.amalia.player').getPlayer();
				        // Set event listener on time change.
				        $('#player').on('fr.ina.amalia.player.PlayerEventType.TIME_CHANGE', onTimeChange);
				    }
					
					function playVideo() {
				        if (player !== null) {
				            player.play();
				        }
				    }
					function onTimeChange(event, data) {
						  var currentTime = player.getCurrentTime();

						  <%for(int i=0; i<nameArr.length; i++) {%>
						  
						  var start_time<%=i%> = $('.start_time<%=i%>').val();
						  var end_time<%=i%> = $('.end_time<%=i%>').val();
						  
						  if (currentTime >= start_time<%=i%> && currentTime < end_time<%=i%>) {
							  $('.predict_content<%=i%>').removeAttr('style');
						  }else {
							  $('.predict_content<%=i%>').attr('style','display:none');
						  }
						  <%}%>
						  
						  console.log('Current playback time:', currentTime);
						  
						// 현재 재생 시간을 DIV에 출력합니다.
						  $("#currentTimeDisplay").text("Current playback time: " + currentTime);
						

						}
					function captureImage() {
						// Get the video element from the player
						  var videoElement = $('video', '#player')[0];
						  var canvas = document.createElement('canvas');
						  canvas.width = videoElement.videoWidth;
						  canvas.height = videoElement.videoHeight;

						  // Draw the current video frame onto the canvas
						  var ctx = canvas.getContext('2d');
						  ctx.drawImage(videoElement, 0, 0, canvas.width, canvas.height);

						  // Get the current image as a data URL
						  var imageDataUrl = canvas.toDataURL('image/png');

						  console.log(imageDataUrl);
					        // Set the captured image as the src of the img element
					        $('#capturedImage').attr('src', imageDataUrl);
					}
				</script>
<%for(int i=0; i<nameArr.length; i++) {%>
<div class="predict_content<%=i%>" style="display:none;">
<br>top<br>
<img src='http://localhost:8081/flask/yolov5/runs/detect/${fileName}/<%=nameArr[i].split("\\.")[0]%>/crops/top/<%=nameArr[i]%>'/>
<br>bottom<br>
<img src='http://localhost:8081/flask/yolov5/runs/detect/${fileName}/<%=nameArr[i].split("\\.")[0]%>/crops/bottom/<%=nameArr[i]%>'/>
<br>dress<br>
<img src='http://localhost:8081/flask/yolov5/runs/detect/${fileName}/<%=nameArr[i].split("\\.")[0]%>/crops/dress/<%=nameArr[i]%>'/>
<br>bag<br>
<img src='http://localhost:8081/flask/yolov5/runs/detect/${fileName}/<%=nameArr[i].split("\\.")[0]%>/crops/bag/<%=nameArr[i]%>'/>
<br>time<br>
<input class="start_time<%=i%>" value="<%=timeArr[i]%>">
<input class="end_time<%=i%>" value="<%=timeArr[i+1]%>">
<br>
</div>
<%}%>
			</div>
		</div>
</body>
</html>