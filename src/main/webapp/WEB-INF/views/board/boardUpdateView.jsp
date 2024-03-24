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
        height: 100vh;
        margin: 0;
    }
    .board-write-wrapper {
        width: 70%;
        margin-top: 20px;
        text-align: center;
    }
    .board-write-title {
        font-size: 36px;
        margin-bottom: 20px;
    }
    .board-write-input-title {
        font-size: 30px;
        width: calc(100% - 20px); /* 전체 너비에서 20px씩 뺀 값 */
        padding: 8px;
        margin-bottom: 10px;
        box-sizing: border-box; /* 패딩과 테두리를 포함한 너비 계산 */
    }
    .board-write-contents textarea {
        width: calc(100% - 20px); /* 전체 너비에서 20px씩 뺀 값 */
        height: 400px; /* 텍스트 영역의 높이 설정 */
        padding: 8px;
        margin-bottom: 10px;
        box-sizing: border-box; /* 패딩과 테두리를 포함한 너비 계산 */
        font-size: 30px;
    }
   .board-write-button-box{
    	margin-top: 20px;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    
     .board-write-button-box button {
        padding: 10px 20px;
        margin-right: 10px;
        border: none;
        border-radius: 5px;
        background-color: #007bff;
        color: #fff;
        cursor: pointer;
    }
    .board-write-button-box button:hover {
        background-color: #0056b3; 
    }
    
    .board-write-button-box:last-child {
        margin-right: 0;
    }
    
    .board-write-back, .board-write-submit, .board-write-list {
        font-size: 18px;
        width: 120px;
        height: 40px;
    }
</style>

</head>
<body>
     <div class="board-write-wrapper">
     
        <div class="board-write-title">소로소여 게시글 수정 페이지 입니다 :)</div>
        
        <div class="board-write-container">
            <div class="board-write-title-box">
                <div class="board-write-title">
                    <input class="board-write-input-title" type="text" placeholder="제목을 입력하세요."/>
                </div>
            </div>
            <div class="board-write-contents-box">
                <div class="board-write-contents">
                    <textarea name="contents" cols="100" rows="40" placeholder="내용을 입력하세요."></textarea>
                </div>
            </div>
            <div class="board-write-button-box">
                <button class="board-write-back" onclick="deletePost()">삭제</button>
                <button class="board-write-submit" onclick="editPost()">수정</button>
                <button class="board-write-list" onclick="onBoardListBackClickEvent()">리스트</button>
            </div>
        </div>
    </div>
    
    <script>
        function onBoardListBackClickEvent() {
            window.location.href = "/board/boardList";
        }
        
        function editPost() {
        	// 등록 기능 구현
        	
            // 등록 기능 알람
            alert("게시글이 수정되었습니다.");
            window.location.href = "/board/boardDetail";
        }

        function deletePost() {
        	// 삭제 기능 구현
        	
            // 삭제 기능 알람
        	alert("게시글이 삭제되었습니다.");
        	window.location.href = "/board/boardList";
        }
        
    </script>
    
</body>
</html>
