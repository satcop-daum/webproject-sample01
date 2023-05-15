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
    <title>로그인</title>
</head>
<body>


    <form method="post" action="login-submit.jsp">
        <div>
            <label for="userId">아이디: </label>
            <input type="text" id="userId" name="userId" required />
        </div>
        <div>
            <label for="userPassword">비밀번호: </label>
            <input type="password" id="userPassword" name="userPassword" required />
        </div>

        <div>
            <label for="saveUserId">아이디 저장</label>
            <input type="checkbox" id="saveUserId"/>
        </div>

        <div>
            <button type="submit">로그인</button>
        </div>

        <div>
            <a href="#">아이디 찾기</a>
            |
            <a href="#">비밀번호 찾기</a>
            |
            <a href="member-register.jsp">회원 가입</a>
        </div>
    </form>




</body>
</html>
