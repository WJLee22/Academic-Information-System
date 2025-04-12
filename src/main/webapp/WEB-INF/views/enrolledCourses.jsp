<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 000ju
  Date: 2025-04-12
  Time: 오후 6:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>2025년 2학기 수강 신청 내역</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/enrolledCourses.css">
</head>
<body>
<h1>2025년 2학기 수강 신청 내역</h1>
<table class="enrolledCourses-table">
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
</body>
</html>
