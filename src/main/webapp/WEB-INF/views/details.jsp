<%--
  Created by IntelliJ IDEA.
  User: 000ju
  Date: 2025-04-12
  Time: 오전 3:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title>수강 상세 정보</title>
</head>
<body>
<h2>${year}년 ${semester}학기 수강 내역</h2>
<table border="1">
  <thead>
  <tr>
    <th>년도</th>
    <th>학기</th>
    <th>교과목명</th>
    <th>교과구분</th>
    <th>담당교수</th>
    <th>학점</th>
  </tr>
  </thead>
  <tbody>
  <c:forEach var="course" items="${courses}">
    <tr>
      <td>${course.year}</td>
      <td>${course.semester}</td>
      <td>${course.courseName}</td>
      <td>${course.courseType}</td>
      <td>${course.professor}</td>
      <td>${course.credits}</td>
    </tr>
  </c:forEach>
  </tbody>
</table>
<a href="${pageContext.request.contextPath}/credits">← 학점 요약으로 돌아가기</a>
</body>
</html>
