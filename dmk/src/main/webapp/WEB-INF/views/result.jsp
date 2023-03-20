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
    <c:set var="cpath" value="${pageContext.request.contextPath}"/>
        
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=\, initial-scale=1.0">
    <title>Dramarket</title>
<!-- Bootstrap 및 Bootswatch 스타일시트 파일 -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.6.0/morph/bootstrap.min.css" integrity="sha384-8QLqx+yb7DgYaFvzV7Ku8Hq3eIYXPHfgvKfZKH4NoJ+dsSdRfR5aIWlFJTG8xV7+" crossorigin="anonymous">
<!-- Bootstrap 및 Bootswatch 자바스크립트 파일 -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<!--bootstrap-->
    <link rel="stylesheet" href="${cpath}/resources/css/style.css">
    <script type="text/javascript" src="${cpath}/resources/js/dmk.js"></script>
    <script src="js/morph/bootstrap.min.js"></script>

<!--google font-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
 <!-- Bootstrap Icons library -->
 <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css" rel="stylesheet">
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
#captureImageButton {
  position: fixed;
  bottom: 20px;
  right: 120px;
  z-index: 999;
  background-color : #FFD369;
  color : #FFFFFF;
  border-radius: 50px;
  padding: 15px;
}
#captureImageButton svg {
  width: 25px;
  height: 25px;
  stroke-width: 5px; /* 아이콘의 선 굵기를 조절합니다. */
}
	        .content {
            display: flex;
            justify-content: center;
             align-items: center;
            flex-wrap: wrap;
        }
        .player-Bigbox{
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1), 0 1px 3px rgba(0, 0, 0, 0.08);
        	margin-top : 40px;
        	border-radius: 5px;
        		width : 80%;
	height : auto; 	
        }
	.player-box{
width : 100%;
	height : auto;
	background-color : #EEEEEE;
	border-top-left-radius: 5px;
    border-top-right-radius: 5px;
    padding : 10px;
    padding-bottom : 0px;
	}
	.timeline-box{
	position: relative;
	width : 100%;
	height : auto;
	background-color : #EEEEEE;
	border-bottom-left-radius: 5px;
    border-bottom-right-radius: 5px;
    padding : 10px;
    padding-top : 0px;
	}
	
	#timeline{
	position: relative;
	}
	.cover {
  position: absolute;
  top: 0;
  left: 0;
  width: 98.1%;
  height: 39px;
  background-color : #3f3f3f;
  margin-top:103px;
  margin-left :10px;
}

.predict-container{
margin-bottom:50px;
}
 .predict-Bigbox{
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1), 0 1px 3px rgba(0, 0, 0, 0.08);
        	margin-top : 50px;
        		width : 80%;
	height : auto; 	
	border-radius: 5px;
        }
	.predictTitle-box{
width : 100%;
	height : auto;
	}	
	.predict-title h3{
	color:#393E46;
	margin-left:40px;
	margin-top:40px;
	}
	
	.predict-title p{
	color : rgb(57, 62, 70,0.5);
	margin-left:40px;
	}
	.predictObj-box{
	width : 100%;
	height : auto;
	}

	   .predict-card{
	   position: relative;
	   margin-top : 20px;
	   width : 100%;
display: flex;
  overflow-x: auto;
  border-radius= 10;
    }

.search-objImg{
display: inline-block;
vertical-align: top; /* 이미지를 수직으로 맞춤 */
margin-left:40px;
      	margin-bottom:40px;  
      flex: 0 0 auto;
      padding: 20px;
      width: 200px;
      height: auto;
}
.search-objImg img{
display: block;
      width: 100%;
      height: auto;
      border-radius: 10px;
      box-shadow: 5px 5px 10px rgba(55, 94, 148, 0.2), -5px -5px 10px rgba(255, 255, 255, 0.4);
}

        .objImg {
      	margin-left:40px;
      	margin-bottom:40px;  
      flex: 0 0 auto;
      padding: 20px;
      width: 200px;
      height: auto;
    }
  
    .objImg img {
      display: block;
      width: 100%;
      height: auto;
      border-radius: 10px;
      box-shadow: 5px 5px 10px rgba(55, 94, 148, 0.2), -5px -5px 10px rgba(255, 255, 255, 0.4);
    }
    
    
    
      .modal {
  display: none;
  position: fixed;
  z-index: 9999;
  left: 0;
  top: 0;
  overflow: hidden;
}

