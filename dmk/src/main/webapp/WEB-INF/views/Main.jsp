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
    <title>Document</title>

<!-- Bootstrap 및 Bootswatch 스타일시트 파일 -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.6.0/morph/bootstrap.min.css" integrity="sha384-8QLqx+yb7DgYaFvzV7Ku8Hq3eIYXPHfgvKfZKH4NoJ+dsSdRfR5aIWlFJTG8xV7+" crossorigin="anonymous">
<!-- Bootstrap 및 Bootswatch 자바스크립트 파일 -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<!-- 만든 style.css를 불러오기 -->
<link rel="stylesheet" href="${cpath}/resources/css/style.css">
    <script src="js/morph/bootstrap.min.js"></script>
<!--google font-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<!--파일 업도르 drag&drop-->
<link href="https://cdnjs.cloudflare.com/ajax/libs/dropzone/5.9.3/min/dropzone.min.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/dropzone/5.9.3/min/dropzone.min.js"></script>
<!-- drag&drop JS  -->
<script>
    // Dropzone.js 초기화
    Dropzone.options.myDropzone = {
      paramName: "file", // 업로드할 파일 이름
      maxFilesize: 2, // 업로드할 파일 크기 제한 (2MB)
      acceptedFiles: ".jpeg,.jpg,.png,.gif", // 업로드 가능한 파일 확장자
      addRemoveLinks: true, // 파일 삭제 버튼 활성화
      init: function() {
    var myDropzone = this;
    this.on("removedfile", function(file) {
      // 파일 삭제 요청을 서버로 전송하는 코드
      $.ajax({
        url: "/delete",
        type: "POST",
        data: { filename: file.name },
        success: function(data) {
          console.log(data);
        },
        error: function(xhr, status, error) {
          console.log(xhr.responseText);
        }
      });
    });
  }
    };
  </script>

