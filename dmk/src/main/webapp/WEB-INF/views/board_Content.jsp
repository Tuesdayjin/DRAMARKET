<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	    	
	    	 	<table class="table table-bordered">
	    	 		<tr>
	    	 			<td>제목</td>
	    	 			<td>${vo.title}</td>
	    	 		</tr>
	    	 		<tr>
	    	 			<td>내용</td>
	    	 			<!-- 줄바꿈 처리하기 -->
	    	 			<td>${fn:replace(vo.content, newLineChar, "<br/>")}</td>
	    	 		</tr>
	    	 		<tr>
	    	 			<td>작성자</td>
	    	 			<td>${vo.writer}</td>
	    	 		</tr>
	    	 		<tr>
	    	 			<td>작성일</td>
	    	 			<td><fmt:formatDate value="${vo.indate}" pattern="yyyy-MM-dd"/></td>
	    	 		</tr>
	    	 		<tr>
	    	 			<td colspan="2" align="center">
	    				
		    	 			<button disabled="disabled" data-btn="modify" class="btn btn-sm btn-success">수정</button>
		    	 			<button disabled="disabled" data-btn="remove" class="btn btn-sm btn-warning">삭제</button>

		    	 			<button data-btn="list" class="btn btn-sm btn-info">목록</button>
	    	 			</td>
	    	 		</tr>
	    	 	</table>
	    	
</body>
</html>