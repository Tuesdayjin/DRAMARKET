<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Dramarket</title>
<link rel="stylesheet" href="${cpath}/resources/css/style.css">
<link rel="stylesheet" href="${cpath}/resources/css/font.css">
<script type="text/javascript" src="${cpath}/resources/js/dmk.js"></script>
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
   <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

<link rel="stylesheet" href="bootstrap.css">
<script src="js/morph/bootstrap.min.js"></script>
<!--google font-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
<style>

.titleborderbox{
padding-top: 10px;
padding-bottom: 10px;
padding-left: 20px;
padding-right: 20px;
border : solid 1px;
 border-color :rgba(255,255,255,0.5);
display:inline-block;
}
.introTitle p{
margin-top : 15px;
color : #FFFFFF;
font-size: 20px;
}
.shopping{
font-size : 50px;
font-weight : 700;
color : #FFD369;
}
.inthe{
font-size : 40px;
color : #FFD369;
}
.scene{
font-size : 50px;
font-weight : 700;
color : #FFD369;
}
      video {
       position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        object-fit: cover;
        z-index: 0;
      }
  .headervideo-box {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(57, 62, 70, 0.5);
  z-index: 10;
}      
/*업로드 중의 모달*/
.modal-body {
height: 300px;
  display: flex;
  justify-content: center;
  align-items: center;
}

.loader-title {
  position: absolute;
  top: 10%;
}

.loader-subtitle {
  position: absolute;
  top: 30%;
}
.loader-title h4{
color : #222831;
}
.loader-subtitle h5{
color : #222831;
}

