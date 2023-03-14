<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
    <c:set var="cpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dramarket</title>
<link rel="stylesheet" href="${cpath}/resources/css/style.css">
<!-- Bootstrap 및 Bootswatch 스타일시트 파일 -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.6.0/morph/bootstrap.min.css" integrity="sha384-8QLqx+yb7DgYaFvzV7Ku8Hq3eIYXPHfgvKfZKH4NoJ+dsSdRfR5aIWlFJTG8xV7+" crossorigin="anonymous">
<!-- Bootstrap 및 Bootswatch 자바스크립트 파일 -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<!--bootstrap-->
    <link rel="stylesheet" href="bootstrap.css">
    <script src="js/morph/bootstrap.min.js"></script>
<!--google font-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<style>
.pageTransition-box {
  position: absolute;
  z-index: 9999;
  top: 0;
  left: -10%;
  width: calc(100% + 20%);
  height: 100%;
  overflow: hidden;
  background-color: rgba(57, 62, 70,0.9);
  transform-origin: left;
  transform: skew(-12deg);
  transition: all 0.8s ease-in-out;
 
}

.pageTransition-box.shrink {
  width: 0%;
  transform: skew(-12deg);
} 
.selectNav.active {
  color: #FFD369; 
  font-weight: 600;
  border-bottom: 3px solid #FFD369;
}
.selectNav:after {
  content: '';
  display: block;
  height: 3px;
  width: 0;
}

.selectNav.active:after {
  width: 100%;
}
.selectNavBar{
    width: 100%; /* ul 요소의 너비를 100%로 설정 */
  max-width: 800px; /* ul 요소의 최대 너비를 800px로 설정 */
  margin: 0 auto; /* ul 요소를 수평 중앙에 위치시킴 */  
}

.selectNavTab{
    flex: 1; /* li 요소의 너비를 동일하게 설정 */
  text-align: center; /* li 요소의 텍스트를 가운데 정렬 */
  margin: 0 10px; /* li와 li 사이의 여백을 10px로 설정 */ 
}

.uploadBtn {
  background-color: #EEEEEE;
}

.uploadFile-svg svg {
  animation: bounce 2s ease-in-out infinite;
}

@keyframes bounce {
  0% {
    transform: translateY(0);
  }
  50% {
    transform: translateY(-5px);
  }
  100% {
    transform: translateY(0);
  }
}

</style>
</head>
<body>
    <div class="pageTransition-box"></div>
    <script>
//화면전환 효과
window.onload = function() {
  const transitionbox = document.querySelector('.pageTransition-box');
  transitionbox.classList.add('shrink');
}

    </script>
    <button onclick="topFunction()" id="myBtn" class="btn btn-info to-top" title="Go to top">
        TOP
    </button>
    <script>
        // Get the button
        let mybutton = document.getElementById("myBtn");
        
        // When the user scrolls down 20px from the top of the document, show the button
        window.onscroll = function() {scrollFunction()};
        
        function scrollFunction() {
          if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
            mybutton.style.display = "block";
            mybutton.style.backgroundColor = "#FFD369";
          } else {
            mybutton.style.display = "none";
          }
        }
        
        // When the user clicks on the button, scroll to the top of the document
        function topFunction() {
          document.body.scrollTop = 0;
          document.documentElement.scrollTop = 0;
        }
        </script>
        <div style="background-color: #393E46; position: sticky; top: 0; z-index: 9999;">
      <nav class="navbar navbar-expand-lg navbar-dark bg-dark" style="background-color: #393E46;">
        <div class="container-fluid" style="width: 70%;">
            <a class="navbar-brand" href="#" style="color: #FFD369;">드라마켓</a>
            <div class="d-flex justify-content-end">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarColor02">
                
                <ul class="navbar-nav me-auto">
                    <li class="nav-item">
                        <a class="nav-link " href="">상품검색
                            <span class="visually-hidden">(current)</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">게시판</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">마이페이지</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">로그인</a>
                    </li>
                </ul>
            </div>
        </div>
        </div>
      </nav>
    </div>  
<!-- Header-->
<header class="bg-dark py-5" style="background-color: #393E46;">
    <div class="container px-5">
        <div class="row gx-5 align-items-center justify-content-center">
            <div class="col-lg-8 col-xl-7 col-xxl-6">
                <div class="my-5 text-center text-xl-start">
                    <h1 class="display-5 fw-bolder text-white mb-2">A Bootstrap 5 template for modern businesses</h1>
                    <p class="lead fw-normal text-white-50 mb-4">Quickly design and customize responsive mobile-first sites with Bootstrap, the world’s most popular front-end open source toolkit!</p>

                </div>
            </div>
            
        </div>
    </div>
