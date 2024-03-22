	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<title>소로소여 게시판 리스트 페이지</title>
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
	<h1>소로소여 게시판 리스트 페이지 입니다 :)</h1>
	
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