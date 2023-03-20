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
<link rel="stylesheet" href="bootstrap.css">
<script src="js/morph/bootstrap.min.js"></script>
<!--google font-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
    <style>
      html,
      body {
        height: 100%;
        margin: 0;
      }

      video {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        object-fit: cover;
      }
      .pageTransition-box {
        position: absolute;
        z-index: 2;
        top: 0;
        left: -10%;
        width: 40%;
        height: 100%;
        overflow: hidden;
        background-color: rgb(57, 62, 70, 0.9);
        transform-origin: left;
        transform: skew(-12deg);
        transition: all 0.4s ease-in-out; /* 애니메이션 효과를 추가*/
        display: flex;
        flex-direction: column;
        justify-content: flex-start;
        align-items: center;
      }
      .pageTransition-box.active {
        width: calc(100% + 20%); /* 요소의 너비를 body의 전체 크기로 변경*/
      }
      .pageTransition-box > * {
        position: relative;
        z-index: 3; /*요소들이 쌓이는 순서를 지정, 값이 높을 수록 위쪽*/
        left: 10%;
        top: 15%;
        transform: skew(12deg); /*기울기를 원래대로*/
        transform-origin: left;
      }

      .startTile > h1 {
        margin-top: 0;
        margin-right: 20px;
        font-size: 4.5rem;
        color: #ffd369;
        font-weight: 700;
      }

      .subTilte > h4 {
        margin-top: 0;
        color: #fff9ec;
        font-size: 1.5rem;
        font-weight: 300;
      }
      h4 {
        padding-bottom: -10px;
      }
      .subTilte > h4 > span {
        color: #fff9ec;
        font-size: 1.5rem;
        font-weight: 700;
      }
      .subTilte > #startBtn {
        padding-top: 150px;
      }

      button {
        font-size: 40px;
        color: #ffd369;
        font-family: inherit;
        font-weight: 800;
        cursor: pointer;
        position: relative;
        border: none;
        background: none;
        text-transform: uppercase;
        transition-timing-function: cubic-bezier(0.25, 0.8, 0.25, 1);
        transition-duration: 400ms;
        transition-property: color;
      }

      button:focus,
      button:hover {
        color: #ffd369;
      }

      button:focus:after,
      button:hover:after {
        width: 100%;
        left: 0%;
      }

      button:after {
        content: "";
        pointer-events: none;
        bottom: -2px;
        left: 50%;
        position: absolute;
        width: 0%;
        height: 2px;
        background-color: #ffd369;
        transition-timing-function: cubic-bezier(0.25, 0.8, 0.25, 1);
        transition-duration: 400ms;
        transition-property: width, left;
      }

      .startTile h1 span {
        opacity: 0;
        animation: fadeIn 1s ease-in-out forwards;
      }

      @keyframes fadeIn {
        from {
          opacity: 0;
          transform: translateY(-20px);
        }
        to {
          opacity: 1;
          transform: translateY(0);
        }
      }
    </style>
  </head>
  <body>
    <video
      class="bg-viedo"
      playsinline="playsinline"
      autoplay="autoplay"
      muted="muted"
      loop="loop"
    >
      <source src="http://localhost:8081/front/nomal.mp4" type="video/mp4" />
    </video>
    <div class="pageTransition-box">
      <div class="startTile">
        <h1>DRAMARKET</h1>
      </div>
      <div class="subTilte">
        <span></span>
        <h4>드라마 속 궁금했던 <span>상품</span> 정보,</h4>
        <h4><span>드라마켓</span>에서 찾아보세요</h4>
        <button id="startBtn">GET STARTED!</button>
      </div>
    </div>

    <script>
      //버튼클릭시 애니메이션 시작
      const transitionbox = document.querySelector(".pageTransition-box");
      const button = document.querySelector("button");

      button.addEventListener("click", function () {
        transitionbox.classList.add("active");

        // transitionend 이벤트가 발생할 때 다른 페이지로 이동
        transitionbox.addEventListener("transitionend", function () {
          window.location.href = "Main.do"; //Main경로 입력
        });
      });
    </script>
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>

    <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
  </body>
</html>
    