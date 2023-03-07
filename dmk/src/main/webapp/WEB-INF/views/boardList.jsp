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
    <title>Document</title>
    <!--bootstrap & bootswatch-->
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
                    <h1 class="display-5 fw-bolder text-white mb-2">A Bootstrap 5 template for modern businesses</h1>
                    <p class="lead fw-normal text-white-50 mb-4">Quickly design and customize responsive mobile-first sites with Bootstrap, the world’s most popular front-end open source toolkit!</p>

                </div>
            </div>
            
        </div>
    </div>
</header>
<!-- Features section-->
<section class="py-5" id="features">
    <div class="container px-5 my-5">
        <div class="row gx-5">
            <div class="container">
                <div class="row align-items-center">
                  <div class="col-1">
                  </div>
                  <div class="col-10">
                    <div class="cate-row">
                    <div class="col-2">
                      <div class="cate-drama">
                      <div class="dramacircle">
                        <img class="daramaimg" src="https://search.pstatic.net/common/?src=https%3A%2F%2Fditto-phinf.pstatic.net%2F20230227_198%2F1677489790020SOEit_PNG%2F76ebb952e887731374cdd50942724ef0.png&type=o&size=488x470&ttype=input" alt="이미지 설명">
                      </div>
                      <div class="catetitle">
                        <p>#대행사<p>
                      </div>
                    </div>
                    </div>
                    <div class="col-2">
                      <div class="dramacircle">
                        <img class="daramaimg" src="/Morph/testcat.jpg" alt="이미지 설명">
                      </div>
                      <div class="catetitle">
                        <p>#카테고리<p>
                      </div>
                    </div>
                    <div class="col-2">
                      <div class="dramacircle">
                        <img class="daramaimg" src="/Morph/testcat.jpg" alt="이미지 설명">
                      </div>
                    </div>
                    <div class="col-2">
                      <div class="dramacircle">
                        <img class="daramaimg" src="/Morph/testcat.jpg" alt="이미지 설명">
                      </div>
                    </div>
                    <div class="col-2">
                      <div class="dramacircle">
                        <img class="daramaimg" src="/Morph/testcat.jpg" alt="이미지 설명">
                      </div>
                    </div>
                  </div>
                </div>
                  </div>
                  <div class="col-1">
                  </div>
                </div>
              </div>

        </div>
    </div>
