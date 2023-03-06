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
<!--파일 업도르 drag&drop-->
<link href="https://cdnjs.cloudflare.com/ajax/libs/dropzone/5.9.3/min/dropzone.min.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/dropzone/5.9.3/min/dropzone.min.js"></script>

<style>
    .card-body form > * {
      margin-bottom: 15px;
    }
  </style>
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
                            <a class="nav-link" href="#">로그인</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">회원가입</a>
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
                <div class="container mt-5">
                    <div class="row">
                      <div class="col-md-6 offset-md-3">
                        <div class="card">
                          <div class="card-header">
                            로그인
                          </div>
                          <div class="card-body">
                            <form id="login-form">
                              <div class="form-group">
                                <label for="id">Id</label>
                                <input type="id" class="form-control" id="id">
                              </div>
                              <div class="form-group">
                                <label for="pwd">password</label>
                                <input type="pwd" class="form-control" id="pwd">
                              </div>
                              <button type="submit" class="btn btn-primary">로그인</button>
                              <button type="button" class="btn btn-link" id="show-signup">Create an account</button>
                            </form>
                            <form id="signup-form" style="display:none;">
                              <div class="form-group">
                                <label for="fullname">Full name:</label>
                                <input type="text" class="form-control" id="fullname">
                              </div>
                              <div class="form-group">
                                <label for="email">Email address:</label>
                                <input type="email" class="form-control" id="email">
                              </div>
                              <div class="form-group">
                                <label for="password">Password:</label>
                                <input type="password" class="form-control" id="password">
                              </div>
                              <button type="submit" class="btn btn-primary">Sign up</button>
                              <button type="button" class="btn btn-link" id="show-login">Back to Login</button>
                            </form>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  
                  <script>
                    $(document).ready(function(){
                      // show/hide login and signup forms
                      $('#show-signup').click(function(){
                        $('#login-form').hide();
                        $('#signup-form').show();
                      });
                      $('#show-login').click(function(){
                        $('#signup-form').hide();
                        $('#login-form').show();
                      });
                    });
                  </script>
            </div>
        </div>
    </div>
</header>
    </footer>
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>
    </body>
    </html>