.modal-content {
background-color: rgba(238, 238, 238,0.6);
 box-shadow: 5px 5px 10px rgba(55, 94, 148, 0.2), -5px -5px 10px rgba(255, 255, 255, 0.4);
  margin: 15% auto;
  padding: 20px;
  width: 80%;
}

.close {
  color: #aaaaaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}
.predict-row{
width : 100%;
}


/*로더*/
.wrapper {
  width: 200px;
  height: 60px;
  position: relative;
  z-index: 1;
   margin-left:405px;
   margin-top : 30px;
   margin-bottom : 30px;
}

.circle {
  width: 20px;
  height: 20px;
  position: absolute;
  border-radius: 50%;
  background-color: #FFD369;
  left: 15%;
  transform-origin: 50%;
  animation: circle7124 .5s alternate infinite ease;
}

@keyframes circle7124 {
  0% {
    top: 60px;
    height: 5px;
    border-radius: 50px 50px 25px 25px;
    transform: scaleX(1.7);
  }

  40% {
    height: 20px;
    border-radius: 50%;
    transform: scaleX(1);
  }

  100% {
    top: 0%;
  }
}

.circle:nth-child(2) {
  left: 45%;
  animation-delay: .2s;
}

.circle:nth-child(3) {
  left: auto;
  right: 15%;
  animation-delay: .3s;
}

.circle2 {
  width: 20px;
  height: 4px;
  border-radius: 50%;
  background-color: rgb(57, 62, 70,0.9);
  position: absolute;
  top: 62px;
  transform-origin: 50%;
  z-index: -1;
  left: 15%;
  filter: blur(1px);
  animation: circle2046 .5s alternate infinite ease;
}

@keyframes circle2046 {
  0% {
    transform: scaleX(1.5);
  }

  40% {
    transform: scaleX(1);
    opacity: .7;
  }

  100% {
    transform: scaleX(.2);
    opacity: .4;
  }
}

.circle2:nth-child(4) {
  left: 45%;
  animation-delay: .2s
}

.circle2:nth-child(5) {
  left: auto;
  right: 15%;
  animation-delay: .3s;
}
.tooltip.my-tooltip {
  background-color: #ffc107;
  color: #000;
  border-radius: 0;
}

.tooltip.my-tooltip .tooltip-arrow::before {
  border-bottom-color: #ffc107 !important;
}
 </style>

</head>
<body>
<%Object ob = new JSONParser().parse(new FileReader("C:\\dmkServer\\pyscene\\result\\" + request.getAttribute("fileName") + "-array.json"));
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
File[] topDir = new File[nameArr.length];
for(int i=0; i<nameArr.length; i++) {
	String topPath = "C:\\dmkServer\\yolov5\\runs\\detect\\" + request.getAttribute("fileName") + "\\" + nameArr[i].split("\\.")[0] + "\\crops\\top";
    topDir[i] = new File(topPath);
}
File[] bottomDir = new File[nameArr.length];
for(int i=0; i<nameArr.length; i++) {
	String bottomPath = "C:\\dmkServer\\yolov5\\runs\\detect\\" + request.getAttribute("fileName") + "\\" + nameArr[i].split("\\.")[0] + "\\crops\\bottom";
    bottomDir[i] = new File(bottomPath);
}
File[] dressDir = new File[nameArr.length];
for(int i=0; i<nameArr.length; i++) {
	String dressPath = "C:\\dmkServer\\yolov5\\runs\\detect\\" + request.getAttribute("fileName") + "\\" + nameArr[i].split("\\.")[0] + "\\crops\\dress";
    dressDir[i] = new File(dressPath);
}
File[] bagDir = new File[nameArr.length];
for(int i=0; i<nameArr.length; i++) {
	String bagPath = "C:\\dmkServer\\yolov5\\runs\\detect\\" + request.getAttribute("fileName") + "\\" + nameArr[i].split("\\.")[0] + "\\crops\\bag";
    bagDir[i] = new File(bagPath);
}%>

	<button onclick="topFunction()" id="myBtn" class="btn btn-info to-top"
		title="Go to top">TOP</button>
	<div style="background-color: #393E46; position: sticky; top: 0; z-index: 9999;">
		<nav class="navbar navbar-expand-lg">
			<div class="container-fluid" style="width: 70%;">
				<a class="navbar-brand" href="Main.do" style="color: #FFD369;">
				<span>드라마켓</span>
				<img src="${cpath}/resources/img/dmkimg/dmksim.png"width="20" height="24" style="margin-left:3px; margin-top:4px;" class="d-inline-block align-text-top">
				</a>
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
						<!-- 캡쳐버튼 로그인 검증  <c:if test="${!empty mvo}">  
				</c:if>  -->
				
<form id="captureForm" action="imgPredict.do" method="post" enctype="multipart/form-data">		
<input type="hidden" name="captureFile" id="captureFile" value="">		
<button id="captureImageButton" class="btn" type="button" title="재생 중인 장면을 추가 분석!"  data-bs-toggle="tooltip" >
				<svg xmlns="http://www.w3.org/2000/svg" fill="currentColor" class="bi bi-camera" viewBox="0 0 16 16">
  <path d="M15 12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V6a1 1 0 0 1 1-1h1.172a3 3 0 0 0 2.12-.879l.83-.828A1 1 0 0 1 6.827 3h2.344a1 1 0 0 1 .707.293l.828.828A3 3 0 0 0 12.828 5H14a1 1 0 0 1 1 1v6zM2 4a2 2 0 0 0-2 2v6a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V6a2 2 0 0 0-2-2h-1.172a2 2 0 0 1-1.414-.586l-.828-.828A2 2 0 0 0 9.172 2H6.828a2 2 0 0 0-1.414.586l-.828.828A2 2 0 0 1 3.172 4H2z"/>
  <path d="M8 11a2.5 2.5 0 1 1 0-5 2.5 2.5 0 0 1 0 5zm0 1a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7zM3 6.5a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0z"/>
</svg>
</button>
</form>
		<div class="content">
				<div class="player-Bigbox">
				<div class="player-box">
					<div id="player"></div>
				</div>
				<div class="timeline-box">
				<div id="timeline"></div>
				<div class="cover"></div>
				</div>
				</div>
				<!--영상현재시간출력<div id="currentTimeDisplay"></div>-->
</div>
</div>
			

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
															title : 'AI가 분석한 상품이 있는 장면입니다',
															type : 'image',
															metadataId : '${fileName}',
															pointNav : true,
															showToolsbar : false
															
														} ]
													}
												} ]
											}
										});
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
						  
						// 현재 재생 시간을 div에 출력
						//$("#currentTimeDisplay").text("Current playback time: " + currentTime);
						

						}
					//캡쳐버튼 클릭
					document.addEventListener('DOMContentLoaded', function() {
						  $('#captureImageButton').click(captureImage);
						});
					function captureImage() {
						//비디오 플레이어를 불러오기
						  var videoElement = $('video', '#player')[0];
						  var canvas = document.createElement('canvas');
						  canvas.width = videoElement.videoWidth;
						  canvas.height = videoElement.videoHeight;

						  //비디오 위에 공간 잡기
						  var ctx = canvas.getContext('2d');
						  ctx.drawImage(videoElement, 0, 0, canvas.width, canvas.height);

						  //지금 이미지의 주소 잡기
						  var imageDataUrl = canvas.toDataURL('image/png');
						  console.log('캡쳐이미지 : '+ imageDataUrl);
						  var file = base64toFile(imageDataUrl,'jangho.png');
						  
						  
						  
						  
						  
						  var formData=new FormData();
						  formData.append("file",file );
						    $.ajax({
							      url: "captureUpload.do",
							      type: "POST",
							      data: formData,
							      processData: false,
							      contentType: false,
							      success: function(data) {
							    	 console.log(JSON.stringify(data));
							    	//$('#imgdiv').append('<img src="http://localhost:8081/boardimg/'+ data +'" id="Sample">');
							        $('#captureFile').val(data);
							        $('#captureForm').submit();
							      },
							      error : function(){alert("파일 업로드에 실패하였습니다");}
							    });
						  
						  
						  
						  
						  
					}
	      
	               // base64 이미지 -> File 객체로 변환하는 함수
	                  function base64toFile(base_data, filename) {
	                      var arr = base_data.split(','),
	                          mime = arr[0].match(/:(.*?);/)[1],
	                          bstr = atob(arr[1]),
	                          n = bstr.length,
	                          u8arr = new Uint8Array(n);
	                      while(n--){
	                          u8arr[n] = bstr.charCodeAt(n);
	                      }
	                      return new File([u8arr], filename, {type:mime});
	                  }
					
					
				</script>
