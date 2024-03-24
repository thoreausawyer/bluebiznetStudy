	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<title>소로소여 게시글 작성 페이지</title>
<meta charset="UTF-8" />
	<style type="text/css">
		 body {
		    display: flex;
		    justify-content: center;
		    align-items: center;
		    height: 100vh; /* 뷰포트의 100% 높이를 사용하여 페이지의 중앙에 배치 */
		    margin: 0; /* body 요소의 기본 마진 제거 */
	  	}
	</style>

</head>
<body>
	<h1>소로소여 게시글 작성 페이지 입니다 :)</h1>
	
	 <div class="board-write-wrapper">
        <div class="board-write-container">
            <div class="board-write-title-box">
                <div class="board-write-title">
                    <input type="text" placeholder="제목을 입력하세요"/>
                </div>
            </div>
            <div class="board-write-contents-box">
                <div class="board-write-contents">
                    <textarea name="contents" id="" cols="30" rows="10"></textarea>
                </div>
            </div>
            <div class="board-write-button-box">
                <button class="board-write-back">삭제</button>
                <button class="board-write-submit">발행</button>
            </div>
        </div>
    </div>
	
</body>
</html>