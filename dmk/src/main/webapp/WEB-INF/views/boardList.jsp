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
    <script src="js/morph/bootstrap.min.js"></script>
<!--google font-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- Bootstrap Icons library -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css" rel="stylesheet">
</head>
<body>
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
                          <a class="nav-link " href="#">상품검색
                              <span class="visually-hidden">(current)</span>
                          </a>
                      </li>
                      <li class="nav-item">
                          <a class="nav-link" href="http://127.0.0.1:5501/Morph/boardList.html">게시판</a>
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
<!-- Testimonial section-->
<div class="py-5>
    <div class="container px-5 my-5">
        <div class="container">
            <div class="container text-center">
                <div class="row" id="writebtn-row">
                  <div class="col-10"> </div>
                  <div class="col-2">
                    <button type="button" class="btn btn-primary btn-sm" id="writebtn"><i class="bi bi-pencil">_</i>글쓰기</button>
                  </div>
                </div>
              </div>
        
        </script>
            <div class="row" data-masonry='{"percentPosition" : true}'>
                <div class="col-lg-4 col-md-6 col-6">
                    <div class="card shadow border-0" style="background-color: #EEEEEE;">
                        <img class="card-img-top" src="data:image/jpeg;base64,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" alt="Post 1"/>
                        <div class="card-body p-4">
                            <div class="badge bg-primary bg-gradient rounded-pill mb-2">News</div>
                            <a class="text-decoration-none link-dark stretched-link" href="#!"><h5 class="card-title mb-3">Blog post title</h5></a>
                            <p class="card-text mb-0">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        </div>
                        <div class="card-footer p-4 pt-0 bg-transparent border-top-0 ">
                            <div class="d-flex align-items-end justify-content-between">
                                <div class="d-flex align-items-center">
                                    <img class="rounded-circle me-3" src="https://dummyimage.com/40x40/ced4da/6c757d" alt="..." />
                                    <div class="small">
                                        <div class="fw-bold">Kelly Rowan</div>
                                        <div class="text-muted">March 12, 2022 &middot; 6 min read</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
<script>
//const card = document.querySelector('.card');
//const button = document.querySelector('.btn');

//button.addEventListener('click', () => {
//  card.style.maxHeight = 'none';
//  card.style.overflow = 'visible';
//});

//글작성하기
// 버튼 요소 가져오기
const writeBtn = document.getElementById('writebtn');

// 클릭 이벤트 처리
writeBtn.addEventListener('click', () => {
  // 이동할 페이지 URL 설정
  const url = '주소작성';

  // 현재 창에서 페이지 이동
  window.location.href = url;
});

</script>
</div>
<!-- Blog preview section-->
<section class="py-5">
    
</section>

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
<!--Masonry.js-->
<script src="https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.min.js"></script>

</body>
</html>