<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<!-- 1. jsp에서 기본적으로 사용하는 JSTL 라이브러리 불러오기 -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %> 
	<!-- function 라이브러리 : 스트링 String 계열 기능 주로 사용 -->

 <script src="https://code.jquery.com/jquery-latest.min.js"></script>

	<!-- 2. Context path 불러오기 -->
<c:set var="cpath" value="${pageContext.request.contextPath}"></c:set>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	    	<div>
	    	<h4>글쓰기</h4>
	    	<!-- 글쓰기와 관련된 기능 이름 같게하고 get/post 방식으로 구분함 -->
				<form  id="fileform" enctype="multipart/form-data" >
				<input type="hidden" name="memId" id="memId" value="test">
				
					<div class="form-group">
						<!-- label의 for와 input의 name을 같게 해주어야함 -->
						<label for="title"> 제목 </label>
						<input name="title" id="title" type="text" placeholder="Enter title" >
					</div>
					
					<div class="form-group">
						<label for="content"> 내용 </label>
						<textarea name="content" id="content" rows="6"></textarea>
					</div>
					
					<div class="form-group">
						<label for="id">작성자</label>
						<input name="id" id="id" readonly="readonly" type="text" class="form-control" value="test" >
					</div>
					
					<div class="form-group">
						<label for="file">첨부파일</label>
						<input name="file" type="file" class="form-control" >
					</div>
						<input type="hidden" id="img_name" name="img_name" value="">
					
					
					<button type="button" id="uploadbtn" onclick="register()">등록</button>
					<button type="reset">취소</button>
				</form>
				<div id=imgdiv>
				</div>
				

			</div>




<script type="text/javascript">
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
		    	$('#imgdiv').append('<img src="http://localhost:8081/boardimg/'+ data +'" id="Sample">');
		        $('#img_name').val(data);
		        $('#fileform').attr('method', "post");
		        $('#fileform').action="writeupload.do"
		        $('#fileform').submit();
		      },
		      error : function(){alert("파일 업로드에 실패하였습니다");}
		    }); // $.ajax
	}else{ //파일이 첨부되지 않은 경우..
		$('#fileform').attr('method', "post");
		$('#fileform').action="writeupload.do"
		$('#fileform').submit();
		
	}
	
}
</script>
		
			

</body>
</html>