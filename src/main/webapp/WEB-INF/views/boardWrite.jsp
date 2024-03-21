<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

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