.loadercontainer {
  position: absolute;
  top: 70%;
  left: 50%;
  border-radius: 50%;
  height: 96px;
  width: 96px;
  animation: rotate_3922 1.2s linear infinite;
background-color: #FFD369;
background-image: linear-gradient(#FFD369, #FEB57F, #E48E8E);

}

.loadercontainer span {
  position: absolute;
  border-radius: 50%;
  height: 100%;
  width: 100%;
background-color: #FFD369;
background-image: linear-gradient(#FFD369, #FEB57F, #E48E8E);

}

.loadercontainer span:nth-of-type(1) {
  filter: blur(5px);
}

.loadercontainer span:nth-of-type(2) {
  filter: blur(10px);
}

.loadercontainer span:nth-of-type(3) {
  filter: blur(25px);
}

.loadercontainer span:nth-of-type(4) {
  filter: blur(50px);
}

.loadercontainer::after {
  content: "";
  position: absolute;
  top: 10px;
  left: 10px;
  right: 10px;
  bottom: 10px;
  background-color: #fff;
  border: solid 5px #ffffff;
  border-radius: 50%;
}

@keyframes rotate_3922 {
  from {
    transform: translate(-50%, -50%) rotate(0deg);
  }

  to {
    transform: translate(-50%, -50%) rotate(360deg);
  }
}




/* 노말라이즈 */
body, ul, li, h1, h2, h3, h4, h5 {
    margin:0;
    padding:0;
    list-style:none;
}

a {
    color:inherit;
    text-decoration:none;
}

/* 커스텀 */

/* 슬라이더 1 시작 */
.slider-1 {
    margin: auto;
    height:550px;
    width: 700px;
    position:relative;
}

/* 슬라이더 1 - 페이지 버튼 */
.slider-1 > .page-btns {
    text-align:center;
    position:relative;
    margin-top: 360px;
    bottom:20px;
    left: 20px;
    width:100%;
}

.slider-1 > .page-btns > div {
    margin: 3px;
    width:10px;
    height:10px;
    background-color:rgba(255,255,255,.5);
    border-radius:100px;
    display:inline-block;
    cursor:pointer;
}

.slider-1 > .page-btns > div.active {
    background-color:rgba(255,255,255,1);
}

/* 슬라이더 1 - 슬라이드 */

.slider-1 > .slides > div {
    position:absolute;
    top:0;
    left:0;
    right:0;
    bottom:0;
    opacity:0;
    transition: opacity 0.3s;
}

.slider-1 > .slides > div.active {
    opacity:1;
}

/* 슬라이더 좌우 버튼 */
.slider-1 > .side-btns > div {
    position:absolute;
    top: -90px;
    left:0;
    width:25%;
    height:100%;
    cursor:pointer;
}
.slider-1 > .side-btns > div:last-child {
    left:auto;
    right:0;
}
.slider-1 >.side-btns > div > span {
    position:absolute;
    top:50%;
    left:20px;
    transform:translatey(-50%);
    opacity:0.5;
    padding:1px 13px;
    border-radius:50px;
    font-size:25px;
}
.slider-1 >.side-btns > div:last-child > span {
    left:auto;
    right:20px;
}


@font-face {
    font-family: 'Cafe24Danjunghae';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_twelve@1.1/Cafe24Danjunghae.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

.cardbtn:hover {
      background-color:#FAC95E;
      color:#FFFFFF !important;
      transition: 0.5s;
  }

.enjoyhover{
      background-color:#FAC95E;
}
.show-hover{
      background-color:#FAC95E;
  display: none;
}
.enjoyhover:hover .show-hover{
      background-color:#FAC95E;
  display: block;
}
.enjoyhover:hover .hidden-hover{
      background-color:#FAC95E;
  display: none;
}

  .image-box {
    width:450px;
    height:310px;
    overflow:hidden;
    margin:0 auto;
}

.image-thumbnail {
    width:100%;
    height:100%;
    object-fit:cover;
}


</style>
<!--font-family: 'NanumSquare', sans-serif-->
</head>
<body>
	<button onclick="topFunction()" id="myBtn" class="btn btn-info to-top"
		title="Go to top">TOP</button>

	<div style="background-color: #393E46; position: sticky; top: 0; z-index: 9999;">
		<nav class="navbar navbar-expand-lg">
			<div class="container-fluid" style="width: 70%;">
				<a class="navbar-brand" href="Main.do" style="color: #FFD369;">
                  <span  style="font-size:23px; font-family: 'Cafe24Danjunghae';">DRAMARKET</span>
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
							<li class="nav-item"><span class="visually-hidden">(current)</span>
								</a></li>
							<li class="nav-item"><a class="nav-link" data-href="board" style="font-size:15px; font-family: 'GmarketSans'; font-weight: 300;">Board</a>
							</li>
							<c:if test="${!empty mvo}">
								<li class="nav-item"><a class="nav-link" data-href="mypage" style="font-size:15px; font-family: 'GmarketSans'; font-weight: 300;">Mypage</a>
								</li>
								<li class="nav-item"><a class="nav-link" data-href="logout" style="font-size:15px; font-family: 'GmarketSans'; font-weight: 300;">Logout</a>
								</li>
							</c:if>
							<c:if test="${empty mvo}">
								<li class="nav-item">
								<a class="nav-link" data-href="login" style="font-size:15px; font-family: 'GmarketSans'; font-weight: 300;">Login</a></li>
							</c:if>
						</ul>
					</div>
				</div>
			</div>
		</nav>
	</div>
	<!-- Header-->
	<header class="py-5 dmkHeader" style=" height: 100vh;">
<div class="headervideo-box">
<div class="grabox" style="background: linear-gradient(to bottom, #393E46, rgba(57, 62, 70, 0)); height: 300px; width: 100%; text-align : center; display: inline-block;">
<div class="introTitle" style="margin:18%;">
<div class="titleborderbox" style="margin-top: -120px;" border="2px">
<div style="margin-left: 70px;margin-right: 70px;"><span class="shopping">Shopping </span><span class="inthe" style="font-size:40px; font-family: 'GmarketSans'; font-weight: 300;">in the </span>
<span class="scene">Scene</span></div>
</div>
<p style="font-size:20px; font-family: 'NanumSquare'; font-weight:300;">영상 속 그 제품, 스쳐가지 마세요</p>
</div>
</div>
<button class="scrollbtn" onclick="scrollToContent()">
    <div class="scroll"></div>
</button>
</div>
<video
  playsinline="playsinline"
  autoplay="autoplay"
  muted="muted"
  loop="loop">
  <source src="${cpath}/resources/img/dmkimg/mainheader.mp4" type="video/mp4" />
</video></div>

		<div id="mainContent"></div>
	</header>
	<div>
		<ul class="nav justify-content-center selectNavBar">
			<li class="nav-item selectNavTab"><a class="nav-link selectNav"
				data-target="#howto" aria-current="page" href="#">How to</a></li>
			<li class="nav-item selectNavTab"><a class="nav-link selectNav"
				data-target="#uploadLink" href="#">Enter Link</a></li>
			<li class="nav-item selectNavTab"><a class="nav-link selectNav"
				data-target="#uploadFile" href="#">Upload Video</a>
		</ul>
	</div>
	
	<div class="py-5">
		<div class="container px-5 my-5">
			<div class="row gx-5 justify-content-center">
				<div class="col-lg-10 col-xl-7">
					<div class="text-center tab-content">
						<div id="howto" style="display: flex; justify-content: center; align-items: center;">
							<div class="howtoarea" style="display: inline-block; height: auto; background-color: #FFFFFF;">
								<span style="color: #F9CD5A; font-size: 33px; font-family: 'NanumSquare';">about</span><br>
								<span style="color: #F9CD5A; font-size: 44px; font-family: 'Cafe24Danjunghae';">DRAMARKET</span><br>
								<br> <br>
								<span style="font-size: 16px; font-family: 'NanumSquare';">
									드라마켓은 패션 데이터에 특화 학습된 딥러닝 모델을 활용하여 </span><br> 
								<span style="font-size: 16px; font-family: 'NanumSquare';">
									영상속 상품을 인식하고 해당 제품을 검색해옵니다. </span><br><br> 
								<span style="font-size: 16px; font-family: 'NanumSquare';">
									드라마켓에서 텍스트 검색에서 벗어나 영상 검색을 경험해보세요 :) </span><br><br> <br><br><br>
							
								 <div class="slider-1">
							        <div class="slides"  style="display: inline-block; width: auto;" >
							            <div class="videoslide active" style="display: inline-block; height: auto;">
							                <video id="videoplay1" src="http://localhost:8081/front/nomalafter.mp4" muted autoplay loop style="width: 700px; height: auto; display: block; margin: 0 auto;"></video>
							            </div>
							            <div class="videoslide" style="display: inline-block; height: auto;" >
							                <video id="videoplay2" src="http://localhost:8081/front/ant.mp4" muted autoplay loop style="width: 700px; height: auto; display: block; margin: 0 auto;"></video>
							            </div>
							            <div class="videoslide" style="display: inline-block; height: auto;" >
							                <video id="videoplay3" src="http://localhost:8081/front/nomalafter.mp4" muted autoplay loop style="width: 700px; height: auto; display: block; margin: 0 auto;"></video>
							            </div>
							        </div>
							        <div class="page-btns">
							            <div ></div>
							            <div></div>
							            <div class="active"></div>
							        </div>
							        <div class="side-btns">
							            <div>
							                <span style="left: -65px; display:flex;
							                align-items:center;"><svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="0 0 24 24" style="transform: rotate(-90deg);  "><path class="videobtn" style="fill:rgb(190,190,190);"  d="M12 0c-6.627 0-12 5.373-12 12s5.373 12 12 12 12-5.373 12-12-5.373-12-12-12zm0 7.58l5.995 5.988-1.416 1.414-4.579-4.574-4.59 4.574-1.416-1.414 6.006-5.988z"/></svg></span>
							            </div>
							            <div>
							                <span style="right: -65px; display:flex;
							                    align-items:center;"><svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="0 0 24 24" style="transform: rotate(90deg);  "><path class="videobtn" style="fill:rgb(190,190,190);"  d="M12 0c-6.627 0-12 5.373-12 12s5.373 12 12 12 12-5.373 12-12-5.373-12-12-12zm0 7.58l5.995 5.988-1.416 1.414-4.579-4.574-4.59 4.574-1.416-1.414 6.006-5.988z"/></svg></span></span>
							            </div>
							        </div>
							    </div>

							</div>
							<!-- 설명 1 -->
							<div class="howtoarea justify-content-center" style="background-color: #E3E3E3; height:auto; padding-bottom: 25px;">
							<br><br>
								<span style="color: #505050; font-size: 38px; font-family: 'Cafe24Danjunghae';">How to use</span><br><br><br>
							<div class="row">
								<div class="col-sm-2" style="margin-left:10px;"></div>							
								  <div class="col-sm-4" style="position: relative;">
								  <div style="overflow:hidden; width: 160px;height: 300px; position: absolute; background-color: #eeeeee; width:240px;height:270px; float: left;  top:70px; right:80%;  z-index: 2;">
								  <img alt="" src="http://localhost:8081/front/floatleft.jpg" style="width: 100%;height: auto;" >
								  </div>
								    <div class="card">
								      <div class="card-body" style="background-color: #FFFFFf; height:430px; padding-left:18%;">
								        <br><h5 class="card-title" style=" color: #353535;" > 영상 링크로 찾기 </h5>
								        <h6 class="card-title" style="color: #FFCF00; font-family: 'NanumSquare'; font-weight:400;"> Search by Link </h5><br>
								        <div style="width:100%; margin:0 auto;">
								        <span  style="font-size: 15px; font-family: 'NanumSquare'; bottom:-10%">영상의 링크를 알고있다면,</span><br>
								        <span   style="font-size: 15px; font-family: 'NanumSquare'; bottom:-10%">링크를 입력하여 상품을 찾아보세요.</span><br><br><br>
								        <h6 class="card-title" style="color: #FFCF00; font-family: 'NanumSquare'; font-weight:600;"> notice </h5>
								        <span   style="font-size: 14px; font-family: 'NanumSquare'; bottom:-10%">용량이 큰 영상은 시간이 오래 걸릴 수 있습니다.</span><br>
								        <span   style="font-size: 14px; font-family: 'NanumSquare'; bottom:-10%">영상 제공 사이트의 사정에 따라 연동이 안될 수 있습니다.</span>
								         </div>
								        <a href="#" class="btn btn-primary cardbtn" style="top:30px; border:0.8px;   border-style: solid; border-color: #FAC95E; color:#FAC95E;">링크로 찾기</a>
								      </div>
								    </div>
								  </div>
								  <div class="col-sm-4"  style="position: relative;">
								  <div style="overflow:hidden; width: 160px; height: 300px; position: absolute; background-color: #eeeeee; width:240px; height:270px; float: right; top:70px; left:80%;  z-index: 2;">
								  <img alt="" src="http://localhost:8081/front/floatright.jpg" style="position: absolute; width: auto;height: 100%; left:-80px;" >
								  </div>
								    <div class="card">
								      <div class="card-body" style="background-color: #FFFFFf; height:430px;  padding-right:18%;">
								        <br><h5 class="card-title" style="color: #353535;" >영상 파일로 찾기</h5>
								        <h6 class="card-title" style="color: #FFCF00; font-family: 'NanumSquare'; font-weight:400;"> Search by File</h5><br>
								        <div style="width:100%; margin:0 auto;">
								        <span  style="font-size: 15px; font-family: 'NanumSquare'; bottom:-5%">영상의 원본 파일을 갖고있다면,</span><br>
								        <span   style="font-size: 15px; font-family: 'NanumSquare'; ">파일을 업로드하여 상품을 찾아보세요.</span><br><br><br>
								        <h6 class="card-title" style="color: #FFCF00; font-family: 'NanumSquare'; font-weight:600;"> notice </h5>
								        <span style="font-size: 14px; font-family: 'NanumSquare'; bottom:-10%">용량이 큰 영상은 시간이 오래 걸릴 수 있습니다.</span><br>
								        <span style="font-size: 14px; font-family: 'NanumSquare'; bottom:-10%">영상 파일 확장자에 따라 연동이 안될 수 있습니다.</span>
								      </div>
								        <a href="#" class="btn btn-primary cardbtn" style="top:30px; border:0.8px;   border-style: solid; border-color: #FAC95E; color:#FAC95E;" >파일로 찾기</a>
								    </div>
								  </div>
								</div>
							</div>
							</div>
							<!-- 설명 2 -->
							<div class="howtoarea"  style="background-color: #FFFFFF; height:auto; padding-bottom: 25px;">
							<br><br><br> 
								<span style="color: #F9CD5A; font-size: 31px; font-family: 'NanumSquare';">enjoy</span><br>
								<span style="color: #F9CD5A; font-size: 41px; font-family: 'Cafe24Danjunghae';">DRAMARKET !</span><br><br><br>
								<span style="font-size: 16px; font-family: 'NanumSquare';">
									드라마 속 그 장면, 그 제품에 대해 </span><br> 
								<span style="font-size: 16px; font-family: 'NanumSquare';">
									다른 유저들과 소통해보세요</span><br><br> 
								<span style="font-size: 16px; font-family: 'NanumSquare'; ">
									서로 다른 취향, 새로운 제품의 이야기를 나눌 수 있습니다. </span><br>
									<span style="font-size: 16px; font-family: 'NanumSquare'; ">
									  </span><br><br><br>
									
									<button type="button" class="btn btn-sm enjoyhover"style=" background-color: #F9CD5A; ">
									  <div class="hidden-hover"  style="color:#FFFFFF; font-family: 'NanumSquare';font-weight:600;">게시판 놀러가기</div>
									  <div class="show-hover" style="color:#FFFFFF;font-family: 'NanumSquare';font-weight:600;">COME ON!</div>
									</button>
									
									<br> <br> <br><br>
									
									
								<div class="row" style="top:50px; margin-left:4%;">
								<div class="col-sm-1" style="margin-left:30px;"></div>							
								  <div class="col-sm-3" style="position: relative;">
								    <div class="card"style="background-color: #FFFFFF;">
								      <div class="card-body image-box" style="background-color: #FFFFFF;" >
								      	<img class="image-thumbnail" src="http://localhost:8081/front/enjoy (1).jpg">
								      </div>
								    </div>
								  </div>
								  <div class="col-sm-3"  style="position: relative;">
								    <div class="card "style="background-color: #FFFFFF;">
								      <div class="card-body image-box" style="background-color: #FFFFFF;" >
								      	<img class="image-thumbnail" src="http://localhost:8081/front/enjoy (3).jpg">
								      </div>
								    </div>
								  </div>
								  <div class="col-sm-3"  style="position: relative;">
								    <div class="card"style="background-color: #FFFFFF;">
								      <div class="card-body image-box" style="background-color: #FFFFFF;" >
								      	<img class="image-thumbnail" src="http://localhost:8081/front/enjoy (2).jpg">
								      </div>
								    </div>
								  </div>
								</div>
							<!-- 설명 3 -->
							</div>
							</div>


						<div id="uploadLink">
							<div class="fs-4 mb-4">"영상의 링크가 있나요?"</div>
							<div class="d-flex align-items-center justify-content-center">
								<div class="card" style="background-color: #EEEEEE;">
									<div class="card-body">
										<div class="uploadFile-svg">
											<svg xmlns="http://www.w3.org/2000/svg" width="16"
												height="16" fill="currentColor" class="bi bi-youtube"
												viewBox="0 0 16 16">
                                            <path
													d="M8.051 1.999h.089c.822.003 4.987.033 6.11.335a2.01 2.01 0 0 1 1.415 1.42c.101.38.172.883.22 1.402l.01.104.022.26.008.104c.065.914.073 1.77.074 1.957v.075c-.001.194-.01 1.108-.082 2.06l-.008.105-.009.104c-.05.572-.124 1.14-.235 1.558a2.007 2.007 0 0 1-1.415 1.42c-1.16.312-5.569.334-6.18.335h-.142c-.309 0-1.587-.006-2.927-.052l-.17-.006-.087-.004-.171-.007-.171-.007c-1.11-.049-2.167-.128-2.654-.26a2.007 2.007 0 0 1-1.415-1.419c-.111-.417-.185-.986-.235-1.558L.09 9.82l-.008-.104A31.4 31.4 0 0 1 0 7.68v-.123c.002-.215.01-.958.064-1.778l.007-.103.003-.052.008-.104.022-.26.01-.104c.048-.519.119-1.023.22-1.402a2.007 2.007 0 0 1 1.415-1.42c.487-.13 1.544-.21 2.654-.26l.17-.007.172-.006.086-.003.171-.007A99.788 99.788 0 0 1 7.858 2h.193zM6.4 5.209v4.818l4.157-2.408L6.4 5.209z" />
                                          </svg>
										</div>
									</div>
									<div class="card-footer">
										<div>
											<form action="http://localhost:5000/link" method="post">
												<input type="text" class="form-control"
													placeholder="링크를 입력해주세요" name="uploadLink">
										</div>
										<div>
											<button class="btn btn-lg btn-primary uploadBtn"
												type="submit">분석하기</button>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div id="uploadFile">
							<div class="fs-4 mb-4">"영상의 파일이 있나요?"</div>
							<div class="d-flex align-items-center justify-content-center">
								<div class="card" style="background-color: #EEEEEE;">
									<div class="card-body" >
										<div class="uploadFile-svg">
											<svg xmlns="http://www.w3.org/2000/svg" width="16"
												height="16" fill="currentColor"
												class="bi bi-file-earmark-play" viewBox="0 0 16 16">
            <path
													d="M6 6.883v4.234a.5.5 0 0 0 .757.429l3.528-2.117a.5.5 0 0 0 0-.858L6.757 6.454a.5.5 0 0 0-.757.43z" />
            <path
													d="M14 14V4.5L9.5 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2zM9.5 3A1.5 1.5 0 0 0 11 4.5h2V14a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h5.5v2z" />
          </svg>
										</div>
									</div>
									<div class="card-footer">
										<div>
											<form action="uploadFile.do" method="post"
												enctype="multipart/form-data">
												<input type="file" accept="video/*" required=""
													id="file-input" name="uploadFile">
										</div>
										<div>
											<button class="btn btn-lg btn-primary uploadBtn"
												type="submit">분석하기</button>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	</div>
	<!-- Testimonial section-->
	<div class="py-5">
		<div class="container px-5 my-5">
			<div class="row gx-5 justify-content-center"></div>
		</div>
	</div>
<!-- 로더 모달 -->
<!-- 모달창 -->
<div class="modal fade" id="loaderModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-body">
        <div class="loader-title">
          <h4>드라마켓 AI가 분석중입니다</h4>
        </div>
        <div class="loader-subtitle">
          <h5>&#9203;잠시만 기다려주세요&#9203;</h5>
        </div>
        <div class="loadercontainer">
          <span></span>
          <span></span>
          <span></span>
          <span></span>
        </div>
      </div>
    </div>
  </div>
</div>
	<!-- Footer-->
	<footer class="py-4 mt-auto"  style="background-color:#393E46;">
		<div class="container px-5">
			<div
				class="row align-items-center justify-content-between flex-column flex-sm-row">
				<div class="col-auto">
					<div class="small m-0 text-white">Copyright &copy; DRAMARKET
						2023</div>
				</div>
				<div class="col-auto">
					<a class="link-light small" href="#!">Privacy</a> <span
						class="text-white mx-1">&middot;</span> <a
						class="link-light small" href="#!">Terms</a> <span
						class="text-white mx-1">&middot;</span> <a
						class="link-light small" href="#!">Contact</a>
				</div>
			</div>
		</div>
	</footer>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
	<script>
		$(document).ready(function() {
			// 초기 화면에서는 howto 내용만 표시
			$('#howto').show().siblings().hide();
			// howto에 강조선 .active 추가
			$('a[data-target="#howto"]').addClass("active");

			// 클릭 이벤트
			$('a[data-target]').click(function(e) {
				e.preventDefault();
				var target = $(this).data('target');
				// 해당 내용을 표시
				$(target).show().siblings().hide();
			});
		});

		//nav아래의 강조선
		const navLinks = document.querySelectorAll(".nav-link");
		navLinks.forEach(function(link) {
			link.addEventListener("click", function(event) {
				event.preventDefault();
				// 모든 링크에서 ".active" 클래스 제거    
				navLinks.forEach(function(link) {
					link.classList.remove("active");
				});
				// 클릭한 링크에 ".active" 클래스 추가
				link.classList.add("active");
				var href = $(this).data("href");
				if (href == "board") {
					location.href = 'boardList.do'
				} else if (href == "mypage") {
					location.href = 'link'
				} else if (href == "login") {
					location.href = 'login.do'
				} else if (href == "logout") {
					location.href = 'logout.do'
				}

			});
		});
		
		$(document).ready(function(){
	          $('form').submit(function(){
	        	// 파일 업로드를 시작할 때 버튼을 비활성화
	              $('.btn.btn-lg.btn-primary.uploadBtn').attr('disabled',true).text('업로드 중...');
	              
	           // 모달창
	              $('#loaderModal').modal('show');
	          });
	      });

		//아래로 스크롤
		function scrollToContent() {
			  window.scrollBy(0, window.innerHeight);
			}

		
		//to top button
		document.addEventListener("DOMContentLoaded", function() {
			// DOM이 완전히 로드된 후에 스크립트가 실행
			let mybutton = document.getElementById("myBtn");

			window.onscroll = function() {
				scrollFunction()
			};

			function scrollFunction() {
				if (document.body.scrollTop > 20
					|| document.documentElement.scrollTop > 20) {
					mybutton.style.display = "block";
					mybutton.style.backgroundColor = "#FFD369";
				} else {
					mybutton.style.display = "none";
				}
			}

			function topFunction() {
				document.body.scrollTop = 0;
				document.documentElement.scrollTop = 0;
			}
		});
	
	</script>
	
	
<script>
    console.clear();

// 기존 버튼형 슬라이더
$('.slider-1 > .page-btns > div').click(function(){
    var $this = $(this);
    var index = $this.index();
    
    $this.addClass('active');
    $this.siblings('.active').removeClass('active');
    
    var $slider = $this.parent().parent();
    
    var $current = $slider.find(' > .slides > div.active');
    
    var $post = $slider.find(' > .slides > div').eq(index);
    
    $current.removeClass('active');
    $post.addClass('active');
});

// 좌/우 버튼 추가 슬라이더
$('.slider-1 > .side-btns > div').click(function(){
    var $this = $(this);
    var $slider = $this.closest('.slider-1');
    
    var index = $this.index();
    var isLeft = index == 0;
    
    var $current = $slider.find(' > .page-btns > div.active');
    var $post;
    
    if ( isLeft ){
        $post = $current.prev();
    }
    else {
        $post = $current.next();
    };
    
    if ( $post.length == 0 ){
        if ( isLeft ){
            $post = $slider.find(' > .page-btns > div:last-child');
        }
        else {
            $post = $slider.find(' > .page-btns > div:first-child');
        }
    };
    
    $post.click();
});

setInterval(function(){
    $('.slider-1 > .side-btns > div').eq(1).click();
}, 300000);
</script>
</body>
</html>