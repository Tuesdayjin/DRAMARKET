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
              <a class="navbar-brand" href="Main.do" style="color: #FFD369;">드라마켓</a>
              <div class="d-flex justify-content-end">
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarColor02">
                  
                  <ul class="navbar-nav me-auto">
                      <li class="nav-item">
                          <a class="nav-link " href="Main.do">상품검색
                              <span class="visually-hidden">(current)</span>
                          </a>
                      </li>
                      
                    <c:if test="${!empty mvo}">
                    <li class="nav-item">
                        <a class="nav-link" href="#">마이페이지</a>
                    </li>
                     <li class="nav-item">
                        <a class="nav-link" href="logout.do">로그아웃</a>
                    </li>
                    </c:if>
                   <c:if test="${empty mvo}">
                    <li class="nav-item">
                        <a class="nav-link" href="login.do">로그인</a>
                    </li>
                    </c:if>
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
<div class="py-5">
    <div class="container px-5 my-5">
        <div class="container">
            <div class="container text-center">
                <div class="row" id="writebtn-row">
                  <div class="col-10"> </div>
                  <div class="col-2">
                  <c:if test="${!empty mvo}">
                  <div class="writebtn-box">
                    <button type="button" class="btn btn-primary btn-sm" id="writebtn"><i class="bi bi-pencil">_</i>글쓰기</button>
                    </div>
					</c:if>
                  </div>
                </div>
              </div>
        
        </script>
            <div class="row" data-masonry='{"percentPosition" : true}'>
        <c:forEach var="board_vo" items="${list}">
                <div class="col-lg-4 col-md-6 col-6">
                    <div class="card shadow border-0" style="background-color: #EEEEEE;">
                    <c:if test="${!empty board_vo.img_name}"> <!-- 이미지 있을때만 -->
                        <img class="card-img-top" src="http://localhost:8081/boardimg/thumb_${board_vo.img_name}" alt="Post 1"/>
                     </c:if>   
                        <div class="card-body p-4" href="boardContent.do?num=${board_vo.num}">

                        
                        <jsp:useBean id="now" class="java.util.Date" />
                        <fmt:formatDate value="${now}" pattern="yyyyMMdd" var="nowDate" />  
                        <fmt:formatDate value="${board_vo.indate}" pattern="yyyyMMdd" var="writeDate" />                         
                        <c:if test="${nowDate == writeDate}"> 
                            <div class="badge bg-primary bg-gradient rounded-pill mb-2">News</div>
                            </c:if> 
                            <a class="text-decoration-none link-dark stretched-link" href="boardContent.do?num=${board_vo.num}"><h5 class="card-title mb-3">${board_vo.title}</h5></a>
                            
                        </div>
                        <div class="card-footer p-4 pt-0 bg-transparent border-top-0 ">
                            <div class="d-flex align-items-end justify-content-between">
                                <div class="d-flex align-items-center">
                                    <img class="rounded-circle me-3" src="https://dummyimage.com/40x40/ced4da/6c757d" alt="..." />
                                    <div class="small">
                                        <div class="fw-bold">${board_vo.nick}</div>
                                        <div class="text-muted"><fmt:formatDate value="${board_vo.indate}" pattern="yyyy-MM-dd HH시 mm분"/></div>
                                        <div class="text-muted"> read ${board_vo.views}</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
            </div>
        </div>
<script>
//글작성하기
// 버튼 요소 가져오기
const writeBtn = document.getElementById('writebtn');

// 클릭 이벤트 처리
writeBtn.addEventListener('click', () => {
  // 이동할 페이지 URL 설정
  const url = '/boardInsert.jsp';

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