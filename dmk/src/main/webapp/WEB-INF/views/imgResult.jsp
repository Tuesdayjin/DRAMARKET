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
.container {
  display: flex;
  justify-content: center; /* 가운데 정렬 */
}

.content {
  max-width: 80%; /* 최대 너비 지정 */
  margin: 0 auto; /* 가운데 정렬 */
}

.capture-Bigbox {
  display: flex;
  justify-content: center;
  align-items: center;
  width: 100%;
  background-color : #EEEEEE;
  padding : 10px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1), 0 1px 3px rgba(0, 0, 0, 0.08);
        	margin-top : 40px;
        	border-radius: 5px;
}

.capture-Bigbox img {
  max-width: 100%; /* 최대 너비 지정 */
  max-height: 100%; /* 최대 높이 지정 */
  object-fit: contain; /* 비율에 맞게 축소하여 보이도록 설정 */
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

 </style>

</head>
<body>
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
		<div class="content">
				<div class="capture-Bigbox">
				<img src="${imageDataUrl}">
				</div>

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