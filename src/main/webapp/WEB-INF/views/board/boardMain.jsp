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
  }
  .board-main-wrapper {
        width: 70%;
        margin-top: 20px;
        text-align: center; /* 게시판 리스트 페이지 내의 요소들을 가운데 정렬 */
    }
    
     .board-main-title {
        font-size: 36px;
        margin-bottom: 20px;
    }
  
  .board-main-button {
    display: flex;
    justify-content: center;
    align-items: center;
    margin-top: 20px;
  }
  
  .board-main-button button {
        padding: 10px 20px;
        margin-right: 10px;
        border: none;
        border-radius: 5px;
        background-color: #007bff;
        color: #fff;
        cursor: pointer;
    }
    .board-main-button button:hover {
        background-color: #0056b3; 
    }
    
    .board-main-button:last-child {
        margin-right: 0;
    }
  
  
</style>

</head>
<body>
    <div class="board-main-wrapper">
        <div class="board-main-title">안녕하세요 소로소여 게시판 메인페이지 입니다 :)</div>
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
