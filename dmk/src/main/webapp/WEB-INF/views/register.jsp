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
<!-- jQuery와 jQuery UI 라이브러리 불러오기 -->
 <script src="https://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css" />
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.min.js"></script>


</head>
<body>
	<button onclick="topFunction()" id="myBtn" class="btn btn-info to-top"
		title="Go to top">TOP</button>
	<div
		style="background-color: #393E46; position: sticky; top: 0; z-index: 9999;">
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark"
			style="background-color: #393E46;">
			<div class="container-fluid" style="width: 70%;">
				<a class="navbar-brand" href="Main.do" style="color: #FFD369;">드라마켓</a>
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
							<li class="nav-item"><a class="nav-link" href="boardList.do">게시판</a>
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
						<h1 class="display-5 fw-bolder text-white mb-2">드라마 속 상품이</h1>
						<h1 class="display-5 fw-bolder text-white mb-2">궁금하신가요?</h1>
						<p class="lead fw-normal text-white-50 mb-4"></p>
						<p class="lead fw-normal text-white-50 mb-4">영상만 있다면 드라마켓에서 쉽게
							상품을 찾울 수 있습니다!</p>
						<p class="lead fw-normal text-white-50 mb-4">드라마켓 AI가 장면 속의
							상품을 인식하고 검색해줘요!</p>

					</div>
				</div>
				<div class="col-xl-5 col-xxl-6 d-none d-xl-block text-center">
					<div class="container mt-5">
						<div class="row">
							<div class="col-md-6 offset-md-3">
								<div class="card">
									<div class="card-body">

					
										<form id="signupform" style="display: none;" enctype="multipart/form-data">
											<div class="form-group">
												<label for="id">아이디</label> 
												<input type="text" class="form-control" name="id" id="id" >
											</div>
											<div class="form-group">
												<label for="pwd">비밀번호</label> 
												<input type="pwd" class="form-control" name="pwd" id="pwd">
											</div>
											<div class="form-group">
												<label for="nick">닉네임</label> 
												<input type="nick" class="form-control" name="nick" id="nick">
											</div>
											<div class="form-group">
												<label for="nick">프로필 사진</label> 
												<input type="file" class="form-control" name="file" id="profile">
												<input type="hidden" class="form-control" name="profile_name" id="profile_name" value="defaultprofile.png">
											</div>
											<div class="form-group">
												<label for="gender">성별</label>
												<div class="row">
													<div class="col">
														<div class="form-check form-check-inline">
															<input class="form-check-input" type="radio"
																name="gender" id="male" value="male"> <label
																class="form-check-label" for="male"> 남자 </label>
														</div>
													</div>
													<div class="col">
														<div class="form-check form-check-inline">
															<input class="form-check-input" type="radio"
																name="gender" id="female" value="female"> <label
																class="form-check-label" for="female"> 여자 </label>
														</div>
													</div>
												</div>
											</div>
											<div class="form-group">
												<label for="birth">생년월일</label> 
												<input type="text" class="form-control datepicker" name="birth" id="birth">
											</div>
											<button type="button" class="btn btn-primary" onclick="member()">계정 생성</button>
											<div class="form-group">
												<a href="#" class="link-unstyled" id="show-login">로그인으로
													돌아가기</a>
											</div>
										</form>


									</div>
								</div>
							</div>
						</div>
					</div>


<script>
	$(document).ready(function() {
			$('#signupform').show();
			$('.datepicker').datepicker({
				dateFormat : 'yy-mm-dd', // 년-월-일 형식으로 날짜 출력
				changeYear : true, // 년도 선택 가능하도록 설정
				yearRange : "-100:+0", // 현재 날짜로부터 100년 전까지 선택 가능하도록 설정
			});
			
			
		});

			
	function member(){
							
		if($("#profile").val()!=""){ //파일이 첨부된 경우..
			var formData=new FormData();
			formData.append("file", $("input[name=file]")[0].files[0]);
		    $.ajax({
			      url: "profileupload.do",
			      type: "POST",
			      data: formData,
			      processData: false,
			      contentType: false,
			      success: function(data) {
			    	 console.log(JSON.stringify(data));
			        $('#profile_name').val(data);
			        
			        $('form').attr("action", "memberRegister.do");
			        $('form').attr("method", "post");
					$('form').submit();
					
			      },
			      error : function(){alert("파일 업로드에 실패하였습니다");}
			    }); // $.ajax
		}else{
	        $('form').attr("action", "memberRegister.do");
	        $('form').attr("method", "post");
			$('form').submit();
		}
								
							
							
	}//function
	</script>
				</div>
			</div>
		</div>
	</header>
	</footer>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
</body>
</html>