<!--인식한 객체 출력-->
<div class="container predict-container">
		<div class="content">
				<div class="predict-Bigbox">
				<div class="predictTilte-box">
					<div class="predict-title">
<h3>재생 중인 장면 속 상품입니다</h3>
<p>상세정보를 보려면 이미지를 클릭하세요</p>
</div>

				</div>
				<div class="predictObj-box">
				<%for(int i=0; i<nameArr.length; i++) {%>
<div class="predict_content<%=i%> predict-card" style="display:none;">
<%
try {
    if (topDir[i] != null) {
        for(int j=0; j<topDir[i].list().length; j++) {
            // 이미지 출력 코드%>
            <div class="objImg">
                  <a href="javascript:void(0)"><img src='http://localhost:8081/flask/yolov5/runs/detect/${fileName}/<%=nameArr[i].split("\\.")[0]%>/crops/top/<%=topDir[i].list()[j]%>'/></a>
           </div> 
        <%}
    } else {
        // topDir[i] 객체가 null인 경우, 빈 이미지를 출력
        // 또는 예외 처리를 위한 예외 발생
        throw new Exception("topDir[i] 객체가 null입니다.");
    }
} catch (Exception e) {
    // 예외 처리 코드
    // 예외 메시지 출력, 로그 기록 등
}

try {
    if (bottomDir[i] != null) {
        for(int j=0; j<bottomDir[i].list().length; j++) {
            // 이미지 출력 코드%>
            <div class="objImg">
                  <a href="javascript:void(0)"><img src='http://localhost:8081/flask/yolov5/runs/detect/${fileName}/<%=nameArr[i].split("\\.")[0]%>/crops/bottom/<%=bottomDir[i].list()[j]%>'/></a>
           </div> 
        <%}
    } else {
        // topDir[i] 객체가 null인 경우, 빈 이미지를 출력
        // 또는 예외 처리를 위한 예외 발생
        throw new Exception("bottomDir[i] 객체가 null입니다.");
    }
} catch (Exception e) {
    // 예외 처리 코드
    // 예외 메시지 출력, 로그 기록 등
}

try {
    if (dressDir[i] != null) {
        for(int j=0; j<dressDir[i].list().length; j++) {
            // 이미지 출력 코드%>
            <div class="objImg">
                  <a href="javascript:void(0)"><img src='http://localhost:8081/flask/yolov5/runs/detect/${fileName}/<%=nameArr[i].split("\\.")[0]%>/crops/dress/<%=dressDir[i].list()[j]%>'/></a>
           </div> 
        <%}
    } else {
        // topDir[i] 객체가 null인 경우, 빈 이미지를 출력
        // 또는 예외 처리를 위한 예외 발생
        throw new Exception("dressDir[i] 객체가 null입니다.");
    }
} catch (Exception e) {
    // 예외 처리 코드
    // 예외 메시지 출력, 로그 기록 등
}

try {
    if (bagDir[i] != null) {
        for(int j=0; j<bagDir[i].list().length; j++) {
            // 이미지 출력 코드%>
            <div class="objImg">
                 <a href="javascript:void(0)"><img src='http://localhost:8081/flask/yolov5/runs/detect/${fileName}/<%=nameArr[i].split("\\.")[0]%>/crops/bag/<%=bagDir[i].list()[j]%>'/></a>
           </div> 
        <%}
    } else {
        // topDir[i] 객체가 null인 경우, 빈 이미지를 출력
        // 또는 예외 처리를 위한 예외 발생
        throw new Exception("bagDir[i] 객체가 null입니다.");
    }
} catch (Exception e) {
    // 예외 처리 코드
    // 예외 메시지 출력, 로그 기록 등
}%>
 
<input type="hidden" class="start_time<%=i%>" value="<%=timeArr[i]%>">
<input type="hidden" class="end_time<%=i%>" value="<%=timeArr[i+1]%>">
</div>
<%}%>
         </div>
      </div><!-- end predict-Bigbox -->
      