</section>
<!-- Testimonial section-->
<div class="py-5 bg-light">
    <div class="container px-5 my-5">
        <div class="container">
            <div class="container text-center">
                <div class="row align-items-end" id="writebtn-row">
                  <div class="col-10"> </div>
                  <div class="col-2">
                    <button type="button" class="btn btn-primary btn-sm" id="writebtn">글쓰기</button>
                  </div>
                </div>
              </div>
        
            <div class="row" data-masonry='{"percentPosition" : true}'>
                <div class="col-lg-4 col-md-6 col-6">
                    <div class="card shadow border-0">
                        <img class="card-img-top" src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxISEhUQEBIQEhAQDw8PDxAQEhAQEA8PFREWFhUSFRUYHSggGBolGxUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OFxAQFy0dFR0rLS0tKysrLS0tLS0rLS0tKy0tLS0tNzctKy03KystLS0tLTctLTcrLSs3Ky0rLSsrK//AABEIANAA8wMBIgACEQEDEQH/xAAbAAACAwEBAQAAAAAAAAAAAAADBAIFBgEAB//EADEQAAIBAwIFAQcEAwEBAAAAAAABAgMEEQUhEjFBUWFxBhMUUoGRoSIyQrFTYsHwY//EABkBAAMBAQEAAAAAAAAAAAAAAAABAgMEBf/EACARAQEBAQEBAQEAAgMAAAAAAAABEQIDIRIxInETQVH/2gAMAwEAAhEDEQA/AIpnVgiiSRg0SWAkWDQSmLQ7lkoM88EUtwIfB2JxHUBixkHgxWLGaYaQyDwYBMkp4J08NRZ3IurpLmQlfwQ/6MOM8Jq/h3O/GIBlPRZJCsKqYeEhbDyjKJJIhFk8gl084kG2d59RBCUQFTPZP1GZYFqriMwJJ9aaa8Avdr/H/YdQ+WX3JqE/mQwBGEesP7GaVvHtj7jFGlJ9UMxg10TEAqVBdFn1J7rpj0DOo+2PQjCLb2f3EaGP9meGPd+EeGHzvgZ7hGOA57vuVp0FEkzskuh7AidTPZPI6wISkwiYGATIzTTGKSyAim+SyWNnay54I6p886lCh1I1KQ/KOEJ1Xl7HL36Y6vPzlLO3TIvT0x2nTHKFAznrWt84pI6cFhbYL9WyAVaBf/LS/EV0VgJTmdlADNB+6L5yrSjHJOcMFVRvuHZj0NSpvnJG/n1+nN6cSCYOpHYVIS5NP0C8K8mrnBlEXku6HnBd2CnDs8gCqgvlGKVJfKGpxXNvAVRfRgEqdPwkvUmqa749dztNR6uTfoguX2yhGDO0T5v/AIdjSitkuXUI3F9GvudjH5c/UeBBSj3OnGl2/J0Wh88TJ8YspY6BFWj2LkUko5OyidhViEbXQMwF8HScyIQnoyCw3A9Swt69OmuKe77dAwljpthJ74LCouBGRv8A23nH9NGMV57CFHVa9Z5nNvwm0ifSST6285tae4u8vY5TkV9OntuelccJ51l6ruknMXVOQ5SmZylqKbwXFvVyieubz/TnU6WXGDmwfM6kTp/kpVpicqiLG6zgy17duMuTNeJqeri2dNMRr6bl5zgY0u44t2P16eUacW81HedRDS6ai1mZfR37NGYprD5dS3o1Mo7Zdjg75yrDK+Vfc9xP5cdsbiaqvwSVx3eH4YsQbjHrJPHhHfdRf7FL6i/xXZp+rZONxn5V6ZAGoQa/ivyd/V4QKM18/wDZzjXWS9X1CAWVV9d8ApVxeb3/AHL0ONvv+BmN7x+Dwv7z1+x4RMLVQJsccCEqQ40wGLDU6r7MjFEpZKSKpETkDuCTSi8dMgK6cl+3YZp7vA9CES+bicZS4s89MP0HtKspJ5aNNSt0+32H6dCPZHL7esvx1+fFiqdHYzet1Zp4j/xG2uKaMzqOmSqN+TLzxt1LjOaZSqSnvOPPlxI+g6VRljcpdH9m1F8TNhb2/CtivWfpHH+Jihb5GVbITdxgg7xk8+LX/Kp3NsjMaxps5bxRpoV+IZ9ymipxlR18/rDWEJwa4o/8NDTmmhq5slnkeo0UuhHY5ylpUV0QOVLHRlnhdicqO3Ifn1WfpJVMm10/J1VP9d/oR1F8PXApSry6SidccnUw+qj6QQSDb/gl9RJVZdZpeiJxrL/JuNB+NRr+P5JOq+yElX/+iz5Cxk3/ADj9kAGbfg7GXgA0+s39MEMpc5SGZxSXy/k8Ke8j87PCwM0wcwzBVWKNQWcyQlI5xjTRotk1MHCRLiCiCcb5haEssRq1sDWlYlLmRdq+bF9aU3sWEY4J2dusE6lPc5fTmurjqASj4BfB5fIdpU8j1GgiPPm9VXXchS2tEg9RbDEoitV+Tv54+Oa97VRfVmuhWTv5cuF+paXsuZR1cZNPxjr49Zi1sKsmaW05LJlbCsX1veLkE5jD271auGRepb+AlO4TJSqruZ9+crLnuwrGjuGlFYPI5VlhEc+clPrvWX1545Gbjc74af0NNrMeLJSQ06S3X5NcY9JUbiPab9RlXD/xpi0uOO3CmClWm3+6K+qYYhZxuH/jj+Cfv1/KDXlblZGpLGXUW3bBKNV81Uz4HgWkKsH1a+4Rt9OHBVK57xb8nlXhy3X3EFtl/LH8Hiu95Hu/ueAEpMXrMjKTOS5BIu0vKQNyYScSHCUl6MgkZA8HM4Jp6jc8iWl13GXQhUTex6lavI8+Bv8ASb9NYyi1lh9UYfSoNPqam1rbEWRpLYcUcBXcYFpXKE7i5FzxId6tN3N8U13qaXNiWpajwpmE1vVJPZM1hSNXd+01KGU2Z269taUW0uJmQrxlJ7s7S0xPdv8AA9azmtVR9uY9IsudP9reLG7+pgo6S+mfsP2VlJNbPn2DTvP/AK+r2GtKWMPmW9K6T6mD0ihJYNTbE1lZi6jcY6kJ1HLqApQzzLO2ow6oSKQjYcW7Y18BHHIsowj2wHUUVE2sNren4zs/pkzE7eK/jPP1Pp2p2+VyMVqlGSe2wJxTQgl/FhU/9cEZwef1TI8K7sQNQc1yax5Jup80c+gjxpdZBoVH0f3GNEbh8rPEMy8HRYA1EkonIxJoVUFOBCUBmQKUSpSLNEUhlwIxisioN6daKTWTQW+nw7IU0WCNLSpLBQ1WfDRXRL0PPC6ljUoJi9SguxGK0nN+SvvK+OpYV4lXdQXUFKHUJcRSz0xzeC/u4IRVfhY4rcBtPZjq8Mt7fRVHlCL+wvTv/Iwrx/MV8OelPUtLXWKX2Dx0+lHoslZ8eo85AZ6lnkxfCvdXEYJPbBYW0ihs4Sk9zR2Nm9thVNqxtqeepZ29su4va2+OhY02h4m0aGF2J59CHvodiEriPQVpSa5cRWDJ65RW+5pLit5M9qsU08k/pX5rHV5JPGVz6gnUfdYCXtCKeyfUT4fH3LZ0bi/2Jfp6sCm+yRNZ7ABFJfMeIb/KeGDmCeCGM8juCFJYItHcEWgJxojCnlkskrd7r1GGn0S02RoIwwUWmVHhYLeMmGngkpJAKsl3PTa6gnBC08BqvsslVe0tuRc8cVze4tcVYcgPWJ1GL7FJcZPoVW0hLoVV7o66FYWsYpHU5Pqy9noTzsg1DRccwsPVFStJSe/ItbOzXUtVaKKAOWAgWNjDGDQWt1Fc2kY/4mqv2f1kBO+rp74X0Gf5fQ/j6a/kgM9ST5Mx9pVlLm0Xtla53bFaWLmnNvuGgCpYj1PSul4MemnIlUptRSwP1bpdisuk5ZwiIqsxqFN5e5VzWOb/ALLrUKMuuCnrZ6NHRy5+ogpIJGa6P+wWX4Oxb7IaBuJfM/ycOZfZHhhZI5xHGzmSasRSOYIJk3IRo5CW3MBORK3qbiNrdNeEWHvSjsrnYddwYdd/WvPBqdYFOv5YnVuOwq7jcrnodRYSqc8L6iVTiJwbfIhNtczaVlj1KoxmLT54K2tVx1K+41XHUofloZqOOgjVr0k/3FDU1Pj2Tf3Ce44knkBi6dxRe2UGs9EVT9W+DPW1nFTTlJpJ9zeaVd01HCksbBF88vU9GjFckVuqaQmtkaGpfRa2E6leD5tFNf8AbEfDTpy64LGhdPuM6lVg+WBCjEisujrupdzsLiXkhTGqK8Gdg3IJRq55pj0IJrkDoUUORpC/I/TP6xp+U2n3Mhc0Wn0f1Po97QyjGaxbpPlg0nxFikkvDOxl4Z6S8keLyUzE4l5PHFJ+DwBZyIs7M8mKqeR1s4e4RGDVYs6rTGqsBOWBU4tdOry2yaOjUjjf7mUsZ77F/bwT5mN52tt+C15xfLAOnS3ywsqcF0ITrJF88JvWmXXUUV9zcylslgDXuMhNOqxz+o1hQOFlOQV+znEt0aG3uKaXRhvjIvZFtpzr57qOiOlulgFaV3yfM2+o0lJPJib6hwz27k1HfODXEXjYpri7rweIyaRewexX3NPO2Bs5cDtteuMY4/BaWl/Un+5srrWwb6Gk0nTM4yhVV6qVKg2Mwt8F9b6UugV6ULEaolRyM29uy1jp+BulZk2DSVvSYxOI4qKXYi6XgC1XVINoyvtBaPmbWpSKTWKOYvYYr51VeHugakuiH9Rtkm8P6FZNf+RTO/BeI6AycA1uzqJOB1QAOo6snuEkkIw6iEaywWE0J14iCdjLc0VOTS2M1Zvc0NvDPNmf/bWfxypUYtUkxytR7APct9C/4RdrICWU9iw+HIu2KPSkL2SH7XUc7C/wXg58JjkL6uemLl3uVhlVc0FLd/QLbWzZZ09MeB/S79NikjRJ07DPQs6tm4jNpS6FMtLWmnYL2xtUsHaFuWNCkGJ0egg0o5RCCwdlMaUMBo4As8qmCVJTj2yDbY0qiZCQrDgOBC+gmsNFgxe4gRaqMNrenLdpIyVxHD2PpWp0ItPOxhNXtMSeHkOKO+VS+I8Qa9fueNMZNK6ZzgGXE8oDMD3Z2NMPwnsAYEqYlXgWMxSsTSCsKTbNPa22xnLV778jR2t1ssLoTi5T0KCJq2XYhb1G+Y/CSKwaRdp4JqyRYxhkIqRUhVU/A+Dj09fUvadAjUpIrE6o42eHsWNB7YD+5OxppBg0pdUU1kQhLDLS7ezKpQ3ChaW8huFTAjbLA0IG41TrYtTYwTQ8RkzzZFslUewFpkIhExHqXCDqQCxZNSXVCsEqj1CimmYTXLVptn0y6hFoxntBbLfIuflVfsYOUXk8M1KSy+Z411ljSJHcHsnsjJxkZM9JgakgNyQKogkmCmxBClDfBoLGnsZtVMFnaX+FjIhq995jkN27zzZTUa47Trga+pSQxSKSlWY7RrYKgq26ApEaVXJMaUEzkiUkdjAcBWrDIs7dFjOmLNPqOwBRWAjZ1I9U5Em7SqYGozRWOZ1VsCp4smwbF6dbIdT/AKJpiKQaNRCjmR42GBYKaOticGxynERAV/Qz+rW/EmaetDYpNRpbEWfWkr5/Xsf1P1PFtXofqfqcGWP/2Q==" alt="Post 1"/>
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
                <div class="col-lg-4 col-md-6 col-6">
                    <div class="card shadow border-0">
                        <img class="card-img-top" src="data:image/jpeg;base64,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" alt="Post 1"/>
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
                <div class="col-lg-4 col-md-6 col-6">
                    <div class="card shadow border-0">
                        <img class="card-img-top" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR07DE6Rv8qIlhYxAd0IbwM4gHeZCrIgnt5AQ&usqp=CAU" alt="Post 1"/>
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
                <div class="col-lg-4 col-md-6 col-6">
                    <div class="card shadow border-0">
                        <img class="card-img-top" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuv59FmqyME-R8sISDw-vuOzEviZ3qKdcQ2A&usqp=CAU" alt="Post 1"/>
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
                <div class="col-lg-4 col-md-6 col-6">
                    <div class="card shadow border-0">
                        <img class="card-img-top" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFUSqwjp5Cx1BFWWoP9kZyd-fb1_ZiAvLE--x04vh2CFJ41nq0aWmLMksSGWNV6TEHQDM&usqp=CAU" alt="Post 1"/>
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
                <div class="col-lg-4 col-md-6 col-6">
                    <div class="card shadow border-0">
                        <img class="card-img-top" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJpjm_CM3Q1ciYJ8oYLf0PkvYDtjJ_bH6F-g&usqp=CAU" alt="Post 1"/>
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
                <div class="col-lg-4 col-md-6 col-6">
                    <div class="card shadow border-0">
                        <img class="card-img-top" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFUSqwjp5Cx1BFWWoP9kZyd-fb1_ZiAvLE--x04vh2CFJ41nq0aWmLMksSGWNV6TEHQDM&usqp=CAU" alt="Post 1"/>
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
                <div class="col-lg-4 col-md-6 col-6">
                    <div class="card shadow border-0">
                        <img class="card-img-top" src="data:image/jpeg;base64,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" alt="Post 1"/>
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
            </div>
        </div>

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