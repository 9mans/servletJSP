<%--
  Created by IntelliJ IDEA.
  User: rbska
  Date: 2024-08-06
  Time: 오후 1:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>num1 ${param.num1}</h1>
<h1>num2 ${param.num2}</h1>

<!-- 웹의 파라미터는 모두 문자열이기 때문에 Integer.parseInt()로 숫자로 변환해야 더하기를 할 수 있다. -->
<h1>sum ${Integer.parseInt(param.num1) + Integer.parseInt(param.num2)}</h1>
</body>
</html>