<!-- 객체 이미지 검색 -->
<form method="post" id = "search_form">
	<input type="hidden" id="search_img" name="img_path" value="">
	<input type="submit" id="search_btn" style="display:none;">
</form>
<div class="predict-Bigbox">
    <div class="predictTilte-box">
      <div class="predict-title">
<h3 class="search-title" style="display:none;">선택한 상품의 정보입니다</h3>
<p class="search-subTitle"  style="display:none;">이미지를 클릭하면 판매사이트로 이동합니다</p>
</div>
    </div>
    <div class="predictObg-box">
<div class="search-card">
  <div id="search">
  <div class="wrapper"   style="display:none;">
    <div class="circle"></div>
    <div class="circle"></div>
    <div class="circle"></div>
    <div class="circle2"></div>
    <div class="circle2"></div>
    <div class="circle2"></div>
</div>


  </div>
       </div> 
</div>
     </div>
  </div>
</div><!--end content-->
</div><!--end predict-container-->
 <script type="text/javascript">
 $(function() {
     $(".objImg img").click(function() {
      var imgpath = $(this).attr('src');
      imgpath = 'C:/dmkServer/' + imgpath.split('flask/')[1];
      $("#search_img").val(imgpath);
      // 검색 버튼 클릭 이벤트 강제로 실행
      $("#search_btn").trigger('click');
      // 로딩 화면 보이기
      $(".wrapper").show();
     });   
 });

  $(function() {
     $("#search_btn").on("click", function(event) {
         event.preventDefault();
         var form = $('#search_form')[0];
         var data = new FormData(form);

         $.ajax({
             url : "http://127.0.0.1:5001/seek",
             async : true,
             type : "POST",
             data: data,
             processData : false,
             contentType : false,
             cache : false,
             timeout : 600000,
             success : function(data) {
                 console.log(data)                  
                 var html = "";
                 for (var i = 0; i < 4; i++) {  
                     html += '<div class="search-objImg"><a href="' + data['link'][i] + '" target="_blank"><img src="' + data['image'][i] + '"></a></div>';
                 }
                 $(".search-title").show();
                 $(".search-subTitle").show();
                 $('#search').html(html);
             },
             error : function(e) {
                 console.log("ERROR : ", e);
                 alert("fail");
             },
             complete : function() {
                 // 로딩 화면 숨기기
                 $(".wrapper").hide();
             }
         });

     })
  });
  
  $(function() {
      $(".content").click(function() {
           $(".search-objImg").hide();
      });
   });
  
  
//캡쳐버튼의 툴팁활성화
 var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'));
  var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
    return new bootstrap.Tooltip(tooltipTriggerEl);
  });
</script>
 

				</div>
				</div>
<!-- Footer-->
<footer class="bg-dark py-4 mt-auto" style="width:100%;">
<div class="container px-5">
    <div class="row align-items-center justify-content-between flex-column flex-sm-row">
        <div class="col-auto"><div class="small m-0 text-white">Copyright &copy; DRAMARKET 2023</div></div>
        <div class="col-auto">
            <a class="link-light small" href="#!">Privacy</a>
            <span class="text-white mx-1">&middot;</span>
            <a class="link-light small" href="#!">Terms</a>
            <span class="text-white mx-1">&middot;</span>
            <a class="link-light small" href="#!">Contact</a>
        </div>
    </div>
</div>
</footer>
</body>
</html>