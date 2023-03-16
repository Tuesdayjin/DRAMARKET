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
	        .content {
            display: flex;
            justify-content: center;
             align-items: center;
            flex-wrap: wrap;
        }
        .player-Bigbox{
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1), 0 1px 3px rgba(0, 0, 0, 0.08);
        	margin-top : 100px;
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
	width : 100%;
	height : auto;
	background-color : #EEEEEE;
	border-bottom-left-radius: 5px;
    border-bottom-right-radius: 5px;
    padding : 10px;
    padding-top : 0px;
	}
	   .predict-card{
display: flex;
  overflow-x: auto;
  border-radius= 10;
    }

    .objImg {
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
				<div class="player-Bigbox">
				<div class="player-box">
					<div id="player"></div>
				</div>
				<div class="timeline-box">
				<div id="timeline"></div>
				</div>
				</div>
				<!--영상현재시간출력<div id="currentTimeDisplay"></div>-->
</div>

<div class="content">
				<!-- 캡쳐버튼 로그인 검증  <c:if test="${!empty mvo}">  
				</c:if>  -->
				<button id="captureImageButton" onclick="openModal()" class="btn">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-camera" viewBox="0 0 16 16">
  <path d="M15 12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V6a1 1 0 0 1 1-1h1.172a3 3 0 0 0 2.12-.879l.83-.828A1 1 0 0 1 6.827 3h2.344a1 1 0 0 1 .707.293l.828.828A3 3 0 0 0 12.828 5H14a1 1 0 0 1 1 1v6zM2 4a2 2 0 0 0-2 2v6a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V6a2 2 0 0 0-2-2h-1.172a2 2 0 0 1-1.414-.586l-.828-.828A2 2 0 0 0 9.172 2H6.828a2 2 0 0 0-1.414.586l-.828.828A2 2 0 0 1 3.172 4H2z"/>
  <path d="M8 11a2.5 2.5 0 1 1 0-5 2.5 2.5 0 0 1 0 5zm0 1a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7zM3 6.5a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0z"/>
</svg>
				</button>
				

				<div id="myModal" class="modal">
				  <div class="modal-content">
	<section class="py-5">
    <div class="container px-5">
        <div class="row gx-5 align-items-center justify-content-center">
            <div class="col-lg-8 col-xl-7 col-xxl-6">
                <div class="my-5 text-xl-start">
                    <form id="fileform" enctype="multipart/form-data" >

						<input type="hidden" name="id" id="id"  value="${mvo.id}"/>
                      <div class="card shadow border-0" style="background-color: #EEEEEE;">
                      
                        <div class="card-header" style="margin-top: 10px;">
                          <input name="title" type="text" class="form-control" placeholder="글 제목" aria-label="Username" aria-describedby="basic-addon1">
                        </div>
                        <div class="card-body p-4">
                          <textarea name="content" class="form-control" placeholder="글 내용" rows="5" aria-label="With textarea"></textarea>
                        </div>
                        <div class="card-footer p-4 pt-0 bg-transparent border-top-0" style="background-color: #EEEEEE;">
						<img id="capturedImage" style="width:100px; height:100px;"/>
						<input type="hidden" id="img_name" name="img_name" value="">
                        </div>
                      </div>
                        <div class="row btnDiv">
                            <button type="button" onclick="register()" class="btn btn-primary"><i class="bi bi-pencil"></i>글쓰기</button>
                        </div> 
                      
                    </form>
                  </div>
                </div>

            </div>
        </div>

    </div>
</section>	
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
						  
						// 현재 재생 시간을 div에 출력
						//$("#currentTimeDisplay").text("Current playback time: " + currentTime);
						

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
					        
					        
					        // 캡쳐버튼 모달창 활성화 
					        document.getElementById("myModal").style.display = "block";
					        
							window.onclick = function(event) {
								  var modal = document.getElementById("myModal");
								  if (event.target == modal) {
								    modal.style.display = "none";
								  }
								}
					        
					}
					
					

	
						function closeModal() {
						  document.getElementById("myModal").style.display = "none";
						}

						window.onclick = function(event) {
						  var modal = document.getElementById("myModal");
						  if (event.target == modal) {
						    modal.style.display = "none";
						  }
						}
						
						
						function register(){
							
						    	var file = base64toFile($('#capturedImage').attr('src'), 'capture.png');  

								var formData=new FormData();
								formData.append("file", file);
							    $.ajax({
								      url: "fileupload.do",
								      type: "POST",
								      data: formData,
								      processData: false,
								      contentType: false,
								      success: function(data) {
								    	 console.log(JSON.stringify(data));
								        $('#img_name').val(data);
								        $('#fileform').attr('method', "post");
								        $('#fileform').attr('action', "writeaddfile.do");
								        $('#fileform').submit();
								      },
								      error : function(){alert("파일 업로드에 실패하였습니다");}
								    }); // $.ajax
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
				
<%for(int i=0; i<nameArr.length; i++) {%>
<div class="predict_content<%=i%> predict-card" style="display:none;">
<%
try {
    if (topDir[i] != null) {
        for(int j=0; j<topDir[i].list().length; j++) {
            // 이미지 출력 코드%>
            <div class="objImg">
      		  	<img src='http://localhost:8081/flask/yolov5/runs/detect/${fileName}/<%=nameArr[i].split("\\.")[0]%>/crops/top/<%=topDir[i].list()[j]%>'/>
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
      		  	<img src='http://localhost:8081/flask/yolov5/runs/detect/${fileName}/<%=nameArr[i].split("\\.")[0]%>/crops/bottom/<%=bottomDir[i].list()[j]%>'/>
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
      		  	<img src='http://localhost:8081/flask/yolov5/runs/detect/${fileName}/<%=nameArr[i].split("\\.")[0]%>/crops/dress/<%=dressDir[i].list()[j]%>'/>
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
      		  	<img src='http://localhost:8081/flask/yolov5/runs/detect/${fileName}/<%=nameArr[i].split("\\.")[0]%>/crops/bag/<%=bagDir[i].list()[j]%>'/>
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
<form method="post" id = "search_form">
	<input id="search_img" name="img_path" value="">
	<input type="submit" id="search_btn">
</form>
<div id="search">

</div>

         </div>
      </div>
<script type="text/javascript">
   $(function() {
      $(".objImg img").click(function() {
       var imgpath = $(this).attr('src');
       imgpath = 'C:/dmkServer/' + imgpath.split('flask/')[1];
       $("#search_img").val(imgpath);
       })
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
					 for (var i = 0; i < 3; i++) {					
						html += '	<img src="' + data['image'][i] + '">';
						html += "	<h2>"+'<a href="' + data['link'][i] + '">'+data['text'][i]+"</a>"+"</h2>";				
					}					
					$('#search').html(html);
              },
              error : function(e) {
                  console.log("ERROR : ", e);
                  alert("fail");
              }
          });

      })
   });
</script> 

			</div>
		</div>
</body>
</html>