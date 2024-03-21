<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>게시판</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>게시판</h1>
        <table>
            <thead>
                <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>작성일시</th>
                </tr>
            </thead>
            <tbody>
               <c:forEach var= "dto" items="${list }" varStatus="num">
	  	              <tr>
		                    <td>${dto.num }</td>
		                    <td>${dto.title }</td>
		                    <td>${dto.name }</td>
		                    <td>${dto.writeDatetime }</td>
		    	      </tr>
                </c:forEach>
            </tbody>
        </table>
        <button onclick="onBoardWriteClickEvent()">게시글 작성</button>
    </div>

    <script>
        function onBoardWriteClickEvent() {
            window.location.href = "boardWrite";
        }
    </script>
</body>
</html>