</head>
<body>
    <button onclick="topFunction()" id="myBtn" class="btn btn-info" title="Go to top">Top</button>
    <script>
        // Get the button
        let mybutton = document.getElementById("myBtn");
        
        // When the user scrolls down 20px from the top of the document, show the button
        window.onscroll = function() {scrollFunction()};
        
        function scrollFunction() {
          if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
            mybutton.style.display = "block";
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
        
    <div class="container">
        <nav class="navbar navbar-expand-lg mx-auto">
            <div class="container-fluid">
              <span class="navbar-brand mb-0 h1">DRAMARKET</span>
              <div class="d-flex justify-content-end">
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor03" aria-controls="navbarColor03" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                  </button>
                <div class="collapse navbar-collapse">
                    <ul class="navbar-nav me-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="#">영상분석</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">게시판</a>
                        </li>
                        <li class="nav-item">
		                    <!-- 글쓰기 회원검증 -->
							<c:if test="${!empty mvo}">
	                            <a class="nav-link" href="#">마이페이지</a>
							</c:if>	
							<c:if test="${empty mvo}">
	                            <a class="nav-link" href="login.do">로그인</a>
							</c:if>	
                        </li>
                    </ul>
                </div>
            </div>
            </div>
          </nav>
          </div>
<!-- Header-->
<header class="bg-dark py-5">
    <div class="container px-5">
        <div class="row gx-5 align-items-center justify-content-center">
            <div class="col-lg-8 col-xl-7 col-xxl-6">
                <div class="my-5 text-center text-xl-start">
                    <h1 class="display-5 fw-bolder text-white mb-2">드라마 속 상품이</h1>
                    <h1 class="display-5 fw-bolder text-white mb-2">궁금하신가요?</h1>
                    <p class="lead fw-normal text-white-50 mb-4"></p>
                    <p class="lead fw-normal text-white-50 mb-4">영상만 있다면 드라마켓에서 쉽게 상품을 찾울 수 있습니다!</p>
                    <p class="lead fw-normal text-white-50 mb-4">드라마켓 AI가 장면 속의 상품을 인식하고 검색해줘요!</p>

                </div>
            </div>
            <div class="col-xl-5 col-xxl-6 d-none d-xl-block text-center">
                <video class="video" autoplay="autoplay" muted="muted" src="yolosample.mp4"/>
            </div>
        </div>
    </div>
</header>
<!-- Testimonial section-->
<div class="py-5 bg-light">
    <div class="container px-5 my-5">
        <div class="row gx-5 justify-content-center">
            <div class="my-5 text-center text-xl-start">
                <h2 class="fw-bolder">링크를 입력하세요</h2>
                <div class="input-group mb-3">
                    <span class="input-group-text" id="inputGroup-sizing-default">Youtube link</span>
                    <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                  </div>
                <p class="lead fw-normal text-muted mb-5">분석하고 싶은 드라마의 하이라이트 영상의 유튜브 URL을 입력하세요</p>
            </div>
            <div class="my-5 text-center text-xl-start">
                <h2 class="fw-bolder">파일을 업로드하세요</h2>
                <!-- 드래그 앤 드롭을 적용할 영역을 정의합니다. -->
                <form action="/upload" method="post" enctype="multipart/form-data" class="dropzone" id="my-dropzone" ></form>

            </div>
            <div class="my-5 text-center text-xl-start">
                <h2 class="fw-bolder">추가 선택 항목</h2>
                  <div class="container text-center">
                    <div class="row">
                      <div class="col-sm-5 col-md-6 text-start">상품 카테고리</div>
                      <div class="col-sm-5 col-md-6 text-start">상품 타임라인</div>
                    </div>
                    <div class="row">
                      <div class="col-sm-6 col-md-5 col-lg-6">
                        <div class="form-group">
                            <select class="form-select" id="exampleSelect1">
                              <option>OUTER</option>
                              <option>TOP</option>
                              <option>BOTTOM</option>
                              <option>ACC</option>
                              <option>SHOSE</option>
                            </select>
                          </div>
                      </div>
                      <div class="col-sm-6 col-md-5 offset-md-2 col-lg-6 offset-lg-0">
                        <div class="input-group flex-nowrap">
                            <input type="text" class="form-control" placeholder=" 시간 입력" aria-label="Username" aria-describedby="addon-wrapping">

                          </div>
                      </div>
                    </div>
                  </div>
            </div>
            <div class="my-5 text-center text-xl-center">
            <button type="button" class="btn btn-primary btn-lg">찾아줘 드라마켓!</button>
        </div>
        </div>
    </div>
</div>
<!-- Blog preview section-->
<section class="py-5">
    <div class="container px-5 my-5">
        <div class="row gx-5 justify-content-center">
            <div class="col-lg-8 col-xl-6">
                <div class="text-center">
                    <h2 class="fw-bolder">From our blog</h2>
                    <p class="lead fw-normal text-muted mb-5">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Eaque fugit ratione dicta mollitia. Officiis ad.</p>
                </div>
            </div>
        </div>
        <div class="row gx-5">
            <div class="col-lg-4 mb-5">
                <div class="card h-100 shadow border-0">
                    <img class="card-img-top" src="https://dummyimage.com/600x350/ced4da/6c757d" alt="..." />
                    <div class="card-body p-4">
                        <div class="badge bg-primary bg-gradient rounded-pill mb-2">News</div>
                        <a class="text-decoration-none link-dark stretched-link" href="#!"><h5 class="card-title mb-3">Blog post title</h5></a>
                        <p class="card-text mb-0">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    </div>
                    <div class="card-footer p-4 pt-0 bg-transparent border-top-0">
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
            <div class="col-lg-4 mb-5">
                <div class="card h-100 shadow border-0">
                    <img class="card-img-top" src="https://dummyimage.com/600x350/adb5bd/495057" alt="..." />
                    <div class="card-body p-4">
                        <div class="badge bg-primary bg-gradient rounded-pill mb-2">Media</div>
                        <a class="text-decoration-none link-dark stretched-link" href="#!"><h5 class="card-title mb-3">Another blog post title</h5></a>
                        <p class="card-text mb-0">This text is a bit longer to illustrate the adaptive height of each card. Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    </div>
                    <div class="card-footer p-4 pt-0 bg-transparent border-top-0">
                        <div class="d-flex align-items-end justify-content-between">
                            <div class="d-flex align-items-center">
                                <img class="rounded-circle me-3" src="https://dummyimage.com/40x40/ced4da/6c757d" alt="..." />
                                <div class="small">
                                    <div class="fw-bold">Josiah Barclay</div>
                                    <div class="text-muted">March 23, 2022 &middot; 4 min read</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 mb-5">
                <div class="card h-100 shadow border-0">
                    <img class="card-img-top" src="https://dummyimage.com/600x350/6c757d/343a40" alt="..." />
                    <div class="card-body p-4">
                        <div class="badge bg-primary bg-gradient rounded-pill mb-2">News</div>
                        <a class="text-decoration-none link-dark stretched-link" href="#!"><h5 class="card-title mb-3">The last blog post title is a little bit longer than the others</h5></a>
                        <p class="card-text mb-0">Some more quick example text to build on the card title and make up the bulk of the card's content.</p>
                    </div>
                    <div class="card-footer p-4 pt-0 bg-transparent border-top-0">
                        <div class="d-flex align-items-end justify-content-between">
                            <div class="d-flex align-items-center">
                                <img class="rounded-circle me-3" src="https://dummyimage.com/40x40/ced4da/6c757d" alt="..." />
                                <div class="small">
                                    <div class="fw-bold">Evelyn Martinez</div>
                                    <div class="text-muted">April 2, 2022 &middot; 10 min read</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Call to action-->
        <aside class="bg-primary bg-gradient rounded-3 p-4 p-sm-5 mt-5">
            <div class="d-flex align-items-center justify-content-between flex-column flex-xl-row text-center text-xl-start">
                <div class="mb-4 mb-xl-0">
                    <div class="fs-3 fw-bold text-white">New products, delivered to you.</div>
                    <div class="text-white-50">Sign up for our newsletter for the latest updates.</div>
                </div>
                <div class="ms-xl-4">
                    
                        <div class="input-group mb-2">
                            <input class="form-control" type="text" placeholder="Email address..." aria-label="Email address..." aria-describedby="button-newsletter" />
                            <button class="btn btn-outline-light" id="button-newsletter" type="button">Sign up</button>
                        </div>

                    <div class="small text-white-50">We care about privacy, and will never share your data.</div>
                </div>
            </div>
        </aside>
    </div>
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
<script src="js/scripts.js"/>

</body>
</html>