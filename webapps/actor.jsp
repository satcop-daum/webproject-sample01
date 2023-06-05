<%@ page import="db.ActorService" %>
<%@ page import="db.Actor" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 112
  Date: 2023-05-22
  Time: 오후 4:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        th, td { border: solid 1px #000;}
    </style>
    <script src="https://code.jquery.com/jquery-3.6.4.js"
            integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E="
            crossorigin="anonymous"></script>
    <script>
        function deleteActor(code) {

            if (!confirm(' 삭제하시겠습니까? ')) {
                return false;
            }

            //삭제진행!!!
            location.href = 'actor-delete-submit.jsp?code=' + code;
        }

        $(function() {


        });
    </script>
</head>
<body>
    <h1> 영화인 목록 </h1>
    <%
        ActorService actorService = new ActorService();
        List<Actor> actors = actorService.getActorList();
    %>
    <table>
        <thead>
        <tr>
            <th>이름</th>
            <th>영문이름</th>
             <th> 생일 </th>
            <th>
                비고
            </th>
        </tr>
        </thead>
        <tbody>
            <%for (Actor actor : actors) { %>
            <tr>
                <td><%=actor.getName()%></td>
                <td><%=actor.getEngName()%></td>
                <td><%=actor.getBirth()%></td>
                <td>
                    <button type="button">수정</button>
                    <button onclick="deleteActor('<%=actor.getCode()%>')" type="button">삭제</button>
                </td>
            </tr>
            <%}%>
        </tbody>
    </table>

</body>
</html>
