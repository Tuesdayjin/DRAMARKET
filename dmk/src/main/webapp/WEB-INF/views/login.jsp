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
<!--bootstrap-->
    <link rel="stylesheet" href="bootstrap.css">
    <script src="js/morph/bootstrap.min.js"></script>
<!--google font-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<!--Load the jQuery UI library-->
<link rel="stylesheet" href="https://code.jquery.com/ui/1.13.0/themes/smoothness/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- jQuery와 jQuery UI 라이브러리 불러오기 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="https://code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css" />
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.min.js"></script>

<style>
    .card-body form > * {
      margin-bottom: 15px;
    }
    .link-unstyled {
  margin-top: 30px;
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
                          <div class="card-body">
<<<<<<< HEAD
                            <h2 class="cardTitle">로그인</h2>
                            <form id="login-form">
=======
                            <form id="login-form" method="post" action="login.do">
>>>>>>> branch 'main' of https://github.com/Tuesdayjin/DRAMARKET.git
                              <div class="form-group">
                                <label for="id">아이디</label>
                                <input type="id" class="form-control" id="id" name = "id" required="required">
                              </div>
                              <div class="form-group">
                                <label for="pwd">비밀번호</label>
                                <input type="pwd" class="form-control" id="pwd" name = "pwd" required="required">
                              </div>
                              <button type="submit" class="btn btn-primary">로그인</button>
                              <div class="form-group">
                              <a href="#" class="link-unstyled" id="show-signup">회원가입</a>
                            </div>
                            </form>
                            <form id="signup-form" style="display:none;">
                              <div class="form-group">
                                <label for="id">아이디</label>
                                <input type="text" class="form-control" id="id">
                              </div>
                              <div class="form-group">
                                <label for="pwd">비밀번호</label>
                                <input type="pwd" class="form-control" id="pwd">
                              </div>
                              <div class="form-group">
                                <label for="nick">닉네임</label>
                                <input type="nick" class="form-control" id="nick">
                              </div>
                              <div class="form-group">
                                <label for="gender">성별</label>
                                <div class="row">
                                    <div class="col">
                                        <div class="form-check form-check-inline">
                                          <input class="form-check-input" type="radio" name="gender" id="male" value="male">
                                          <label class="form-check-label" for="male">
                                            남자
                                          </label>
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-check form-check-inline">
                                          <input class="form-check-input" type="radio" name="gender" id="female" value="female">
                                          <label class="form-check-label" for="female">
                                            여자
                                          </label>
                                        </div>
                                    </div>
                                </div>
                              </div>
                              <div class="form-group">
                                <label for="birth">생년월일</label>
                                <input type="text" class="form-control datepicker" id="birth">
                              </div>
                              <button type="submit" class="btn btn-primary">계정 생성</button>
                              <div class="form-group">
                              <a href="#" class="link-unstyled" id="show-login">로그인으로 돌아가기</a>
                            </div>
                            </form>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  
                  <script>
$(document).ready(function() {
  // 초기화
  $('.cardTitle').text('로그인');
  
  // 로그인 폼 보이기
  $('#show-login').click(function() {
    $('#login-form').show();
    $('#signup-form').hide();
    $('.cardTitle').text('로그인');
  });
  
  // 회원가입 폼 보이기
  $('#show-signup').click(function() {
    $('#login-form').hide();
    $('#signup-form').show();
    $('.cardTitle').text('회원가입');
  });
});

                    $(document).ready(function(){
                      // show/hide login and signup forms
                      $('#show-signup').click(function(event){
                        event.preventDefault(); // 링크 클릭 이벤트 취소
                        $('#login-form').hide();
                        $('#signup-form').show();
                      });
                      $('#show-login').click(function(event){
                        event.preventDefault(); // 링크 클릭 이벤트 취소
                        $('#signup-form').hide();
                        $('#login-form').show();
                      });
                    });

                    $(document).ready(function() {
    $('.datepicker').datepicker({
      dateFormat: 'yy-mm-dd', // 년-월-일 형식으로 날짜 출력
      changeYear: true, // 년도 선택 가능하도록 설정
      yearRange: "-100:+0", // 현재 날짜로부터 100년 전까지 선택 가능하도록 설정
    });
  });
                    
                    
     // 로그인 기능              
	$('#login-form').submit(function(e){
		var $form = $(this);
		var id = $form.find('input[name="id"]').val();
		if( id.length < 8){ alert("아이디는 8글자 이상 입력해 주세요."); return false;  }
		var pwd = $form.find('input[name="pwd"]').val();
		if( pwd.length < 8){ alert("비밀번호는 8글자 이상 입력해 주세요."); return false;  }
		return true;
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