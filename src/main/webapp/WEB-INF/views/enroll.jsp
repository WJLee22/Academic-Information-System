<%--
  Created by IntelliJ IDEA.
  User: 000ju
  Date: 2025-04-12
  Time: 오전 6:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>수강 신청하기</title>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/resources/css/enroll.css" >

</head>
<body>

<!--modelAttribute 속성: 해당 모델 attribute객체의 데이터를 가지고 Data Buffering을 하여 기존 입력값을 다시 착착 바인딩 하겠다.(여기선 offer객체) -->
<sf:form method="post" action="${pageContext.request.contextPath}/docreate" modelAttribute="course">
    <table class="formTable">
        <tr>
            <td class="label">년도:</td>
            <!-- sf:input: input 태그를 생성하는 태그. type, path 속성으로 input의 타입과 바인딩할 modelAttribute객체의 필드명을 지정하면 해당 모델attribute의 필드 값이 바인딩됨 -->
            <!-- course 객체의 year 필드와 이 입력 필드를 연결. 폼 제출 시 인풋태그에 입력한 입력값이 course.setYear()으로 비어있는 course 객체안에 필드로 자동 저장-바인딩해줌 -> so, 나중에 검증실패시 이 객체안에 든 값으로 다시 데이터 버퍼링으로 복구하는 것! -->
            <td><sf:input class="readonly-input" type="text" path="year" value="2025" readonly="readonly"/> <br/>
                <sf:errors path="year" class="error"/>
            </td>
        </tr>
        <tr>
            <td class="label">학기:</td>
            <td><sf:input class="readonly-input" type="text" path="semester" value="2" readonly="readonly"/> <br/>
                <sf:errors path="semester" class="error"/>
            </td>
        </tr>
        <tr>
            <td class="label">교과코드:</td>
            <td><sf:input class="control" rows="10" cols="10" path="courseCode"/> <br/>
                <sf:errors path="courseCode" class="error"/>
            </td>
        </tr>
        <tr>
            <td class="label">교과목명:</td>
            <td><sf:input class="control" rows="10" cols="10" path="courseName"/> <br/>
                <sf:errors path="courseName" class="error"/>
            </td>
        </tr>
        <tr>
            <td class="label">교과구분:</td>
            <td><sf:input class="control" rows="10" cols="10" path="courseType"/> <br/>
                <sf:errors path="courseType" class="error"/>
            </td>
        </tr>
        <tr>
            <td class="label">담당교수:</td>
            <td><sf:input class="control" rows="10" cols="10" path="professor"/> <br/>
                <sf:errors path="professor" class="error"/>
            </td>
        </tr>
        <tr>
            <td class="label">학점:</td>
            <td><sf:input class="control" rows="10" cols="10" path="credits"/>  <br/>
                <sf:errors path="credits" class="error"/>
            </td>
        </tr>
        <tr>
            <td></td>
            <td colspan="2"><input type="submit" value="수강 신청" /></td>
        </tr>
    </table>
</sf:form>

</body>
</html>
