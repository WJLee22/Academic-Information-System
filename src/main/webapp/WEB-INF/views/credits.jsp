<%--
  Created by IntelliJ IDEA.
  User: 000ju
  Date: 2025-04-11
  Time: 오후 11:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>학년별 이수 학점 조회</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css">
</head>
<body>
<h1>학년별 이수 학점 조회</h1>
<table border="1">
    <thead>
    <tr>
        <th>년도</th>
        <th>학기</th>
        <th>취득 학점</th>
        <th>상세보기</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="summary" items="${creditSummaries}">
        <tr>
            <td>${summary.year}</td>
            <td>${summary.semester}</td>
            <td>${summary.totalCredits}</td>
            <td><a href="${pageContext.request.contextPath}/details?year=${summary.year}&semester=${summary.semester}">링크</a></td>
        </tr>
    </c:forEach>
    <tr>
        <td colspan="2">총계</td>
        <td colspan="2">${totalCredits}</td>
    </tr>
    </tbody>
</table>
</body>
</html>