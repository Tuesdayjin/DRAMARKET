<%@page import="kr.smhrd.entity.t_member"%>
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
    <script type="text/javascript" src="${cpath}/resources/js/dmk.js"></script>
    <script src="js/morph/bootstrap.min.js"></script>
<!--google font-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
 <!-- Bootstrap Icons library -->
 <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css" rel="stylesheet">
<style>
    .card {
        width: 600px; 
    }
    .insertRe {
  margin-bottom: 20px;
}
.btnDiv{
    margin-bottom: 30px; 
  display: flex;
  justify-content: flex-end;
} 
.btnDiv button{
    width: 20%;
    background-color: #FFD369;
    color: rgb(250, 247, 247);
}
</style>
</head>
<body>
    <button onclick="topFunction()" id="myBtn" class="btn btn-info to-top" title="Go to top">
        TOP
    </button>
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
                          <li class="nav-item">
                              <a class="nav-link" href="boardList.do">게시판</a>
                          </li>
                          <li class="nav-item">
                              <a class="nav-link" href="mypage.do">마이페이지</a>
                          </li>
                          <li class="nav-item">
                              <a class="nav-link" href="login.do">로그인</a>
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
<section class="py-5">
    <div class="container px-5">
        <div class="row gx-5 align-items-center justify-content-center">
            <div class="col-lg-8 col-xl-7 col-xxl-6">
                <div class="my-5 text-xl-start">
                    <form id="fileform" enctype="multipart/form-data" >
                   <% t_member mvo = (t_member)(session.getAttribute("mvo"));
                      String id = mvo.getId(); %> 
						<input type="hidden" name="id" id="id"  value="<% id %>"/>
                        <div class="row btnDiv">
                            <button type="button" onclick="register()" class="btn btn-primary"><i class="bi bi-pencil"></i>글쓰기</button>
                        </div> 
                      <div class="card shadow border-0" style="background-color: #EEEEEE;">
                        <div class="card-header" style="margin-top: 10px;">
                          <input name="title" type="text" class="form-control" placeholder="글 제목" aria-label="Username" aria-describedby="basic-addon1">
                        </div>
                        <div class="card-body p-4">
                          <textarea name="content" class="form-control" placeholder="글 내용" rows="10" aria-label="With textarea"></textarea>
                        </div>
                        <div class="card-footer p-4 pt-0 bg-transparent border-top-0" style="background-color: #EEEEEE;">
                          <input name='file' type="file" accept="image/*" required="" id="file-input">
                          <input type="hidden" id="img_name" name="img_name" value="">
                        </div>
                      </div>
                      
                    </form>
                  </div>
                </div>

            </div>
        </div>

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
<script src="js/scripts.js"></script>
<!--Masonry.js-->
<script src="https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>


<script type="text/javascript">
var id = $('#id').val();
consol.log(id)
function register(){

	if($("#file").val()!=""){ //파일이 첨부된 경우..
		var formData=new FormData();
		formData.append("file", $("input[name=file]")[0].files[0]);
	    $.ajax({
		      url: "fileupload.do",
		      type: "POST",
		      data: formData,
		      processData: false,
		      contentType: false,
		      success: function(data) {
		    	 console.log(JSON.stringify(data));
		    	//$('#imgdiv').append('<img src="http://localhost:8081/boardimg/'+ data +'" id="Sample">');
		        $('#img_name').val(data);
		        $('#fileform').attr('method', "post");
		        $('#fileform').attr('action', "writeaddfile.do");
		        $('#fileform').submit();
		      },
		      error : function(){alert("파일 업로드에 실패하였습니다");}
		    }); // $.ajax
	}else{ //파일이 첨부되지 않은 경우..
		$('#fileform').attr('method', "post");
        $('#fileform').attr('action', "write.do");
		$('#fileform').submit();
		
	}

	
}
</script>

</body>
</html>