</header>
<div >
    <ul class="nav justify-content-center selectNavBar">
        <li class="nav-item selectNavTab">
          <a class="nav-link selectNav" data-target="#howto" aria-current="page" href="#">How to</a>
        </li>
        <li class="nav-item selectNavTab">
          <a class="nav-link selectNav" data-target="#uploadLink" href="#">Enter Link</a>
        </li>
        <li class="nav-item selectNavTab">
          <a class="nav-link selectNav" data-target="#uploadFile" href="#">Upload Video</a>
      </ul>
</div>
<div class="py-5">
    <div class="container px-5 my-5">
        <div class="row gx-5 justify-content-center">
            <div class="col-lg-10 col-xl-7">
                <div class="text-center tab-content">
                    <div id="howto">
                        <div class="fs-4 mb-4">"드라마켓 사용 설명"</div>
                        <div class="d-flex align-items-center justify-content-center">
                        </div>
                    </div>
                    <div id="uploadLink">
                        <div class="fs-4 mb-4">"영상의 링크가 있나요?"</div>
                        <div class="d-flex align-items-center justify-content-center">
                            <div class="card" style="background-color: #EEEEEE;">
                                <div class="card-body">
                                    <div class="uploadFile-svg">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-youtube" viewBox="0 0 16 16">
                                            <path d="M8.051 1.999h.089c.822.003 4.987.033 6.11.335a2.01 2.01 0 0 1 1.415 1.42c.101.38.172.883.22 1.402l.01.104.022.26.008.104c.065.914.073 1.77.074 1.957v.075c-.001.194-.01 1.108-.082 2.06l-.008.105-.009.104c-.05.572-.124 1.14-.235 1.558a2.007 2.007 0 0 1-1.415 1.42c-1.16.312-5.569.334-6.18.335h-.142c-.309 0-1.587-.006-2.927-.052l-.17-.006-.087-.004-.171-.007-.171-.007c-1.11-.049-2.167-.128-2.654-.26a2.007 2.007 0 0 1-1.415-1.419c-.111-.417-.185-.986-.235-1.558L.09 9.82l-.008-.104A31.4 31.4 0 0 1 0 7.68v-.123c.002-.215.01-.958.064-1.778l.007-.103.003-.052.008-.104.022-.26.01-.104c.048-.519.119-1.023.22-1.402a2.007 2.007 0 0 1 1.415-1.42c.487-.13 1.544-.21 2.654-.26l.17-.007.172-.006.086-.003.171-.007A99.788 99.788 0 0 1 7.858 2h.193zM6.4 5.209v4.818l4.157-2.408L6.4 5.209z"/>
                                          </svg>
                                    </div>
                                </div>
                                    <div class="card-footer">
                                        <div>
                                            <form action="">
                                                <input type="text" class="form-control" placeholder="링크를 입력해주세요">
                                        </div>
                                        <div>
                                            <button class="btn btn-lg btn-primary uploadBtn" type="submit">찾아주라</button>
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
<div class="card-body">
    <div class="uploadFile-svg">
        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-file-earmark-play" viewBox="0 0 16 16">
            <path d="M6 6.883v4.234a.5.5 0 0 0 .757.429l3.528-2.117a.5.5 0 0 0 0-.858L6.757 6.454a.5.5 0 0 0-.757.43z"/>
            <path d="M14 14V4.5L9.5 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2zM9.5 3A1.5 1.5 0 0 0 11 4.5h2V14a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h5.5v2z"/>
          </svg>
    </div>
</div>
<div class="card-footer">
    <div>
        <form action=""></form>
        <input type="file" accept="video/*" required="" id="file-input">
    </div>
    <div>
        <button class="btn btn-lg btn-primary uploadBtn" type="submit">찾아주라</button>
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
        <div class="row gx-5 justify-content-center">
        </div>
    </div>
</div>


</main>
<!-- Footer-->
<footer class="bg-dark py-4 mt-auto">
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
<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="js/scripts.js"></script>
<script>
$(document).ready(function() {
 // 초기 화면에서는 howto 내용만 표시합니다.
 $('#howto').show().siblings().hide();

  // 클릭 이벤트를 추가합니다.
  $('a[data-target]').click(function(e) {
    e.preventDefault();
    var target = $(this).data('target');
    // 해당 내용을 표시합니다.
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
    
  });
});
</script>
<script>
    //버튼 클릭시 색깔 변경
    document.querySelector(".uploadBtn").addEventListener("click", function() {
  this.style.backgroundColor = "#FFD369";
});
</script>
</body>
</html>