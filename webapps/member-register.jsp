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

    <script src="https://code.jquery.com/jquery-3.6.4.js"
            integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E="
            crossorigin="anonymous"></script>
    <script>

        $(function() {

            $('#registerForm').on('submit', function() {

                const userPassword = $('#userPassword').val();
                const userRePassword = $('#userRePassword').val();

                if (userPassword != userRePassword) {
                    alert(' 비밀번호 와 비밀번호 확인 값이 일치하지 않습니다. ');
                    return false;
                }

                const parameter = {
                    userId: $('#userId').val(),
                    userPassword: userPassword,
                    userName: $('#userName').val()
                };
                const url = '/ajax/member-register.jsp';

                $.ajax({
                    type: 'POST',
                    data: parameter,
                    url: url,
                    success: function (res) {
                        console.log(res);
                    },
                    error: function (xmlHttpReqeust, status, errorThrow) {
                        console.log(xmlHttpReqeust, status, errorThrow);
                    }
                });

                return false;
            });

        });


    </script>

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
