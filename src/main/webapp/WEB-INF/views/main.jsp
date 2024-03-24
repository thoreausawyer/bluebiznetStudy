<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<title>소로소여 게시판 메인페이지</title>
<meta charset="UTF-8" />
<style>
  body {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh; /* 뷰포트의 100% 높이를 사용하여 페이지의 중앙에 배치 */
    margin: 0; /* body 요소의 기본 마진 제거 */
    
    .board-main-button{
    	display: flex;
    	 justify-content: center;
    	lign-items: center;
    }
  }
</style>
</head>
<body>
    <div>
        <h1>안녕하세요 소로소여 게시판 메인페이지 입니다 :)</h1>
        <div class="board-main-button">
	        <button onclick="onMoveToBoardClickHandler()">게시판으로 가기</button>
        </div>
        
    </div>
    
    <script>
    	function onMoveToBoardClickHandler(){
    		window.location.href = "/board/boardList";
    	}
    </script>
</body>
</html>
