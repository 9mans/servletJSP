<%--
  Created by IntelliJ IDEA.
  User: rbska
  Date: 2024-08-06
  Time: 오후 4:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>List Page</h1>

<ul>
    <c:forEach var="dto" items="${list}">
        <li>${dto}</li>
    </c:forEach>
</ul>

<ul>
    <c:forEach var="num" begin="1" end="10">
        <li>${num}</li>
    </c:forEach>
</ul>

<!-- 기본 if문 -->
<c:if test="${list.size() % 2 == 0}">
    짝수
</c:if>
<c:if test="${list.size() % 2 != 0}">
    홀수
</c:if>

<!-- if else를 표현하는 방법 -->
<c:choose>
    <c:when test="${list.size() % 2 == 0}">
        짝수
    </c:when>
    <c:otherwise>
        홀수
    </c:otherwise>
</c:choose>

<!-- jstl로 변수 만들기 변수명은 target 값은 5-->
<c:set var="target" value="5"></c:set>

<!-- 반복문에 if문을 걸어 target과 같은 값 찾기-->
<ul>
    <c:forEach var="num" begin="1" end="10">
        <c:if test="${num == target}">
            ${num} = target
        </c:if>
    </c:forEach>
</ul>

</body>
</html>
