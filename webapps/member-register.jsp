<%--
  Created by IntelliJ IDEA.
  User: 112
  Date: 2023-05-08
  Time: 오후 2:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <title>회원 가입</title>
    <p>
        현재시간: <%=java.time.LocalDateTime.now()%>
    </p>

    <script src="https://code.jquery.com/jquery-3.6.4.js"
            integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E="
            crossorigin="anonymous"></script>
    <script src="member-register.js"></script>

    <style>

        #registerForm {
            border:solid 20px red;
        }

    </style>
</head>
<body>
    <h1>회원 가입</h1>

    <form method="post" id="registerForm" action="member-register-submit.jsp">
        <div>
            <label for="userId">아이디: </label>
            <input type="text" id="userId" name="userId" required />
            <button type="button" id="checkIdButton">중복 확인</button>
            <p>* 영문자 4자이상 입력</p>
        </div>
        <div>
            <label for="userPassword">비밀번호: </label>
            <input type="password" id="userPassword" name="userPassword"  required />
        </div>
        <div>
            <label for="userRePassword">비밀번호 확인: </label>
            <input type="password" id="userRePassword" name="userRePassword" required />
        </div>

        <div>
            <label for="userName">이름: </label>
            <input type="text" id="userName" name="userPassword" required />
        </div>

        <div>
            <button type="submit">가입 하기</button>
        </div>

    </form>

</body>
</html>
