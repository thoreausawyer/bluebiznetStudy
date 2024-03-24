<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<title>게시물 상세 보기</title>
<meta charset="UTF-8" />
<style type="text/css">
    body {
        display: flex;
        justify-content: center;
        align-items: center; /* 수평, 수직 가운데 정렬을 위한 스타일 */
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        height: 100vh; /* 화면 전체 높이만큼 body를 채움 */
    }

    .container {
        max-width: 800px;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
        min-height: 400px; /* 최소 높이 설정 */
    }

    .board-detail-title {
        font-size: 36px;
        margin-bottom: 20px;
    }

    h1 {
        font-size: 24px;
        margin-bottom: 10px;
    }

    .details {
        margin-bottom: 20px;
        border-bottom: 1px solid #ccc; /* 각 섹션에 구분선 추가 */
        padding-bottom: 10px; /* 각 섹션의 하단 여백 추가 */
    }

    .details label {
        font-weight: bold;
    }

    .content {
        margin-bottom: 20px;
        height: 400px; /* 높이 설정 */
    }

    .board-detail-button-box {
        margin-top: 20px;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .board-detail-button-box button {
        padding: 10px 20px;
        margin-right: 10px;
        border: none;
        border-radius: 5px;
        background-color: #007bff;
        color: #fff;
        cursor: pointer;
    }

    .board-detail-button-box button:hover {
        background-color: #0056b3;
    }

    .board-detail-button-box button:last-child {
        margin-right: 0;
    }

    /* 타이틀과 컨테이너를 감싸는 부모 요소 */
    .board-detail-wrapper {
        display: flex;
        flex-direction: column;
        align-items: center;
    }
</style>
</head>
<body>
<div class="board-detail-wrapper">
    <div class="board-detail-title">소로소여 특정 게시글 페이지 입니다 :)</div>
    <div class="container">
        <div class="details">
            <label>제목:</label> 게시물 제목이 여기에 표시됩니다.
        </div>
        <div class="details">
            <label>글쓴이:</label> 글쓴이 이름이 여기에 표시됩니다.
        </div>
        <div class="details">
            <label>작성일:</label> 작성일시가 여기에 표시됩니다.
        </div>
        <div class="content">
            <label>내용:</label><br>
            게시물 내용이 여기에 표시됩니다. 긴 글이라면 여러 줄로 표시될 수 있습니다.
        </div>
        <div class="details">
            <label>첨부 파일:</label> 첨부 파일 이름이 여기에 표시됩니다. (예: 파일명.pdf)
        </div>
        <div class="board-detail-button-box">
            <button type="button" onclick="editPost()">수정</button>
            <button type="button" onclick="deletePost()">삭제</button>
            <button type="button" onclick="goToList()">목록</button>
        </div>
    </div>
</div>

<script type="text/javascript">
    function editPost() {
        // 수정 기능 구현 -> 해당 게시물의 수정화면으로
        window.location.href = "/board/boardUpdateView"
    }

    function deletePost() {
        // 삭제 기능 구현
        alert("게시글이 삭제되었습니다.");
    }

    function goToList() {
        // 목록으로 이동
        window.location.href = "/board/boardList";
    }
</script>
</body>
</html>
