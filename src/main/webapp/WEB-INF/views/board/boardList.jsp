<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<title>게시판 리스트 페이지</title>
<meta charset="UTF-8" />
<style type="text/css">
    body {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    .board-list-wrapper {
        width: 70%;
        margin-top: 20px;
        text-align: center; /* 게시판 리스트 페이지 내의 요소들을 가운데 정렬 */
    }
    .board-list-title {
        font-size: 36px;
        margin-bottom: 20px;
    }
    .board-list-table {
        width: 100%;
        border-collapse: collapse;
    }
    .board-list-table th, .board-list-table td {
        border: 1px solid #ccc;
        padding: 8px;
        text-align: center;
    }
    .board-list-table th {
        background-color: #f2f2f2;
    }
    .board-list-table tbody tr:nth-child(even) {
        background-color: #f9f9f9;
    }
    .board-list-table tbody tr:hover {
        background-color: #e0e0e0;
    }
    .board-write-button {
        margin-top: 20px;
    }
    
     .board-write-button button {
        padding: 10px 20px;
        margin-right: 10px;
        border: none;
        border-radius: 5px;
        background-color: #007bff;
        color: #fff;
        cursor: pointer;
    }
    .board-write-button button:hover {
        background-color: #0056b3; 
    }
    
    .board-write-button:last-child {
        margin-right: 0;
    }
    
    
</style>
</head>
<body>
    <div class="board-list-wrapper">
        <div class="board-list-title">소로소여 게시판 리스트 페이지 입니다 :)</div>
        <table class="board-list-table">
            <thead>
                <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>내용</th>
                    <th>글쓴이</th>
                    <th>작성일자</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="post" items="${posts}">
                    <tr>
                        <td>${post.number}</td>
                        <td>${post.title}</td>
                        <td>${post.content.substring(0, Math.min(post.content.length, 50))}...</td>
                        <td>${post.author}</td>
                        <td>${post.date}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <div class="board-write-button">
            <button onclick="onBoardWriteClickEvent()">게시글 작성</button>
            <button onclick="onBoardMainClickEvent()">메인페이지</button>
        </div>
    </div>

    <script>
        function onBoardWriteClickEvent() {
            window.location.href = "/board/boardWriteView";
        }
        
        function onBoardMainClickEvent() {
            window.location.href = "/board/boardMain";
        }
    </script>
</body>
</html>
