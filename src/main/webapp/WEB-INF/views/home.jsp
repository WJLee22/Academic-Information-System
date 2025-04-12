<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css">
  </head>
  <body>
  <h1>학사 정보 시스템</h1>
  <div class="menu">
    <button onclick="location.href='${pageContext.request.contextPath}/credits'">① 학년별 이수 학점 조회</button>
    <button onclick="location.href='${pageContext.request.contextPath}/enroll'">② 수강 신청하기</button>
    <button onclick="location.href='${pageContext.request.contextPath}/enrolledCourses'">③ 수강 신청 조회</button>
  </div>
  </body>
</html>
