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
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
 <!-- Bootstrap Icons library -->
 <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css" rel="stylesheet">
<style>

    .card {
        width: 550px; 
    }

    .insertRe {
  margin-bottom: 20px;
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
                  <a class="navbar-brand" href="Main.do" style="color: #FFD369;">
                  <span>드라마켓</span>
				<img src="${cpath}/resources/img/dmkimg/dmksim.png"width="20" height="24" style="margin-left:3px; margin-top:4px;" class="d-inline-block align-text-top">
                  </a>
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
<section class="py-5">
    <div class="container px-5">
        <div class="row gx-5 align-items-center justify-content-center">
            <div class="col-lg-8 col-xl-7 col-xxl-6">
                <div class="my-5 text-xl-start">
                    <div class="card shadow border-0">
                       <c:if test="${!empty board_vo.img_name}"> <!-- 이미지 있을때만 -->
                        <img class="card-img-top" src="http://localhost:8081/boardimg/${board_vo.img_name}"  alt="..."/>
                        </c:if>   
                        <div class="card-body p-4" style="background-color: #EEEEEE;">
                            <a class="text-decoration-none link-dark stretched-link" href="#!"><h5 class="card-title mb-3">${board_vo.title}</h5></a>
                            <p class="card-text mb-0">${board_vo.content}</p>
                        </div>
                        <div class="card-footer p-4 pt-0 bg-transpa0rent border-top-0" style="background-color: #EEEEEE;">
                            <div class="d-flex align-items-end justify-content-between">
                                <div class="d-flex align-items-center">
                                    <img class="rounded-circle me-3" src="http://localhost:8081/profile/profile_${board_vo.profile_name}" alt="..." />
                                    <div class="small">
                                        <div class="fw-bold">${board_vo.nick}</div>
                                        <div class="text-muted"><fmt:formatDate value="${board_vo.indate}" pattern="yyyy-MM-dd HH시 mm분"/></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
<!--댓글 작성-->
<div class="card shadow border-0 mt-3">
    <div class="card-body reBox" style="background-color: #EEEEEE;">
    
    
    <!--댓글 입력-->
    <!--  로그인 했으면 댓글 입력   -->
     <c:if test="${!empty mvo}">  
      <form id="reply_form">
        <div class="mb-3">
          <div class="row insertRe">
            <div class="col-10">
            	<input type="hidden" name="board_num" id="board_num"  value="${board_vo.num}"/>
            	<input type="hidden" name="cmt_id" id="cmt_id"  value="${mvo.id}"/>
                <textarea class="form-control" name="cmt" id="cmt" placeholder="댓글을 입력하세요."rows="1"></textarea>
            </div>
            <div class="col-2">
                <button type="button" id="reply_btn" class="btn btn-primary btn-md" onclick="insertreply()"><i class="bi bi-pencil"></i></button>
            </div>
          </div>
        </form>
    	</c:if>
    <!-- 로그인 안했으면 -->	
    <c:if test="${empty mvo}">  
        <div class="mb-3">
            <div class="col-10">
                <textarea class="form-control" readonly="readonly" placeholder="댓글은 로그인 후 작성할 수 있습니다 :)" rows="1" onclick="location.href='login.do'"></textarea>
            </div>
          </div>
    	</c:if>
    <!--댓글 입력-->        
    	
    	
      <!--작성 댓글 목록-->
          <div class="row comment">
            <div class="col-1 ">
                <img class="rounded-circle me-3 commentImg" src="https://dummyimage.com/40x40/ced4da/6c757d" alt="..." />
            </div>
            <div class="col-11 small commentBox">
                <div class="row commentText" style="padding-left: 20px;">
                    <div class="col-2">
                        <div class="fw-bold">사용자</div>
                    </div>
                    <div class="col-10">
                        <div class="text-muted">작성날짜</div>
                    </div>
                </div>
                <div class="row" style="padding-left: 20px;">
                <p>댓글 내용</p>
                </div>
            </div>
          </div>
    <!--작성 댓글 목록 끝-->
          
          
        </div>
      
    </div>
</div>
                </div>

            </div>
        </div>

    </div>
</section>
</main>




<script type="text/javascript">

function insertreply() {
	var cmt =  $("#cmt").val();
	var form = $("#reply_form").serialize()

	if(cmt.length == 0){
       	 Swal.fire({
             icon: '',
             title: '',
             text: '💛댓글을 입력해주세요💛',
             confirmButtonColor: '#FFD35F'
         });
            return;
    }else{
    	   $.ajax({
               url : "commentInsert.do",
               type : "POST",
               contentType : 'application/x-www-form-urlencoded; charset=UTF-8', 
                             //application/json , JSON.stringify , 컨트롤러에 매개변수 앞에 @RequestBody 3가지가 하나의 세트             
               data :form,
               success : function(){
				   console.log('댓글 등록 완료');   
                   $('#cmt').val('');
                   getList();
               },
               error : function(err){
                   console.log("댓글 입력 실패")
               }
               
           });//ajax
    }
	
}// 댓글 insert


function getList(){
    $.ajax({
        
        url : "commentSelect.do",
        type : "GET",
        dataType : "json",
        success :function(obj){
        	
        }
	
}
        
        

    
</script>





<!-- Footer-->
<footer class="py-4 mt-auto"  style="background-color:#393E46;">
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
</body>
</html>